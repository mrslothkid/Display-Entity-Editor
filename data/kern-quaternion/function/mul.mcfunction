data modify storage kern:out matrix set value [0f,0f,0f,0f]
data modify storage kern:out matrix[0] set compute default float kern-quaternion:mul/x
data modify storage kern:out matrix[1] set compute default float kern-quaternion:mul/y
data modify storage kern:out matrix[2] set compute default float kern-quaternion:mul/z
data modify storage kern:out matrix[3] set compute default float kern-quaternion:mul/w
