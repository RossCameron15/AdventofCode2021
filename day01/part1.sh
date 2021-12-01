prev_depth=99999
count_of_increase=0
for depth_val in `cat n1`
do
        if [ $depth_val -gt $prev_depth ]
                then
                let count_of_increase=$count_of_increase+1
        fi
        prev_depth=$depth_val
done

echo "number of increases [$count_of_increase]"
