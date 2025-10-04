# 1) enable Mojo’s Python import hook
import mojo.importer

# 2) ensure the current directory is on sys.path (so Python can find mojo_module.mojo)
import sys
sys.path.insert(0, "")

# 3) import the Mojo module like a normal Python module
import my_mojo

print(my_mojo.factorial(5))   # -> 120
