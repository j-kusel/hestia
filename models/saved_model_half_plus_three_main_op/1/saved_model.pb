Ę^
Ć
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ď
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.9.02v1.9.0-0-g25c197e023G
c
a/initial_valueConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB
 *   ?
t
a
VariableV2"/device:CPU:0*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

a/AssignAssignaa/initial_value"/device:CPU:0*
use_locking(*
T0*
_class

loc:@a*
validate_shape(*
_output_shapes
: 
[
a/readIdentitya"/device:CPU:0*
_output_shapes
: *
T0*
_class

loc:@a
c
b/initial_valueConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB
 *  @@
t
b
VariableV2"/device:CPU:0*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

b/AssignAssignbb/initial_value"/device:CPU:0*
T0*
_class

loc:@b*
validate_shape(*
_output_shapes
: *
use_locking(
[
b/readIdentityb"/device:CPU:0*
T0*
_class

loc:@b*
_output_shapes
: 
c
c/initial_valueConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB
 *  @@
t
c
VariableV2"/device:CPU:0*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

c/AssignAssigncc/initial_value"/device:CPU:0*
use_locking(*
T0*
_class

loc:@c*
validate_shape(*
_output_shapes
: 
[
c/readIdentityc"/device:CPU:0*
T0*
_class

loc:@c*
_output_shapes
: 
^

tf_examplePlaceholder"/device:CPU:0*
dtype0*
_output_shapes
:*
shape:
d
ParseExample/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
o
ParseExample/key_x2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB*    
s
ParseExample/Reshape/shapeConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:

ParseExample/ReshapeReshapeParseExample/key_x2ParseExample/Reshape/shape"/device:CPU:0*
T0*
Tshape0*
_output_shapes
:
q
ParseExample/ParseExample/namesConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
w
&ParseExample/ParseExample/dense_keys_0Const"/device:CPU:0*
value	B Bx*
dtype0*
_output_shapes
: 
x
&ParseExample/ParseExample/dense_keys_1Const"/device:CPU:0*
dtype0*
_output_shapes
: *
value
B Bx2
ţ
ParseExample/ParseExampleParseExample
tf_exampleParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1ParseExample/ConstParseExample/Reshape"/device:CPU:0*
Tdense
2*
Ndense*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
Nsparse *
dense_shapes
::*
sparse_types
 
i
xIdentityParseExample/ParseExample"/device:CPU:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
V
MulMula/readx"/device:CPU:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
X
AddAddMulb/read"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
S
yIdentityAdd"/device:CPU:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
X
Mul_1Mula/readx"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
Add_1AddMul_1c/read"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
y2IdentityAdd_1"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
x2IdentityParseExample/ParseExample:1"/device:CPU:0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
d
a2/initial_valueConst"/device:CPU:0*
valueB
 *   ?*
dtype0*
_output_shapes
: 
u
a2
VariableV2"/device:CPU:0*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

	a2/AssignAssigna2a2/initial_value"/device:CPU:0*
use_locking(*
T0*
_class
	loc:@a2*
validate_shape(*
_output_shapes
: 
^
a2/readIdentitya2"/device:CPU:0*
_output_shapes
: *
T0*
_class
	loc:@a2
d
c2/initial_valueConst"/device:CPU:0*
valueB
 *  @@*
dtype0*
_output_shapes
: 
u
c2
VariableV2"/device:CPU:0*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 

	c2/AssignAssignc2c2/initial_value"/device:CPU:0*
T0*
_class
	loc:@c2*
validate_shape(*
_output_shapes
: *
use_locking(
^
c2/readIdentityc2"/device:CPU:0*
T0*
_class
	loc:@c2*
_output_shapes
: 
Z
Mul_2Mula2/readx2"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
Add_2AddMul_2c2/read"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
y3IdentityAdd_2"/device:CPU:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
ConstConst*
dtype0*
_output_shapes
: *4
value+B) B#/tmp/original/export/assets/foo.txt
e
filename_tensor/initial_valueConst*
valueB Bfoo.txt*
dtype0*
_output_shapes
: 
s
filename_tensor
VariableV2*
dtype0*
_output_shapes
: *
	container *
shape: *
shared_name 
ž
filename_tensor/AssignAssignfilename_tensorfilename_tensor/initial_value*
T0*"
_class
loc:@filename_tensor*
validate_shape(*
_output_shapes
: *
use_locking(
v
filename_tensor/readIdentityfilename_tensor*
_output_shapes
: *
T0*"
_class
loc:@filename_tensor
T
Assign/valueConst*
dtype0*
_output_shapes
: *
valueB Bfoo.txt

AssignAssignfilename_tensorAssign/value*
use_locking( *
T0*"
_class
loc:@filename_tensor*
validate_shape(*
_output_shapes
: 
T
initNoOp	^a/Assign
^a2/Assign	^b/Assign	^c/Assign
^c2/Assign"/device:CPU:0
V
init_1NoOp	^a/Assign
^a2/Assign	^b/Assign	^c/Assign
^c2/Assign"/device:CPU:0

init_2NoOp

init_all_tablesNoOp
2
group_deps/NoOpNoOp^init_2^init_all_tables
1
group_deps/NoOp_1NoOp^init_1"/device:CPU:0
8

group_depsNoOp^group_deps/NoOp^group_deps/NoOp_1
*
group_deps_1NoOp^Assign^group_deps
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_2e870685e1c44a06aebbe478904d0917/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*$
valueBBaBa2BbBcBc2*
dtype0*
_output_shapes
:
|
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B *
dtype0*
_output_shapes
:

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesaa2bcc2"/device:CPU:0*
dtypes	
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*$
valueBBaBa2BbBcBc2*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B *
dtype0*
_output_shapes
:
ł
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes	
2*(
_output_shapes
:::::

save/AssignAssignasave/RestoreV2"/device:CPU:0*
use_locking(*
T0*
_class

loc:@a*
validate_shape(*
_output_shapes
: 

save/Assign_1Assigna2save/RestoreV2:1"/device:CPU:0*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
	loc:@a2

save/Assign_2Assignbsave/RestoreV2:2"/device:CPU:0*
use_locking(*
T0*
_class

loc:@b*
validate_shape(*
_output_shapes
: 

save/Assign_3Assigncsave/RestoreV2:3"/device:CPU:0*
use_locking(*
T0*
_class

loc:@c*
validate_shape(*
_output_shapes
: 

save/Assign_4Assignc2save/RestoreV2:4"/device:CPU:0*
use_locking(*
T0*
_class
	loc:@c2*
validate_shape(*
_output_shapes
: 
w
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4"/device:CPU:0
<
save/restore_allNoOp^save/restore_shard"/device:CPU:0"<
save/Const:0save/Identity:0save/restore_all (5 @F8"]
saved_model_assetsG*E
C
+type.googleapis.com/tensorflow.AssetFileDef
	
Const:0foo.txt"
	variablesűř
.
a:0a/Assigna/read:02a/initial_value:08
.
b:0b/Assignb/read:02b/initial_value:08
.
c:0c/Assignc/read:02c/initial_value:08
2
a2:0	a2/Assign	a2/read:02a2/initial_value:08
2
c2:0	c2/Assign	c2/read:02c2/initial_value:08"'
saved_model_main_op

group_deps_1"
asset_filepaths
	
Const:0"
trainable_variablesűř
.
a:0a/Assigna/read:02a/initial_value:08
.
b:0b/Assignb/read:02b/initial_value:08
.
c:0c/Assignc/read:02c/initial_value:08
2
a2:0	a2/Assign	a2/read:02a2/initial_value:08
2
c2:0	c2/Assign	c2/read:02c2/initial_value:08*
regress_x2_to_y3k
%
inputs
x2:0˙˙˙˙˙˙˙˙˙&
outputs
y3:0˙˙˙˙˙˙˙˙˙tensorflow/serving/regress*q
serving_default^

x
x:0˙˙˙˙˙˙˙˙˙
y
y:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict*u
regress_x_to_yc

inputs
tf_example:0%
outputs
y:0˙˙˙˙˙˙˙˙˙tensorflow/serving/regress*w
regress_x_to_y2d

inputs
tf_example:0&
outputs
y2:0˙˙˙˙˙˙˙˙˙tensorflow/serving/regress*v
classify_x_to_yc

inputs
tf_example:0$
scores
y:0˙˙˙˙˙˙˙˙˙tensorflow/serving/classify