# Tcl: Robust Error Handling in List Access

This repository demonstrates a common error in Tcl scripts: insufficient error handling when accessing elements of a list using an invalid index.

The `bug.tcl` file contains a procedure that attempts to access a list element.  It correctly checks for index out-of-bounds conditions but uses the basic `error` command which may not be sufficient for complex applications.

The `bugSolution.tcl` file improves the error handling by providing more context in the error message and demonstrating alternative approaches for handling errors gracefully.

## How to Run

1.  Save the code in `bug.tcl` and `bugSolution.tcl`. 
2.  Run the script using a Tcl interpreter: `tclsh bug.tcl` and `tclsh bugSolution.tcl`