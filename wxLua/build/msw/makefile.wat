# =========================================================================
#     This makefile was generated by
#     Bakefile 0.2.9 (http://www.bakefile.org)
#     Do not modify, all changes will be overwritten!
# =========================================================================



# -------------------------------------------------------------------------
# These are configurable options:
# -------------------------------------------------------------------------

# C compiler 
CC = wcc386

# C++ compiler 
CXX = wpp386

# Standard flags for CC 
CFLAGS = 

# Standard flags for C++ 
CXXFLAGS = 

# Standard preprocessor flags (common for CC and CXX) 
CPPFLAGS = 

# Standard linker flags 
LDFLAGS = 

# Builds in debug mode [debug,release]
BUILD = debug

# Builds in Unicode mode [0,1]
#   1 - Unicode
UNICODE = 0

# Builds in shared mode [0,1]
#   1 - DLL
SHARED = 0

# Use DLL build of wx library? [0,1]
#   0 - Static
#   1 - DLL
WX_SHARED = 0

# Version of the wx library to build against. 
WX_VERSION = 28

# Use monolithic build of wxWidgets? [0,1]
#   0 - Multilib
#   1 - Monolithic
WX_MONOLITHIC = 0

# The directory where wxWidgets library is installed 
WX_DIR = $(%WXWIN)

# Should the wxLua applications be compiled ? [0,1]
USE_APPS = 1

# Should wxLua use the system-wide Lua library ? [0,1]
USE_SYSTEM_LUA = 0

# The path to the Lua library includes 
LUA_INCLUDE_DIR = ..\..\..\modules\lua\include

# The path to the Lua library libs 
LUA_LIB_DIR = ..\..\..\modules\lua\lib

# This is an advanced option. Handle with care.
# Version of C runtime library to use. You can change this to
# static if SHARED=0, but it is highly recommended to not do
# it if SHARED=1 unless you know what you are doing. [dynamic,static]
RUNTIME_LIBS = dynamic

# This is an advanced option. Handle with care.
# The thread model to use: use 'multi' default to allow
# multi-threading. [multi,single]
THREADING = multi

# Do the wxLua bindings for the wxAdv lib need to be compiled ? [0,1]
USE_WXBINDADV = 1

# Do the wxLua bindings for the wxAUI lib need to be compiled ? [0,1]
USE_WXBINDAUI = 1

# Do the wxLua bindings for the wxBase lib need to be compiled ? [0,1]
USE_WXBINDBASE = 1

# Do the wxLua bindings for the wxCore lib need to be compiled ? [0,1]
USE_WXBINDCORE = 1

# Do the wxLua bindings for the wxGL lib need to be compiled ? [0,1]
USE_WXBINDGL = 1

# Do the wxLua bindings for the wxHTML lib need to be compiled ? [0,1]
USE_WXBINDHTML = 1

# Do the wxLua bindings for the wxMedia lib need to be compiled ? [0,1]
USE_WXBINDMEDIA = 1

# Do the wxLua bindings for the wxNet lib need to be compiled ? [0,1]
USE_WXBINDNET = 1

# Do the wxLua bindings for the wxRichText lib need to be compiled ? [0,1]
USE_WXBINDRICHTEXT = 0

# Do the wxLua bindings for wxSTC need to be compiled ? [0,1]
USE_WXBINDSTC = 1

# Do the wxLua bindings for wxXML need to be compiled ? [0,1]
USE_WXBINDXML = 1

# Do the wxLua bindings for wxXRC need to be compiled ? [0,1]
USE_WXBINDXRC = 1

# Does the wxLua debug support need to be compiled ? [0,1]
USE_WXLUADEBUG = 1

# Does the wxLua debug socket support need to be compiled ? [0,1]
USE_WXLUASOCKET = 1

# Compile the lua module ? [0,1]
USE_LUAMODULE = 1

# Build a monolithic Lua module ? [0,1]
MONOLITHIC_LUAMODULE = 0

# Compile the wxLua app ? [0,1]
USE_WXLUAAPP = 1

# Compile the wxLuaCan app ? [0,1]
USE_WXLUACANAPP = 1

# The path to the wxStEdit component (meaningful only when USE_WXLUAEDITAPP==1) 
WXSTEDIT_DIR = $(%WXSTEDIT)

# Compile the wxLuaEditor app ? [0,1]
USE_WXLUAEDITAPP = 0

# Compile the wxLuaFreeze app ? [0,1]
USE_WXLUAFREEZEAPP = 1



# -------------------------------------------------------------------------
# Do not modify the rest of this file!
# -------------------------------------------------------------------------

# Speed up compilation a bit:
!ifdef __LOADDLL__
!  loaddll wcc      wccd
!  loaddll wccaxp   wccdaxp
!  loaddll wcc386   wccd386
!  loaddll wpp      wppdi86
!  loaddll wppaxp   wppdaxp
!  loaddll wpp386   wppd386
! if $(__VERSION__) >= 1280
!  loaddll wlink    wlinkd
! else
!  loaddll wlink    wlink
! endif
!  loaddll wlib     wlibd
!endif

# We need these variables in some bakefile-made rules:
WATCOM_CWD = $+ $(%cdrive):$(%cwd) $-

### Conditionally set variables: ###

