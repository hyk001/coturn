#################################
# Generated by configure script #
#################################
ECHO_CMD = echo
CC = cc
LDFLAGS +=  -L/usr/local/lib/ -L/usr/local/lib/ -lrt -lintl -pthread -lcrypto -lssl -levent_core -levent_extra -levent_openssl -levent_pthreads -lsqlite3  -Wl,-rpath,/usr/local/lib/ -Wl,-rpath,/usr/local/lib/ -Wl,-rpath,/usr/local/lib/postgresql -Wl,-rpath,/usr/local/lib/postgresql -Wl,-rpath,/usr/local/lib/mysql -Wl,-rpath,/usr/local/lib/mysql -Wl,-rpath,/usr/local/lib
DBLIBS +=  -lsqlite3  -L/usr/local/lib/ -L/usr/local/lib/ -lrt -lintl -pthread -lcrypto -lssl -levent_core -levent_extra -levent_openssl -levent_pthreads -lsqlite3  -L/usr/local/lib/postgresql -L/usr/local/lib/postgresql -lpq  -L/usr/local/lib/ -L/usr/local/lib/ -lrt -lintl -pthread -lcrypto -lssl -levent_core -levent_extra -levent_openssl -levent_pthreads -lsqlite3  -L/usr/local/lib/mysql -L/usr/local/lib/mysql -lmysqlclient -lmongoc-1.0 -lbson-1.0 -lhiredis
CFLAGS += -g  -Wall -Wno-deprecated-declarations -Wextra -Wformat-security -Wnested-externs -Wstrict-prototypes  -Wmissing-prototypes -Wpointer-arith -Wcast-qual -I/usr/local/include -I/usr/local/include/ -I/usr/local/include  -DTURN_HAS_SIN_LEN -DTURN_HAS_DAEMON  -DTURN_SCTP_INCLUDE="</usr/include/netinet/sctp.h>"     -DINSTALL_PREFIX=/usr/local -DTURNDB=/usr/local/var/db/turndb
CPPFLAGS = 
DBCFLAGS +=  -I/usr/local/pgsql/include -I/usr/local/include/pgsql/ -I/usr/local/include/postgres/ -I/usr/local/postgres/include/ -I/usr/local/include/postgresql/ -I/usr/local/postgresql/include/ -I/usr/local/pgsql/include -I/usr/local/include/pgsql/ -I/usr/local/include/postgres/ -I/usr/local/postgres/include/ -I/usr/local/include/postgresql/ -I/usr/local/postgresql/include/ -I/usr/pgsql/include -I/usr/include/pgsql/ -I/usr/include/postgres/ -I/usr/postgres/include/ -I/usr/include/postgresql/ -I/usr/postgresql/include/ -I/usr/local/mysql/include -I/usr/local/include/mysql/ -I/usr/local/mysql/include -I/usr/local/include/mysql/ -I/usr/mysql/include -I/usr/include/mysql/  -I/usr/local/include/libmongoc-1.0 -I/usr/local/include/libbson-1.0 -I/usr/local/include/libmongoc-1.0 -I/usr/local/include/libbson-1.0  -I/usr/local/include/hiredis -I/usr/local/include/hiredis     
#
PORTNAME = turnserver
PREFIX = /usr/local
prefix = /usr/local
BINDIR = /usr/local/bin
bindir = /usr/local/bin
LOCALSTATEDIR = /usr/local/var
localstatedir = /usr/local/var
TURNDBDIR = /usr/local/var/db
turndbdir = /usr/local/var/db
CONFDIR = /usr/local/etc
confdir = /usr/local/etc
MANPREFIX = /usr/local
manprefix = /usr/local
EXAMPLESDIR = /usr/local/share/examples/turnserver
examplesdir = /usr/local/share/examples/turnserver
DOCSDIR = /usr/local/share/doc/turnserver
docsdir = /usr/local/share/doc/turnserver
LIBDIR = /usr/local/lib
libdir = /usr/local/lib
SCHEMADIR = /usr/local/share/turnserver
schemadir = /usr/local/share/turnserver
INCLUDEDIR = /usr/local/include
includedir = /usr/local/include
TURNINCLUDEDIR = /usr/local/include/turn
turnincludedir = /usr/local/include/turn
#
ARCHIVERCMD = ar -r
MKDIR = install -d
SQLITE_CMD = sqlite3
INSTALL_PROGRAM = install
PKILL_PROGRAM = pkill
INSTALL_MAN = install
INSTALL_SCRIPT = install
INSTALL_SHARED_LIB = install
INSTALL_STATIC_LIB = install
INSTALL_DATA = install
INSTALL_DIR = cp -rpf
MKBUILDDIR = mkdir -p
RMCMD = rm -rf
MORECMD = cat
LDCONFIG=ldconfig -m
################################


