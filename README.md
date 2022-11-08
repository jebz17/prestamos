# Proyecto de Prestamos RPGLE FULL FREE 📌
Sistema de prestamos que usa colas para la comunicaciones con la base de datos en formato full free, utilizando la arquitectura MVC.

## Intrucciones Base Datos 💾
_Cambiar la librería ´JBUSTOS2´ de los archivos de tablas SQL por la librería donde se usarán._



### Debug Daemon (PGM Sometido) 🔗
1. ` WRKSBS ` para ver los JOB que estan corriendo. Ingresar ´8´ para ver el job.
2. ` 5 ` para ver el número del JOB.
3. ` STRSRVJOB + F4 ` para iniciar el servicio del nombre del JOB, usuario y número.
4. ` STRDBG + F4 ` para iniciar modo DEBUG. (*YES en update files production).
5. Realizar los puntos breakpoint.
6. Hacer uso o el llamado del servicio.
7. ` ENDDBG ` finalizar MODO DEBUG. 
8. ` ENDSRVJOB ` finalizar SERVICIO.