WXLIBPOSTFIX =
!ifeq BUILD debug
!ifeq UNICODE 1
WXLIBPOSTFIX = ud
!endif
!endif
!ifeq BUILD debug
!ifeq UNICODE 0
WXLIBPOSTFIX = d
!endif
!endif
!ifeq BUILD release
!ifeq UNICODE 1
WXLIBPOSTFIX = u
!endif
!endif
WXLIBPATH =
!ifeq WX_SHARED 0
WXLIBPATH = \lib\wat_lib
!endif
!ifeq WX_SHARED 1
WXLIBPATH = \lib\wat_dll
!endif
_BUILDDIR_SHARED_SUFFIX =
!ifeq SHARED 0
_BUILDDIR_SHARED_SUFFIX = 
!endif
!ifeq SHARED 1
_BUILDDIR_SHARED_SUFFIX = _dll
!endif
__apps___depname =
!ifeq USE_APPS 1
__apps___depname = apps
!endif

### Variables: ###

MAKEARGS = CC="$(CC)" CXX="$(CXX)" CFLAGS="$(CFLAGS)" CXXFLAGS="$(CXXFLAGS)" &
	CPPFLAGS="$(CPPFLAGS)" LDFLAGS="$(LDFLAGS)" BUILD="$(BUILD)" &
	UNICODE="$(UNICODE)" SHARED="$(SHARED)" WX_SHARED="$(WX_SHARED)" &
	WX_VERSION="$(WX_VERSION)" WX_MONOLITHIC="$(WX_MONOLITHIC)" &
	WX_DIR="$(WX_DIR)" USE_APPS="$(USE_APPS)" &
	USE_SYSTEM_LUA="$(USE_SYSTEM_LUA)" LUA_INCLUDE_DIR="$(LUA_INCLUDE_DIR)" &
	LUA_LIB_DIR="$(LUA_LIB_DIR)" RUNTIME_LIBS="$(RUNTIME_LIBS)" &
	THREADING="$(THREADING)" USE_WXBINDADV="$(USE_WXBINDADV)" &
	USE_WXBINDAUI="$(USE_WXBINDAUI)" USE_WXBINDBASE="$(USE_WXBINDBASE)" &
	USE_WXBINDCORE="$(USE_WXBINDCORE)" USE_WXBINDGL="$(USE_WXBINDGL)" &
	USE_WXBINDHTML="$(USE_WXBINDHTML)" USE_WXBINDMEDIA="$(USE_WXBINDMEDIA)" &
	USE_WXBINDNET="$(USE_WXBINDNET)" &
	USE_WXBINDRICHTEXT="$(USE_WXBINDRICHTEXT)" &
	USE_WXBINDSTC="$(USE_WXBINDSTC)" USE_WXBINDXML="$(USE_WXBINDXML)" &
	USE_WXBINDXRC="$(USE_WXBINDXRC)" USE_WXLUADEBUG="$(USE_WXLUADEBUG)" &
	USE_WXLUASOCKET="$(USE_WXLUASOCKET)" USE_LUAMODULE="$(USE_LUAMODULE)" &
	MONOLITHIC_LUAMODULE="$(MONOLITHIC_LUAMODULE)" &
	USE_WXLUAAPP="$(USE_WXLUAAPP)" USE_WXLUACANAPP="$(USE_WXLUACANAPP)" &
	WXSTEDIT_DIR="$(WXSTEDIT_DIR)" USE_WXLUAEDITAPP="$(USE_WXLUAEDITAPP)" &
	USE_WXLUAFREEZEAPP="$(USE_WXLUAFREEZEAPP)"


all : watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)
watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX) :
	-if not exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX) mkdir watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)

### Targets: ###

all : .SYMBOLIC test_for_selected_wxbuild modules $(__apps___depname)

clean : .SYMBOLIC 
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.obj del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.obj
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.res del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.res
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.lbc del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.lbc
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.ilk del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.ilk
	-if exist watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.pch del watmsw$(WXLIBPOSTFIX)$(_BUILDDIR_SHARED_SUFFIX)\*.pch
	cd ..\..\modules\build\msw
	wmake $(__MAKEOPTS__) -f makefile.wat $(MAKEARGS) clean
	cd $(WATCOM_CWD)
	cd ..\..\apps\build\msw
	wmake $(__MAKEOPTS__) -f makefile.wat $(MAKEARGS) clean
	cd $(WATCOM_CWD)

test_for_selected_wxbuild :  
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo ----------------------------------------------------------------------------
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo The selected wxWidgets build is not available!
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo Please use the options prefixed with WX_ to select another wxWidgets build.
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	echo ----------------------------------------------------------------------------
	@if not exist $(WX_DIR)$(WXLIBPATH)\msw$(WXLIBPOSTFIX)\wx\setup.h \
	exit 1

modules : .SYMBOLIC 
	cd ..\..\modules\build\msw
	wmake $(__MAKEOPTS__) -f makefile.wat $(MAKEARGS)
	cd $(WATCOM_CWD)

!ifeq USE_APPS 1
apps : .SYMBOLIC 
	cd ..\..\apps\build\msw
	wmake $(__MAKEOPTS__) -f makefile.wat $(MAKEARGS)
	cd $(WATCOM_CWD)
!endif

docs :  
	@echo =============================================
	@echo Creating wxLua documentation using doxygen...
	@echo =============================================
	cd ../..\docs
	doxygen doxygen.cfg

compress :  
	@echo =============================================
	@echo Compressing wxLua binaries (requires UPX)...
	@echo =============================================
	cd ..\..\bin
	upx -9 --force *.exe
	cd ..\build\msw

