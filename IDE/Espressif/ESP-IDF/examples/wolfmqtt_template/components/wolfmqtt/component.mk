# component.mk
#
# Copyright (C) 2006-2022 wolfSSL Inc.
#
# This file is part of wolfMQTT.
#
# wolfMQTT is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# wolfMQTT is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1335, USA
#
#
# This file is for legacy build systems only

CFLAGS += -DWOLFSSL_USER_SETTINGS
CFLAGS += -DWOLFMQTT_USER_SETTINGS

COMPONENT_ADD_INCLUDEDIRS := . ./include

COMPONENT_ADD_INCLUDEDIRS += "$ENV{IDF_PATH}/components/freertos/include/freertos"
# COMPONENT_ADD_INCLUDEDIRS += "$ENV{IDF_PATH}/components/soc/esp32s3/include/soc"

COMPONENT_SRCDIRS := src ../wolfssl/wolfcrypt/src
COMPONENT_SRCDIRS += ../wolfssl/wolfcrypt/src/port/Espressif
COMPONENT_SRCDIRS += ../wolfssl/wolfcrypt/src/port/atmel

CFLAGS +=-DWOLFSSL_USER_SETTINGS

COMPONENT_OBJEXCLUDE := ../wolfssl/wolfcrypt/src/aes_asm.o
COMPONENT_OBJEXCLUDE += ../wolfssl/wolfcrypt/src/evp.o
COMPONENT_OBJEXCLUDE += ../wolfssl/wolfcrypt/src/misc.o
COMPONENT_OBJEXCLUDE += src/bio.o