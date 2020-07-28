# Autogenerated wrapper script for SpeexDSP_jll for x86_64-linux-gnu
export libspeexdsp

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libspeexdsp`
const libspeexdsp_splitpath = ["lib", "libspeexdsp.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libspeexdsp_path = ""

# libspeexdsp-specific global declaration
# This will be filled out by __init__()
libspeexdsp_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libspeexdsp = "libspeexdsp.so.1"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"SpeexDSP")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libspeexdsp_path = normpath(joinpath(artifact_dir, libspeexdsp_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libspeexdsp_handle = dlopen(libspeexdsp_path)
    push!(LIBPATH_list, dirname(libspeexdsp_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

