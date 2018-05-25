MLIBS = ../lib/libasyncresolv.a ../lib/dotconf++/libdotconfpp.a

AM_CPPFLAGS = -I../lib -I../lib/dotconf++ -D_REENTRANT -fno-exceptions -fomit-frame-pointer -pipe -Wall -Wno-unused -Wno-uninitialized

sbin_PROGRAMS=shotgund

shotgund_SOURCES=shotgund.cc shotgund.h shotgund_signal.c shotgund_signal.h shotgund_sys.h log.cc log.h\
    shotgund_config.cc shotgund_config.h thread_manager.h thread_queue.h\
    resolver_thread.cc resolver_thread.h shotgund_resolver.cc shotgund_resolver.h\
    decl.h
    

shotgund_DEPENDENCIES=${MLIBS}
shotgund_LDADD=${MLIBS}
