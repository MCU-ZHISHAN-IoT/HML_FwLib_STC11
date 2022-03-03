# ------------------------------------------------------------------------
# Author     : Weilun Fong | wlf@zhishan-iot.tk
# Date       : 2022-03-03
# Description: compile parametes define
# E-mail     : mcu@zhishan-iot.tk
# Make-tool  : CMake
# Page       : https://hw.zhishan-iot.tk/page/hml/detail/fwlib_stc11.html
# Project    : HML_FwLib_STC11
# Version    : v0.0.2
# ------------------------------------------------------------------------

# Init variables
set(MCU_MODEL "")
set(CODE_SIZE 0)
set(XRAM_SIZE 0)

# [CLKFRE] frequency of MCU clock
if(CLKFRE MATCHES "^[0-9]+$")
    set(CLOCK_FREQUENCY ${CLKFRE})
else()
    message(FATAL_ERROR "invalid CLKFRE value")
endif()

# [MCU] MCU model
#   Default value of CODE and XRAM is ruled by MCU model. However, if user
#   specify them manually, value of related variables will be overridden.
if(DEFINED MCU)
    string(TOUPPER ${MCU} MCU_MODEL)
    if(${MCU_MODEL} STREQUAL STC11F01)
        set(CODE_SIZE 1024)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11F01E)
        set(CODE_SIZE 1024)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11L01E)
        set(CODE_SIZE 1024)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11F02)
        set(CODE_SIZE 2048)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11L02)
        set(CODE_SIZE 2048)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11F02E)
        set(CODE_SIZE 2048)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11L02E)
        set(CODE_SIZE 2048)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11F03E)
        set(CODE_SIZE 3072)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11L03E)
        set(CODE_SIZE 3072)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11F04)
        set(CODE_SIZE 4096)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11L04)
        set(CODE_SIZE 4096)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11F04E)
        set(CODE_SIZE 4096)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11L04E)
        set(CODE_SIZE 4096)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11F05E)
        set(CODE_SIZE 5120)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11L05E)
        set(CODE_SIZE 5120)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL IAP11F06)
        set(CODE_SIZE 6144)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL IAP11L06)
        set(CODE_SIZE 6144)
        set(XRAM_SIZE 0)
    elseif(${MCU_MODEL} STREQUAL STC11F08XE)
        set(CODE_SIZE 8192)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11L08XE)
        set(CODE_SIZE 8192)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11F16XE)
        set(CODE_SIZE 16384)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11L16XE)
        set(CODE_SIZE 16384)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11F32XE)
        set(CODE_SIZE 32768)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11L32XE)
        set(CODE_SIZE 32768)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11F40XE)
        set(CODE_SIZE 40960)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11L40XE)
        set(CODE_SIZE 40960)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11F48XE)
        set(CODE_SIZE 49152)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11L48XE)
        set(CODE_SIZE 49152)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11F52XE)
        set(CODE_SIZE 53248)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11L52XE)
        set(CODE_SIZE 53248)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11F56XE)
        set(CODE_SIZE 57344)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11L56XE)
        set(CODE_SIZE 57344)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11F60XE)
        set(CODE_SIZE 61440)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11L60XE)
        set(CODE_SIZE 61440)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11F62X)
        set(CODE_SIZE 63488)
        set(XRAM_SIZE 1024)
    elseif(${MCU_MODEL} STREQUAL STC11L62X)
        set(CODE_SIZE 63488)
        set(XRAM_SIZE 1024)
    else()
        message(FATAL_ERROR "unknow MCU model: ${MCU}")
    endif()
else()
    message(FATAL_ERROR "user must specify MCU model")
endif()

# [CODE] internal ROM
if(DEFINED CODE)
    math(EXPR CODE_SIZE "${CODE} * 1024")
endif()

# [IRAM] internal RAM
# for stc11, this value is fixed to 256
set(IRAM_SIZE 256)

# [XRAM] external RAM
if(DEFINED XRAM)
    math(EXPR XRAM_SIZE "${XRAM} * 1024")
endif()

# Compile parameters define
add_compile_options(
   --std-sdcc99
   --fsigned-char
   --opt-code-size
   "SHELL: --code-loc 0x0000 --code-size ${CODE_SIZE}"
   "SHELL: --iram-size ${IRAM_SIZE}"
   "SHELL: --xram-size ${XRAM_SIZE}"
)
add_definitions(
    -D__CONF_FRE_CLKIN=${CLOCK_FREQUENCY}UL
    -D__CONF_MCU_MODEL=MCU_MODEL_${MCU_MODEL}
)

# Print config information
message("model : ${MCU_MODEL}")
message("memory: code=${CODE_SIZE}B, iram=${IRAM_SIZE}B, xram=${XRAM_SIZE}B")
message("clock : ${CLOCK_FREQUENCY}Hz")