LIBEVENT_INCLUDE = -I${PREFIX}/include/ -I/usr/local/include/

INCFLAGS = -Isrc -Isrc/apps/common -Isrc/server -Isrc/client -Isrc/client++ ${LIBEVENT_INCLUDE} 

CFLAGS += ${INCFLAGS}

MAKE_DEPS = Makefile

LIBCLIENTTURN_HEADERS = src/ns_turn_defs.h src/client++/TurnMsgLib.h src/client/ns_turn_ioaddr.h src/client/ns_turn_msg.h src/client/ns_turn_msg_defs.h src/client/ns_turn_msg_defs_experimental.h src/client/ns_turn_msg_addr.h
LIBCLIENTTURN_MODS = src/client/ns_turn_ioaddr.c src/client/ns_turn_msg_addr.c src/client/ns_turn_msg.c 
LIBCLIENTTURN_DEPS = ${LIBCLIENTTURN_HEADERS} ${MAKE_DEPS} 
LIBCLIENTTURN_OBJS = build/obj/ns_turn_ioaddr.o build/obj/ns_turn_msg_addr.o build/obj/ns_turn_msg.o 

SERVERTURN_HEADERS = src/server/ns_turn_allocation.h src/server/ns_turn_ioalib.h src/server/ns_turn_khash.h src/server/ns_turn_maps_rtcp.h src/server/ns_turn_maps.h src/server/ns_turn_server.h src/server/ns_turn_session.h 
SERVERTURN_DEPS = ${LIBCLIENTTURN_HEADERS} ${SERVERTURN_HEADERS} ${MAKE_DEPS} 
SERVERTURN_MODS = ${LIBCLIENTTURN_MODS} src/server/ns_turn_allocation.c src/server/ns_turn_maps_rtcp.c src/server/ns_turn_maps.c src/server/ns_turn_server.c

COMMON_HEADERS = src/apps/common/apputils.h src/apps/common/ns_turn_openssl.h src/apps/common/ns_turn_utils.h src/apps/common/stun_buffer.h
COMMON_MODS = src/apps/common/apputils.c src/apps/common/ns_turn_utils.c src/apps/common/stun_buffer.c
COMMON_DEPS = ${LIBCLIENTTURN_DEPS} ${COMMON_MODS} ${COMMON_HEADERS}

IMPL_HEADERS = src/apps/relay/ns_ioalib_impl.h src/apps/relay/ns_sm.h src/apps/relay/turn_ports.h
IMPL_MODS = src/apps/relay/ns_ioalib_engine_impl.c src/apps/relay/turn_ports.c src/apps/relay/http_server.c
IMPL_DEPS = ${COMMON_DEPS} ${IMPL_HEADERS} ${IMPL_MODS}

HIREDIS_HEADERS = src/apps/common/hiredis_libevent2.h
HIREDIS_MODS = src/apps/common/hiredis_libevent2.c

USERDB_HEADERS = src/apps/relay/dbdrivers/dbdriver.h src/apps/relay/dbdrivers/dbd_sqlite.h src/apps/relay/dbdrivers/dbd_pgsql.h src/apps/relay/dbdrivers/dbd_mysql.h src/apps/relay/dbdrivers/dbd_mongo.h src/apps/relay/dbdrivers/dbd_redis.h
USERDB_MODS = src/apps/relay/dbdrivers/dbdriver.c src/apps/relay/dbdrivers/dbd_sqlite.c src/apps/relay/dbdrivers/dbd_pgsql.c src/apps/relay/dbdrivers/dbd_mysql.c src/apps/relay/dbdrivers/dbd_mongo.c src/apps/relay/dbdrivers/dbd_redis.c

SERVERAPP_HEADERS = src/apps/relay/userdb.h src/apps/relay/tls_listener.h src/apps/relay/mainrelay.h src/apps/relay/turn_admin_server.h src/apps/relay/dtls_listener.h src/apps/relay/libtelnet.h ${HIREDIS_HEADERS} ${USERDB_HEADERS}
SERVERAPP_MODS = src/apps/relay/mainrelay.c src/apps/relay/netengine.c src/apps/relay/libtelnet.c src/apps/relay/turn_admin_server.c src/apps/relay/userdb.c src/apps/relay/tls_listener.c src/apps/relay/dtls_listener.c ${HIREDIS_MODS} ${USERDB_MODS}
SERVERAPP_DEPS = ${SERVERTURN_MODS} ${SERVERTURN_DEPS} ${SERVERAPP_MODS} ${SERVERAPP_HEADERS} ${COMMON_DEPS} ${IMPL_DEPS} lib/libturnclient.a

