rm -rf rebec-2011-12-13
mkdir rebec-2011-12-13
./manage.py dumpdata -n auth --indent=2 > rebec-2011-12-13/django.contrib.auth-2011-12-13.json
./manage.py dumpdata -n contenttypes --indent=2 > rebec-2011-12-13/django.contrib.contenttypes-2011-12-13.json
./manage.py dumpdata -n sessions --indent=2 > rebec-2011-12-13/django.contrib.sessions-2011-12-13.json
./manage.py dumpdata -n sites --indent=2 > rebec-2011-12-13/django.contrib.sites-2011-12-13.json
./manage.py dumpdata -n admin --indent=2 > rebec-2011-12-13/django.contrib.admin-2011-12-13.json
./manage.py dumpdata -n admindocs --indent=2 > rebec-2011-12-13/django.contrib.admindocs-2011-12-13.json
./manage.py dumpdata -n flatpages --indent=2 > rebec-2011-12-13/django.contrib.flatpages-2011-12-13.json
./manage.py dumpdata -n markup --indent=2 > rebec-2011-12-13/django.contrib.markup-2011-12-13.json
./manage.py dumpdata -n messages --indent=2 > rebec-2011-12-13/django.contrib.messages-2011-12-13.json
./manage.py dumpdata -n syndication --indent=2 > rebec-2011-12-13/django.contrib.syndication-2011-12-13.json
./manage.py dumpdata -n deleting --indent=2 > rebec-2011-12-13/deleting-2011-12-13.json
./manage.py dumpdata -n vocabulary --indent=2 > rebec-2011-12-13/vocabulary-2011-12-13.json
./manage.py dumpdata -n repository --indent=2 > rebec-2011-12-13/repository-2011-12-13.json
./manage.py dumpdata -n reviewapp --indent=2 > rebec-2011-12-13/reviewapp-2011-12-13.json
./manage.py dumpdata -n tickets --indent=2 > rebec-2011-12-13/tickets-2011-12-13.json
./manage.py dumpdata -n assistance --indent=2 > rebec-2011-12-13/assistance-2011-12-13.json
./manage.py dumpdata -n decsclient --indent=2 > rebec-2011-12-13/decsclient-2011-12-13.json
./manage.py dumpdata -n icd10client --indent=2 > rebec-2011-12-13/icd10client-2011-12-13.json
./manage.py dumpdata -n diagnostic --indent=2 > rebec-2011-12-13/diagnostic-2011-12-13.json
./manage.py dumpdata -n polyglot --indent=2 > rebec-2011-12-13/polyglot-2011-12-13.json
./manage.py dumpdata -n registration --indent=2 > rebec-2011-12-13/registration-2011-12-13.json
./manage.py dumpdata -n flatpages_polyglot --indent=2 > rebec-2011-12-13/flatpages_polyglot-2011-12-13.json
./manage.py dumpdata -n south --indent=2 > rebec-2011-12-13/south-2011-12-13.json
./manage.py dumpdata -n fossil --indent=2 > rebec-2011-12-13/fossil-2011-12-13.json
./manage.py dumpdata -n rosetta --indent=2 > rebec-2011-12-13/rosetta-2011-12-13.json
./manage.py dumpdata -n haystack --indent=2 > rebec-2011-12-13/haystack-2011-12-13.json
./manage.py dumpdata -n compressor --indent=2 > rebec-2011-12-13/compressor-2011-12-13.json
./manage.py dumpdata -n maintenance --indent=2 > rebec-2011-12-13/maintenance-2011-12-13.json