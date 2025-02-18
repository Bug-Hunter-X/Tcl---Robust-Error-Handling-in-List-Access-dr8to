proc get_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    error "Index out of range" 
  }
  return [lindex $list $index]
}

set myList {10 20 30 40 50}
set index 10

puts [get_element $myList $index]