TURN_BUILD_RESULTS = bin/turnutils_oauth bin/turnutils_natdiscovery bin/turnutils_stunclient bin/turnutils_rfc5769check bin/turnutils_uclient bin/turnserver bin/turnutils_peer lib/libturnclient.a include/turn/ns_turn_defs.h sqlite_empty_db

.PHONY: all test check clean distclean sqlite_empty_db install deinstall uninstall reinstall

all:	${TURN_BUILD_RESULTS}

test:	check

check:	bin/turnutils_rfc5769check
	bin/turnutils_rfc5769check

include/turn/ns_turn_defs.h:	src/ns_turn_defs.h
	${RMCMD} include
	${MKBUILDDIR} include/turn/client
	cp -pf src/client/*.h include/turn/client/
	cp -pf src/client++/*.h include/turn/client/
	cp -pf src/ns_turn_defs.h include/turn/

bin/turnutils_uclient:	${COMMON_DEPS} src/apps/uclient/session.h lib/libturnclient.a src/apps/uclient/mainuclient.c src/apps/uclient/uclient.c src/apps/uclient/uclient.h src/apps/uclient/startuclient.c src/apps/uclient/startuclient.h
	${MKBUILDDIR} bin
	${CC} ${CPPFLAGS} ${CFLAGS} src/apps/uclient/uclient.c src/apps/uclient/startuclient.c src/apps/uclient/mainuclient.c ${COMMON_MODS} -o $@ -Llib -lturnclient -Llib ${LDFLAGS}  

bin/turnutils_natdiscovery:	${COMMON_DEPS} lib/libturnclient.a src/apps/natdiscovery/natdiscovery.c
	pwd
	${MKBUILDDIR} bin
	${CC} ${CPPFLAGS} ${CFLAGS} src/apps/natdiscovery/natdiscovery.c ${COMMON_MODS} -o $@ -Llib -lturnclient -Llib ${LDFLAGS}

bin/turnutils_oauth:	${COMMON_DEPS} lib/libturnclient.a src/apps/oauth/oauth.c
	pwd
	${MKBUILDDIR} bin
	${CC} ${CPPFLAGS} ${CFLAGS} src/apps/oauth/oauth.c ${COMMON_MODS} -o $@ -Llib -lturnclient -Llib ${LDFLAGS}

bin/turnutils_stunclient:	${COMMON_DEPS} lib/libturnclient.a src/apps/stunclient/stunclient.c 
	pwd
	${MKBUILDDIR} bin
	${CC} ${CPPFLAGS} ${CFLAGS} src/apps/stunclient/stunclient.c ${COMMON_MODS} -o $@ -Llib -lturnclient -Llib ${LDFLAGS}   

bin/turnutils_rfc5769check:	${COMMON_DEPS} lib/libturnclient.a src/apps/rfc5769/rfc5769check.c 
	pwd
	${MKBUILDDIR} bin
	${CC} ${CPPFLAGS} ${CFLAGS} src/apps/rfc5769/rfc5769check.c ${COMMON_MODS} -o $@ -Llib -lturnclient -Llib ${LDFLAGS} 

bin/turnserver:	${SERVERAPP_DEPS}
	${MKBUILDDIR} bin
	${RMCMD} bin/turnadmin
	${CC} ${CPPFLAGS} ${CFLAGS} ${DBCFLAGS} ${IMPL_MODS} -Ilib ${SERVERAPP_MODS} ${COMMON_MODS} ${SERVERTURN_MODS} -o $@ ${DBLIBS} ${LDFLAGS} 
	cd bin; ln -s turnserver turnadmin  

bin/turnutils_peer:	${COMMON_DEPS} ${LIBCLIENTTURN_MODS} ${LIBCLIENTTURN_DEPS} lib/libturnclient.a src/apps/peer/mainudpserver.c src/apps/peer/udpserver.h src/apps/peer/udpserver.c
	${MKBUILDDIR} bin
	${CC} ${CPPFLAGS} ${CFLAGS} src/apps/peer/mainudpserver.c src/apps/peer/udpserver.c ${COMMON_MODS} -o $@ -Llib -lturnclient -Llib ${LDFLAGS}  

### Client Library:

lib/libturnclient.a:	${LIBCLIENTTURN_OBJS} ${LIBCLIENTTURN_DEPS}
	${MKBUILDDIR} lib
	${ARCHIVERCMD} $@ ${LIBCLIENTTURN_OBJS}

build/obj/ns_turn_ioaddr.o:	src/client/ns_turn_ioaddr.c ${LIBCLIENTTURN_DEPS}
	${MKBUILDDIR} build/obj
	${CC} ${CPPFLAGS} ${CFLAGS} -c src/client/ns_turn_ioaddr.c -o $@

build/obj/ns_turn_msg_addr.o:	src/client/ns_turn_msg_addr.c ${LIBCLIENTTURN_DEPS}
	${MKBUILDDIR} build/obj
	${CC} ${CPPFLAGS} ${CFLAGS} -c src/client/ns_turn_msg_addr.c -o $@

build/obj/ns_turn_msg.o:	src/client/ns_turn_msg.c ${LIBCLIENTTURN_DEPS}
	${MKBUILDDIR} build/obj
	${CC} ${CPPFLAGS} ${CFLAGS} -c src/client/ns_turn_msg.c -o $@

### Clean all:

clean:	
	${RMCMD} bin build lib obj *bak *~ */*~ */*/*~ */*/*/*~ *core */*core */*/*core include tmp sqlite

distclean:	clean
	${RMCMD} Makefile

### SQLite empty database:
sqlite_empty_db	:	sqlite/turndb

sqlite/turndb	:	turndb/schema.sql
	${MKDIR} sqlite
	${RMCMD} sqlite/turndb
	${SQLITE_CMD} sqlite/turndb < turndb/schema.sql

### Install all:

install:	all ${MAKE_DEPS}
	${MKDIR} ${DESTDIR}${PREFIX}
	${MKDIR} ${DESTDIR}${BINDIR}
	${MKDIR} ${DESTDIR}${TURNDBDIR}
	${MKDIR} ${DESTDIR}${MANPREFIX}/man/man1
	${MKDIR} ${DESTDIR}${CONFDIR}
	${MKDIR} ${DESTDIR}${LIBDIR}
	${MKDIR} ${DESTDIR}${EXAMPLESDIR}
	${MKDIR} ${DESTDIR}${DOCSDIR}
	${MKDIR} ${DESTDIR}${SCHEMADIR}
	${MKDIR} ${DESTDIR}${TURNINCLUDEDIR}
	${INSTALL_PROGRAM} bin/turnserver ${DESTDIR}${BINDIR}
	${INSTALL_PROGRAM} bin/turnadmin ${DESTDIR}${BINDIR}
	${INSTALL_PROGRAM} bin/turnutils_uclient ${DESTDIR}${BINDIR}
	${INSTALL_PROGRAM} bin/turnutils_peer ${DESTDIR}${BINDIR}
	${INSTALL_PROGRAM} bin/turnutils_stunclient ${DESTDIR}${BINDIR}
	${INSTALL_PROGRAM} bin/turnutils_oauth ${DESTDIR}${BINDIR}
	${INSTALL_PROGRAM} bin/turnutils_natdiscovery ${DESTDIR}${BINDIR}
	${INSTALL_MAN} man/man1/turnserver.1 ${DESTDIR}${MANPREFIX}/man/man1/
	${INSTALL_MAN} man/man1/turnadmin.1 ${DESTDIR}${MANPREFIX}/man/man1/
	${INSTALL_MAN} man/man1/turnutils.1 ${DESTDIR}${MANPREFIX}/man/man1/
	${INSTALL_MAN} man/man1/turnutils_uclient.1 ${DESTDIR}${MANPREFIX}/man/man1/
	${INSTALL_MAN} man/man1/turnutils_stunclient.1 ${DESTDIR}${MANPREFIX}/man/man1/
	${INSTALL_MAN} man/man1/turnutils_oauth.1 ${DESTDIR}${MANPREFIX}/man/man1/
	${INSTALL_MAN} man/man1/turnutils_natdiscovery.1 ${DESTDIR}${MANPREFIX}/man/man1/
	${INSTALL_MAN} man/man1/turnutils_peer.1 ${DESTDIR}${MANPREFIX}/man/man1/
	${INSTALL_MAN} man/man1/coturn.1 ${DESTDIR}${MANPREFIX}/man/man1/
	${INSTALL_STATIC_LIB} lib/libturnclient.a ${DESTDIR}${LIBDIR}
	${INSTALL_DATA} LICENSE ${DESTDIR}${DOCSDIR}
	${INSTALL_DATA} README.turnserver ${DESTDIR}${DOCSDIR}
	${INSTALL_DATA} README.turnadmin ${DESTDIR}${DOCSDIR}
	${INSTALL_DATA} README.turnutils ${DESTDIR}${DOCSDIR}
	${INSTALL_DATA} INSTALL ${DESTDIR}${DOCSDIR}
	${INSTALL_DATA} postinstall.txt ${DESTDIR}${DOCSDIR}
	${INSTALL_DATA} turndb/schema.sql ${DESTDIR}${DOCSDIR}
	${INSTALL_DATA} turndb/schema.sql ${DESTDIR}${SCHEMADIR}
	${INSTALL_DATA} turndb/schema.mongo.sh ${DESTDIR}${DOCSDIR}
	${INSTALL_DATA} turndb/schema.mongo.sh ${DESTDIR}${SCHEMADIR}
	${INSTALL_DATA} turndb/testredisdbsetup.sh ${DESTDIR}${SCHEMADIR}
	${INSTALL_DATA} turndb/testmongosetup.sh ${DESTDIR}${SCHEMADIR}
	${INSTALL_DATA} turndb/testsqldbsetup.sql ${DESTDIR}${SCHEMADIR}
	${INSTALL_DATA} turndb/schema.userdb.redis ${DESTDIR}${DOCSDIR}
	${INSTALL_DATA} turndb/schema.userdb.redis ${DESTDIR}${SCHEMADIR}
	${INSTALL_DATA} turndb/schema.stats.redis ${DESTDIR}${DOCSDIR}
	${INSTALL_DATA} turndb/schema.stats.redis ${DESTDIR}${SCHEMADIR}
	if [ -f sqlite/turndb ] ; then ${INSTALL_DATA} sqlite/turndb ${DESTDIR}${TURNDBDIR}/turndb; fi
	${INSTALL_DATA} examples/etc/turnserver.conf ${DESTDIR}${CONFDIR}/turnserver.conf.default
	${INSTALL_DIR} examples/etc ${DESTDIR}${EXAMPLESDIR}
	${INSTALL_DIR} examples/scripts ${DESTDIR}${EXAMPLESDIR}
	${RMCMD} ${DESTDIR}${EXAMPLESDIR}/scripts/rfc5769.sh
	${INSTALL_DIR} include/turn/client ${DESTDIR}${TURNINCLUDEDIR}
	${INSTALL_DATA} include/turn/ns_turn_defs.h ${DESTDIR}${TURNINCLUDEDIR}
	${MORECMD} ${DESTDIR}${DOCSDIR}/postinstall.txt

deinstall:	${MAKE_DEPS}
	${PKILL_PROGRAM} turnserver || ${ECHO_CMD} OK
	${RMCMD} ${DESTDIR}${TURNDBDIR}/turndb
	${RMCMD} ${DESTDIR}${DOCSDIR}
	${RMCMD} ${DESTDIR}${SCHEMADIR}
	${RMCMD} ${DESTDIR}${BINDIR}/turnserver
	${RMCMD} ${DESTDIR}${BINDIR}/turnadmin
	${RMCMD} ${DESTDIR}${BINDIR}/turnutils_peer
	${RMCMD} ${DESTDIR}${BINDIR}/turnutils_uclient
	${RMCMD} ${DESTDIR}${BINDIR}/turnutils_stunclient
	${RMCMD} ${DESTDIR}${BINDIR}/turnutils_oauth
	${RMCMD} ${DESTDIR}${BINDIR}/turnutils_natdiscovery
	${RMCMD} ${DESTDIR}${MANPREFIX}/man/man1/turnserver.1
	${RMCMD} ${DESTDIR}${MANPREFIX}/man/man1/turnadmin.1
	${RMCMD} ${DESTDIR}${MANPREFIX}/man/man1/turnutils.1
	${RMCMD} ${DESTDIR}${MANPREFIX}/man/man1/turnutils_uclient.1
	${RMCMD} ${DESTDIR}${MANPREFIX}/man/man1/turnutils_stunclient.1
	${RMCMD} ${DESTDIR}${MANPREFIX}/man/man1/turnutils_oauth.1
	${RMCMD} ${DESTDIR}${MANPREFIX}/man/man1/turnutils_natdiscovery.1
	${RMCMD} ${DESTDIR}${MANPREFIX}/man/man1/turnutils_peer.1
	${RMCMD} ${DESTDIR}${MANPREFIX}/man/man1/coturn.1
	${RMCMD} ${DESTDIR}${LIBDIR}/libturnclient.a
	${RMCMD} ${DESTDIR}${EXAMPLESDIR}
	${RMCMD} ${DESTDIR}${CONFDIR}/turnserver.conf.default
	${RMCMD} ${DESTDIR}${TURNINCLUDEDIR}

uninstall:	deinstall

reinstall:	deinstall install
