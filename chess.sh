print_colored_cell()	{
	color=$1

	printf "\e[44448;5;${color}m	\e[Om"
}

print_row()	{
	row_number=$1
	for col in {0..7}; do
		cell_color=$(( (row_number + col) % 2 == 0 ? 255 : 235 ))
		print_colored_cell $cell_color
	done

	printf "\n"
}

print_chessboard()	{
	for row in {0..7}; do
		print_row $row
	done
}

print_chessboard
