group_A_val=0
group_B_val=0
group_C_val=0
group_D_val=0
group_E_val=0
group_F_val=0
group_G_val=0
group_H_val=0
read_count=0
increase_count=0

for depth_val in `cat n1`
do
	let read_count=$read_count+1
	if [ $read_count -gt 10 ] 
		then
		read_count=3
	fi

	if [ $read_count -eq 1 ] 
		then
		let group_A_val=$group_A_val+$depth_val
	fi
	if [ $read_count -eq 2 ] 
		then
		let group_A_val=$group_A_val+$depth_val
		let group_B_val=$group_B_val+$depth_val
	fi
	if [ $read_count -eq 3 ] 
		then
		let group_A_val=$group_A_val+$depth_val
		let group_B_val=$group_B_val+$depth_val
		let group_C_val=$group_C_val+$depth_val
		if [ $group_H_val -gt 0 ] && [ $group_A_val -gt $group_H_val ] 
			then
			let increase_count=$increase_count+1
		fi
		group_H_val=0
	fi
	if [ $read_count -eq 4 ] 
		then
		let group_B_val=$group_B_val+$depth_val
		let group_C_val=$group_C_val+$depth_val
		let group_D_val=$group_D_val+$depth_val
		if [ $group_A_val -gt 0 ] && [ $group_B_val -gt $group_A_val ] 
			then
			let increase_count=$increase_count+1
		fi
		group_A_val=0
	fi
	if [ $read_count -eq 5 ] 
		then
		let group_C_val=$group_C_val+$depth_val
		let group_D_val=$group_D_val+$depth_val
		let group_E_val=$group_E_val+$depth_val
		if [ $group_B_val -gt 0 ] && [ $group_C_val -gt $group_B_val ] 
			then
			let increase_count=$increase_count+1
		fi
		group_B_val=0
	fi
	if [ $read_count -eq 6 ] 
		then
		let group_D_val=$group_D_val+$depth_val
		let group_E_val=$group_E_val+$depth_val
		let group_F_val=$group_F_val+$depth_val
		if [ $group_C_val -gt 0 ] && [ $group_D_val -gt $group_C_val ] 
			then
			let increase_count=$increase_count+1
		fi
		group_C_val=0

	fi
	if [ $read_count -eq 7 ] 
		then
		let group_E_val=$group_E_val+$depth_val
		let group_F_val=$group_F_val+$depth_val
		let group_G_val=$group_G_val+$depth_val
		if [ $group_D_val -gt 0 ] && [ $group_E_val -gt $group_D_val ] 
			then
			let increase_count=$increase_count+1
		fi
		group_D_val=0

	fi
	if [ $read_count -eq 8 ] 
		then
		let group_F_val=$group_F_val+$depth_val
		let group_G_val=$group_G_val+$depth_val
		let group_H_val=$group_H_val+$depth_val
		if [ $group_E_val -gt 0 ] && [ $group_F_val -gt $group_E_val ] 
			then
			let increase_count=$increase_count+1
		fi
		group_E_val=0

	fi
	if [ $read_count -eq 9 ] 
		then
		let group_G_val=$group_G_val+$depth_val
		let group_H_val=$group_H_val+$depth_val
		let group_A_val=$group_A_val+$depth_val
		if [ $group_F_val -gt 0 ] && [ $group_G_val -gt $group_F_val ] 
			then
			let increase_count=$increase_count+1
		fi
		group_F_val=0
	fi
	if [ $read_count -eq 10 ] 
		then
		let group_H_val=$group_H_val+$depth_val
		let group_A_val=$group_A_val+$depth_val
		let group_B_val=$group_B_val+$depth_val
		if [ $group_G_val -gt 0 ] && [ $group_H_val -gt $group_G_val ] 
			then
			let increase_count=$increase_count+1
		fi
		group_G_val=0
	fi
done

echo "Increase count is [$increase_count]"

