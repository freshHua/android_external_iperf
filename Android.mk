LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

iperf_SOURCES = \
	compat/error.c \
	compat/gettimeofday.c \
	compat/inet_ntop.c  \
	compat/inet_pton.c  \
	compat/signal.c  \
	compat/snprintf.c \
	compat/string.c \
	compat/Thread.c \
	compat/delay.cpp \
	src/Extractor.c \
	src/gnu_getopt_long.c \
	src/ReportCSV.c  \
	src/Reporter.c  \
	src/SocketAddr.c  \
	src/stdio.c \
	src/gnu_getopt.c \
	src/Locale.c  \
	src/ReportDefault.c \
	src/service.c \
	src/sockets.c \
	src/tcp_window_size.c \
	src/Client.cpp \
	src/Launch.cpp \
	src/List.cpp  \
	src/Listener.cpp  \
	src/main.cpp  \
	src/PerfSocket.cpp  \
	src/Server.cpp \
	src/Settings.cpp

LOCAL_SRC_FILES := $(iperf_SOURCES)

LOCAL_C_INCLUDES :=$(LOCAL_PATH)/include

LOCAL_CFLAGS+=-O3 -g -W -Wall -Wno-unused 

LOCAL_CFLAGS += -DHAVE_CONFIG_H

LOCAL_MODULE:= iperf
LOCAL_MODULE_TAGS := debug eng optional

include $(BUILD_EXECUTABLE)

