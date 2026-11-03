foreach p {xcvu29p-fsvh2892-2-e xcvu29p* xczu7ev-ffvc1156-2-e xcku040-ffva1156-2-e xcvu9p-flga2104-2L-e xcvu9p*} {
  if {[catch {set l [get_parts $p]} e]} { puts "PARTS $p : error $e" } else { puts "PARTS $p : [llength $l] -> $l" }
}
puts "PARTCOUNT [llength [get_parts]]"
