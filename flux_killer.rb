flux_id_string = `ps -A | grep flux`
flux_id_array = flux_id_string.split
flux_id = flux_id_array.first
p flux_id
`"kill -9 #{flux_id}"`
