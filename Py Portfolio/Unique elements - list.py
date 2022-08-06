my_list = [1, 2, 4, 4, 1, 4, 2, 6, 2, 9]
#
new_list = []
new_list.append(my_list[0])
for i in range(1, len(my_list)):
    if my_list[i] not in new_list:
        new_list.append(my_list[i])
        i+=1
    else: 
        i+=1

#
print("The list with unique elements only:")
print(new_list)
