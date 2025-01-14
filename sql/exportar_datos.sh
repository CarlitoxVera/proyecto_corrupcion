#!/bin/bash
pg_dump -U proyecto_user -d proyecto_corrupcion -t audit_trail > ~/Documentos/proyecto_corrupcion/sql/audit_trail.sql
pg_dump -U proyecto_user -d proyecto_corrupcion -t company > ~/Documentos/proyecto_corrupcion/sql/company.sql
pg_dump -U proyecto_user -d proyecto_corrupcion -t company_person > ~/Documentos/proyecto_corrupcion/sql/company_person.sql
pg_dump -U proyecto_user -d proyecto_corrupcion -t institution > ~/Documentos/proyecto_corrupcion/sql/institution.sql
pg_dump -U proyecto_user -d proyecto_corrupcion -t investigation > ~/Documentos/proyecto_corrupcion/sql/investigation.sql
pg_dump -U proyecto_user -d proyecto_corrupcion -t legal_acts > ~/Documentos/proyecto_corrupcion/sql/legal_acts.sql
pg_dump -U proyecto_user -d proyecto_corrupcion -t meeting > ~/Documentos/proyecto_corrupcion/sql/meeting.sql
pg_dump -U proyecto_user -d proyecto_corrupcion -t meeting_investigation > ~/Documentos/proyecto_corrupcion/sql/meeting_investigation.sql
pg_dump -U proyecto_user -d proyecto_corrupcion -t payment > ~/Documentos/proyecto_corrupcion/sql/payment.sql
pg_dump -U proyecto_user -d proyecto_corrupcion -t person > ~/Documentos/proyecto_corrupcion/sql/person.sql
