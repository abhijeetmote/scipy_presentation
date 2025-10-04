from python import PythonObject
from python.bindings import PythonModuleBuilder
import math
from os import abort

# ---- Python extension init: enables `import my_mojo` from Python
@export
fn PyInit_my_mojo() -> PythonObject:
    try:
        var m = PythonModuleBuilder("my_mojo")  # must match the import name
        m.def_function[factorial]("factorial", docstring="Compute n!")
        return m.finalize()
    except e:
        return abort[PythonObject](String("error creating Python Mojo module:", e))

# callable from Python
fn factorial(py_obj: PythonObject) raises -> PythonObject:
    var n = Int(py_obj)             # convert Python int -> Mojo Int (raises if not convertible)
    return math.factorial(n)

# ---- Standalone entrypoint: enables `mojo my_mojo.mojo`
#fn main():
#   var five = 5
#    var fact5 = math.factorial(five)
#    print("factorial(5) =", fact5)
