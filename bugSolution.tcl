proc get_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    error "Error: Index $index is out of range for list of length [llength $list]. Please provide a valid index." 
  }
  return [lindex $list $index]
}

set myList {10 20 30 40 50}
set index 10

try {
  puts [get_element $myList $index]
} catch {msg} {
  puts "An error occurred: $msg"
} 

#Alternative solution using return -code:
proc get_element_alt {list index} {
    if {$index < 0 || $index >= [llength $list]} {
        return -code error "Index out of range" 
    }
    return [lindex $list $index]
}

set result = [get_element_alt $myList $index]

if {[catch {puts $result} errorInfo]} {
    puts "An error occurred: $errorInfo"
} 