from python import Python

fn main() raises:
    # Add current folder so we can 'import calc'
    Python.add_to_path(".")

    # Import Python modules (these calls can raise)
    var math = Python.import_module("math")
    var pd   = Python.import_module("pandas")
    var np   = Python.import_module("numpy")
    var calc = Python.import_module("calc")   # expects calc.py in same dir

    # Use them
    var a = math.sqrt(10)
    print("\nsqrt(10) =", a)

    var array = np.array([1, 2, 3])
    print("\nnumpy array:", array)

    var df = pd.DataFrame(array)
    print("\npandas DataFrame:\n", df)

    var x = calc.add(2, 4)
    print("\ncalc.add(2,4) =", x)
