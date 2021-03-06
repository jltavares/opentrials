# -*- encoding: utf-8 -*-

# polyglot: multilingual models, fields and widgets for Django
#
# Copyright (C) 2010 BIREME/PAHO/WHO
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 2.1 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful, 
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.

# You should have received a copy of the GNU Lesser General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

from django import template
from django.utils import simplejson

from polyglot.models import get_ordered_languages

register = template.Library()

class JSConstantsNode(template.Node):
    var_available_languages = None

    def __init__(self, var_available_languages=None):
        super(JSConstantsNode, self).__init__()

        if var_available_languages:
            self.var_available_languages = template.Variable(var_available_languages)

    def render(self, context):
        # It depends on 'request' template context processor
        display_language = context['request'].user.get_profile().preferred_language.lower()

        # Available languages are collected from given variable
        available_languages = None
        if self.var_available_languages:
            available_languages = self.var_available_languages.resolve(context)

        # If there is no variable or it's just empty, gets from settings as default
        if not available_languages:
            available_languages = get_ordered_languages(display_language, lower=True)
        
        # Default second language must be english
        if len(available_languages) <= 1:
            default_second_language = None
        else:
            default_second_language = available_languages[1]

        return """MULTILINGUAL_FIELDS = {
                    available_languages: %s,
                    default_second_language: '%s',
                    display_language: '%s'
                  };"""%(simplejson.dumps(available_languages), default_second_language, display_language)

def polyglot_js_constants(parser, token):
    # Variable with list of available languages
    parts = token.split_contents()

    return JSConstantsNode(len(parts) > 1 and parts[1] or None)

polyglot_js_constants = register.tag(polyglot_js_constants)

