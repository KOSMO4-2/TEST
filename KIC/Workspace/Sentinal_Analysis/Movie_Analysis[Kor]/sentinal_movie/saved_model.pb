єх4
┘Е
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
│
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeѕ
Ц
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	ѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Й
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ѕ
џ
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
Ш
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
њ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
Ђ
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
ѕ
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718ыт2
є
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╝дd*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
╝дd*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	ђ*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
Є
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dђ*&
shared_namelstm/lstm_cell/kernel
ђ
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	dђ*
dtype0
ю
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*0
shared_name!lstm/lstm_cell/recurrent_kernel
Ћ
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel* 
_output_shapes
:
ђђ*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:ђ*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
ъ
 RMSprop/embedding/embeddings/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╝дd*1
shared_name" RMSprop/embedding/embeddings/rms
Ќ
4RMSprop/embedding/embeddings/rms/Read/ReadVariableOpReadVariableOp RMSprop/embedding/embeddings/rms* 
_output_shapes
:
╝дd*
dtype0
Ї
RMSprop/dense/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђ*)
shared_nameRMSprop/dense/kernel/rms
є
,RMSprop/dense/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense/kernel/rms*
_output_shapes
:	ђ*
dtype0
ё
RMSprop/dense/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameRMSprop/dense/bias/rms
}
*RMSprop/dense/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense/bias/rms*
_output_shapes
:*
dtype0
Ъ
!RMSprop/lstm/lstm_cell/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dђ*2
shared_name#!RMSprop/lstm/lstm_cell/kernel/rms
ў
5RMSprop/lstm/lstm_cell/kernel/rms/Read/ReadVariableOpReadVariableOp!RMSprop/lstm/lstm_cell/kernel/rms*
_output_shapes
:	dђ*
dtype0
┤
+RMSprop/lstm/lstm_cell/recurrent_kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ђђ*<
shared_name-+RMSprop/lstm/lstm_cell/recurrent_kernel/rms
Г
?RMSprop/lstm/lstm_cell/recurrent_kernel/rms/Read/ReadVariableOpReadVariableOp+RMSprop/lstm/lstm_cell/recurrent_kernel/rms* 
_output_shapes
:
ђђ*
dtype0
Ќ
RMSprop/lstm/lstm_cell/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*0
shared_name!RMSprop/lstm/lstm_cell/bias/rms
љ
3RMSprop/lstm/lstm_cell/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/lstm/lstm_cell/bias/rms*
_output_shapes	
:ђ*
dtype0

NoOpNoOp
Ш"
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*▒"
valueД"Bц" BЮ"
Т
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
b


embeddings
regularization_losses
trainable_variables
	variables
	keras_api
l
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
Ђ
iter
	decay
learning_rate
momentum
rho	
rmsM	rmsN	rmsO	 rmsP	!rmsQ	"rmsR
 
*

0
 1
!2
"3
4
5
*

0
 1
!2
"3
4
5
Г
regularization_losses
#layer_regularization_losses

$layers
trainable_variables
%non_trainable_variables
&layer_metrics
	variables
'metrics
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 


0


0
Г
regularization_losses
(layer_regularization_losses

)layers
trainable_variables
*non_trainable_variables
+layer_metrics
	variables
,metrics
ј
-
state_size

 kernel
!recurrent_kernel
"bias
.regularization_losses
/trainable_variables
0	variables
1	keras_api
 
 

 0
!1
"2

 0
!1
"2
╣
regularization_losses

2states
3layer_regularization_losses

4layers
trainable_variables
5non_trainable_variables
6layer_metrics
	variables
7metrics
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
Г
regularization_losses
8layer_regularization_losses

9layers
trainable_variables
:non_trainable_variables
;layer_metrics
	variables
<metrics
KI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUElstm/lstm_cell/kernel0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUElstm/lstm_cell/bias0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
 
 

=0
>1
 
 
 
 
 
 
 

 0
!1
"2

 0
!1
"2
Г
.regularization_losses
?layer_regularization_losses

@layers
/trainable_variables
Anon_trainable_variables
Blayer_metrics
0	variables
Cmetrics
 
 

0
 
 
 
 
 
 
 
 
4
	Dtotal
	Ecount
F	variables
G	keras_api
D
	Htotal
	Icount
J
_fn_kwargs
K	variables
L	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

D0
E1

F	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

H0
I1

K	variables
Јї
VARIABLE_VALUE RMSprop/embedding/embeddings/rmsXlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
Ѓђ
VARIABLE_VALUERMSprop/dense/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUERMSprop/dense/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
єЃ
VARIABLE_VALUE!RMSprop/lstm/lstm_cell/kernel/rmsNtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
љЇ
VARIABLE_VALUE+RMSprop/lstm/lstm_cell/recurrent_kernel/rmsNtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ёЂ
VARIABLE_VALUERMSprop/lstm/lstm_cell/bias/rmsNtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE
ћ
serving_default_embedding_inputPlaceholder*0
_output_shapes
:                  *
dtype0*%
shape:                  
┬
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biasdense/kernel
dense/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *,
f'R%
#__inference_signature_wrapper_91862
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ѕ	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp4RMSprop/embedding/embeddings/rms/Read/ReadVariableOp,RMSprop/dense/kernel/rms/Read/ReadVariableOp*RMSprop/dense/bias/rms/Read/ReadVariableOp5RMSprop/lstm/lstm_cell/kernel/rms/Read/ReadVariableOp?RMSprop/lstm/lstm_cell/recurrent_kernel/rms/Read/ReadVariableOp3RMSprop/lstm/lstm_cell/bias/rms/Read/ReadVariableOpConst*"
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *'
f"R 
__inference__traced_save_94699
▀
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rholstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biastotalcounttotal_1count_1 RMSprop/embedding/embeddings/rmsRMSprop/dense/kernel/rmsRMSprop/dense/bias/rms!RMSprop/lstm/lstm_cell/kernel/rms+RMSprop/lstm/lstm_cell/recurrent_kernel/rmsRMSprop/lstm/lstm_cell/bias/rms*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ **
f%R#
!__inference__traced_restore_94772─Ё2
П
▓
$__inference_lstm_layer_call_fn_94582

inputs
unknown:	dђ
	unknown_0:
ђђ
	unknown_1:	ђ
identityѕбStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_912132
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
ПT
Б
&__forward_gpu_lstm_with_fallback_91210

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimђ

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimє
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1Т
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_3f2c4813-2d97-4e4a-9f8e-a03cf9683489*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_91035_91211*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
б#
║
?__inference_lstm_layer_call_and_return_conditional_losses_89411

inputs/
read_readvariableop_resource:	dђ2
read_1_readvariableop_resource:
ђђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђ2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dђ2

IdentityЈ
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2Л
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         ђ:                  ђ:         ђ:         ђ: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_891382
PartitionedCallи

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
█A
┐
__inference_standard_lstm_93406

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ђ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ђ2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ђ2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ђ2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ђ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ђ2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ђ2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_93321*
condR
while_cond_93320*e
output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   22
0TensorArrayV2Stack/TensorListStack/element_shapeЫ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm»
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ђ2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_2ff7a411-55d8-493a-b44a-0f62516d0e1b*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ЊТ
ы
9__inference___backward_gpu_lstm_with_fallback_92573_92749
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_0Ё
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  ђ2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  ђ*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationж
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђ2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeК
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2"
 gradients/Squeeze_1_grad/ReshapeЋ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  ђ2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeИ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ђ:         ђ:ђў2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  d2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeв
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeы
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЅ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђd2
gradients/concat_1_grad/ShapeЇ
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_1Ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_2Ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_3ј
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_4ј
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_5ј
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_6ј
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_7Ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_8Ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_9Ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_10Ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_11Ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_12Ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_13Ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_14Ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetЇ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђd2
gradients/concat_1_grad/SliceЊ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_1Њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_2Њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_3ћ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_4ћ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_5ћ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_6ћ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_7Њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_8Њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_9Ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_10Ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_11Ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_12Ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_13Ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_14Ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_1_grad/Shape╠
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_2_grad/Shape╠
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_3_grad/Shape╠
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_7_grad/ReshapeІ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_8_grad/ReshapeІ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_9_grad/ReshapeЇ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_10_grad/ReshapeЇ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_11_grad/ReshapeЇ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_12_grad/ReshapeЇ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_13_grad/ReshapeЇ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_14_grad/ReshapeЇ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationя
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationЯ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationЯ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationЯ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationр
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationр
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationр
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationр
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dђ2
gradients/split_grad/concatО
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
ђђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  d2

IdentityЃ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_1Ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dђ2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
ђђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ј
_input_shapes§
Щ:         ђ:                  ђ:         ђ:         ђ: :                  ђ::         ђ:         ђ::                  d:         ђ:         ђ:ђў::         ђ:         ђ: ::::::::: : : : *=
api_implements+)lstm_8d2edc85-f410-4fff-b5d9-40de1296206c*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_92748*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ђ:;7
5
_output_shapes#
!:                  ђ:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :;7
5
_output_shapes#
!:                  ђ: 

_output_shapes
::2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:"

_output_shapes

:ђў: 

_output_shapes
::.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
б#
║
?__inference_lstm_layer_call_and_return_conditional_losses_94549

inputs/
read_readvariableop_resource:	dђ2
read_1_readvariableop_resource:
ђђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђ2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dђ2

IdentityЈ
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2Л
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         ђ:                  ђ:         ђ:         ђ: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_942762
PartitionedCallи

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
ќ
Њ
%__inference_dense_layer_call_fn_94613

inputs
unknown:	ђ
	unknown_0:
identityѕбStatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_912322
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ПT
Б
&__forward_gpu_lstm_with_fallback_93241

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimђ

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimє
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1Т
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_aae8317e-99a1-4fbb-b16b-d9ebf6c24a47*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_93066_93242*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ПT
Б
&__forward_gpu_lstm_with_fallback_93676

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimђ

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimє
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1Т
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_2ff7a411-55d8-493a-b44a-0f62516d0e1b*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_93501_93677*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
«

Ы
@__inference_dense_layer_call_and_return_conditional_losses_94604

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidљ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ЊТ
ы
9__inference___backward_gpu_lstm_with_fallback_91534_91710
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_0Ё
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  ђ2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  ђ*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationж
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђ2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeК
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2"
 gradients/Squeeze_1_grad/ReshapeЋ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  ђ2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeИ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ђ:         ђ:ђў2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  d2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeв
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeы
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЅ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђd2
gradients/concat_1_grad/ShapeЇ
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_1Ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_2Ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_3ј
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_4ј
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_5ј
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_6ј
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_7Ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_8Ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_9Ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_10Ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_11Ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_12Ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_13Ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_14Ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetЇ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђd2
gradients/concat_1_grad/SliceЊ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_1Њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_2Њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_3ћ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_4ћ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_5ћ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_6ћ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_7Њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_8Њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_9Ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_10Ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_11Ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_12Ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_13Ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_14Ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_1_grad/Shape╠
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_2_grad/Shape╠
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_3_grad/Shape╠
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_7_grad/ReshapeІ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_8_grad/ReshapeІ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_9_grad/ReshapeЇ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_10_grad/ReshapeЇ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_11_grad/ReshapeЇ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_12_grad/ReshapeЇ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_13_grad/ReshapeЇ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_14_grad/ReshapeЇ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationя
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationЯ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationЯ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationЯ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationр
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationр
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationр
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationр
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dђ2
gradients/split_grad/concatО
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
ђђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  d2

IdentityЃ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_1Ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dђ2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
ђђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ј
_input_shapes§
Щ:         ђ:                  ђ:         ђ:         ђ: :                  ђ::         ђ:         ђ::                  d:         ђ:         ђ:ђў::         ђ:         ђ: ::::::::: : : : *=
api_implements+)lstm_ef62c802-0492-4c45-a1f1-bb44ee7f71d2*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_91709*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ђ:;7
5
_output_shapes#
!:                  ђ:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :;7
5
_output_shapes#
!:                  ђ: 

_output_shapes
::2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:"

_output_shapes

:ђў: 

_output_shapes
::.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
░	
╝
while_cond_94190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_94190___redundant_placeholder03
/while_while_cond_94190___redundant_placeholder13
/while_while_cond_94190___redundant_placeholder23
/while_while_cond_94190___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
¤

б
D__inference_embedding_layer_call_and_return_conditional_losses_92802

inputs*
embedding_lookup_92796:
╝дd
identityѕбembedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:                  2
Castё
embedding_lookupResourceGatherembedding_lookup_92796Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/92796*4
_output_shapes"
 :                  d*
dtype02
embedding_lookupш
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/92796*4
_output_shapes"
 :                  d2
embedding_lookup/IdentityЕ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :                  d2
embedding_lookup/Identity_1ў
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*4
_output_shapes"
 :                  d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:                  : 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:                  
 
_user_specified_nameinputs
Л
љ
#__inference_signature_wrapper_91862
embedding_input
unknown:
╝дd
	unknown_0:	dђ
	unknown_1:
ђђ
	unknown_2:	ђ
	unknown_3:	ђ
	unknown_4:
identityѕбStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *)
f$R"
 __inference__wrapped_model_889722
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:                  
)
_user_specified_nameembedding_input
░	
╝
while_cond_89509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_89509___redundant_placeholder03
/while_while_cond_89509___redundant_placeholder13
/while_while_cond_89509___redundant_placeholder23
/while_while_cond_89509___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
б#
║
?__inference_lstm_layer_call_and_return_conditional_losses_94114

inputs/
read_readvariableop_resource:	dђ2
read_1_readvariableop_resource:
ђђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђ2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dђ2

IdentityЈ
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2Л
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         ђ:                  ђ:         ђ:         ђ: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_938412
PartitionedCallи

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
░	
╝
while_cond_93755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_93755___redundant_placeholder03
/while_while_cond_93755___redundant_placeholder13
/while_while_cond_93755___redundant_placeholder23
/while_while_cond_93755___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
с
┤
$__inference_lstm_layer_call_fn_94571
inputs_0
unknown:	dђ
	unknown_0:
ђђ
	unknown_1:	ђ
identityѕбStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_898682
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
њ4
Ф	
__inference__traced_save_94699
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop?
;savev2_rmsprop_embedding_embeddings_rms_read_readvariableop7
3savev2_rmsprop_dense_kernel_rms_read_readvariableop5
1savev2_rmsprop_dense_bias_rms_read_readvariableop@
<savev2_rmsprop_lstm_lstm_cell_kernel_rms_read_readvariableopJ
Fsavev2_rmsprop_lstm_lstm_cell_recurrent_kernel_rms_read_readvariableop>
:savev2_rmsprop_lstm_lstm_cell_bias_rms_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1І
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЉ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Б

valueЎ
Bќ
B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names┤
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices╗	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop;savev2_rmsprop_embedding_embeddings_rms_read_readvariableop3savev2_rmsprop_dense_kernel_rms_read_readvariableop1savev2_rmsprop_dense_bias_rms_read_readvariableop<savev2_rmsprop_lstm_lstm_cell_kernel_rms_read_readvariableopFsavev2_rmsprop_lstm_lstm_cell_recurrent_kernel_rms_read_readvariableop:savev2_rmsprop_lstm_lstm_cell_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*А
_input_shapesЈ
ї: :
╝дd:	ђ:: : : : : :	dђ:
ђђ:ђ: : : : :
╝дd:	ђ::	dђ:
ђђ:ђ: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
╝дd:%!

_output_shapes
:	ђ: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%	!

_output_shapes
:	dђ:&
"
 
_output_shapes
:
ђђ:!

_output_shapes	
:ђ:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
╝дd:%!

_output_shapes
:	ђ: 

_output_shapes
::%!

_output_shapes
:	dђ:&"
 
_output_shapes
:
ђђ:!

_output_shapes	
:ђ:

_output_shapes
: 
З
Ђ
E__inference_sequential_layer_call_and_return_conditional_losses_91239

inputs#
embedding_90776:
╝дd

lstm_91214:	dђ

lstm_91216:
ђђ

lstm_91218:	ђ
dense_91233:	ђ
dense_91235:
identityѕбdense/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallљ
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_90776*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_907752#
!embedding/StatefulPartitionedCall░
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_91214
lstm_91216
lstm_91218*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_912132
lstm/StatefulPartitionedCallА
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_91233dense_91235*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_912322
dense/StatefulPartitionedCallП
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                  : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
0
_output_shapes
:                  
 
_user_specified_nameinputs
ѕ9
┌
E__inference_sequential_layer_call_and_return_conditional_losses_92758

inputs4
 embedding_embedding_lookup_92314:
╝дd4
!lstm_read_readvariableop_resource:	dђ7
#lstm_read_1_readvariableop_resource:
ђђ2
#lstm_read_2_readvariableop_resource:	ђ7
$dense_matmul_readvariableop_resource:	ђ3
%dense_biasadd_readvariableop_resource:
identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбembedding/embedding_lookupбlstm/Read/ReadVariableOpбlstm/Read_1/ReadVariableOpбlstm/Read_2/ReadVariableOpz
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:                  2
embedding/CastХ
embedding/embedding_lookupResourceGather embedding_embedding_lookup_92314embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/92314*4
_output_shapes"
 :                  d*
dtype02
embedding/embedding_lookupЮ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/92314*4
_output_shapes"
 :                  d2%
#embedding/embedding_lookup/IdentityК
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :                  d2'
%embedding/embedding_lookup/Identity_1v

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stackѓ
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1ѓ
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2ђ
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_sliceg
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
lstm/zeros/mul/yђ
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessm
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
lstm/zeros/packed/1Ќ
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Constі

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:         ђ2

lstm/zerosk
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
lstm/zeros_1/mul/yє
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
lstm/zeros_1/Less/yЃ
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessq
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
lstm/zeros_1/packed/1Ю
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Constњ
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђ2
lstm/zeros_1Ќ
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	dђ*
dtype02
lstm/Read/ReadVariableOpv
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	dђ2
lstm/Identityъ
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02
lstm/Read_1/ReadVariableOp}
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђ2
lstm/Identity_1Ў
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
lstm/Read_2/ReadVariableOpx
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
lstm/Identity_2ю
lstm/PartitionedCallPartitionedCall.embedding/embedding_lookup/Identity_1:output:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         ђ:                  ђ:         ђ:         ђ: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_924782
lstm/PartitionedCallа
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
dense/MatMul/ReadVariableOpю
dense/MatMulMatMullstm/PartitionedCall:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/MatMulъ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЎ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense/Sigmoidћ
IdentityIdentitydense/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                  : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp:X T
0
_output_shapes
:                  
 
_user_specified_nameinputs
█A
┐
__inference_standard_lstm_89595

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ђ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ђ2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ђ2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ђ2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ђ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ђ2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ђ2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_89510*
condR
while_cond_89509*e
output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   22
0TensorArrayV2Stack/TensorListStack/element_shapeЫ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm»
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ђ2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_1576fc31-52f7-4a02-859f-9c40ef6744d6*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ЊТ
ы
9__inference___backward_gpu_lstm_with_fallback_93066_93242
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_0Ё
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  ђ2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  ђ*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationж
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђ2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeК
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2"
 gradients/Squeeze_1_grad/ReshapeЋ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  ђ2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeИ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ђ:         ђ:ђў2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  d2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeв
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeы
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЅ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђd2
gradients/concat_1_grad/ShapeЇ
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_1Ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_2Ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_3ј
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_4ј
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_5ј
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_6ј
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_7Ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_8Ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_9Ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_10Ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_11Ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_12Ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_13Ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_14Ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetЇ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђd2
gradients/concat_1_grad/SliceЊ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_1Њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_2Њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_3ћ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_4ћ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_5ћ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_6ћ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_7Њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_8Њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_9Ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_10Ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_11Ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_12Ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_13Ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_14Ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_1_grad/Shape╠
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_2_grad/Shape╠
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_3_grad/Shape╠
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_7_grad/ReshapeІ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_8_grad/ReshapeІ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_9_grad/ReshapeЇ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_10_grad/ReshapeЇ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_11_grad/ReshapeЇ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_12_grad/ReshapeЇ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_13_grad/ReshapeЇ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_14_grad/ReshapeЇ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationя
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationЯ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationЯ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationЯ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationр
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationр
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationр
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationр
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dђ2
gradients/split_grad/concatО
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
ђђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  d2

IdentityЃ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_1Ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dђ2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
ђђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ј
_input_shapes§
Щ:         ђ:                  ђ:         ђ:         ђ: :                  ђ::         ђ:         ђ::                  d:         ђ:         ђ:ђў::         ђ:         ђ: ::::::::: : : : *=
api_implements+)lstm_aae8317e-99a1-4fbb-b16b-d9ebf6c24a47*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_93241*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ђ:;7
5
_output_shapes#
!:                  ђ:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :;7
5
_output_shapes#
!:                  ђ: 

_output_shapes
::2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:"

_output_shapes

:ђў: 

_output_shapes
::.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
█A
┐
__inference_standard_lstm_90940

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ђ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ђ2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ђ2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ђ2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ђ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ђ2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ђ2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_90855*
condR
while_cond_90854*e
output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   22
0TensorArrayV2Stack/TensorListStack/element_shapeЫ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm»
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ђ2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_3f2c4813-2d97-4e4a-9f8e-a03cf9683489*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ЅI
╦
(__inference_gpu_lstm_with_fallback_93500

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimё
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђў2

concat_1Р
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_2ff7a411-55d8-493a-b44a-0f62516d0e1b*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ПT
Б
&__forward_gpu_lstm_with_fallback_89408

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimђ

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimє
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1Т
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_eba80bf2-8573-41dd-9189-63b08d923346*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_89233_89409*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ЊТ
ы
9__inference___backward_gpu_lstm_with_fallback_88787_88963
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_0Ё
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  ђ2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  ђ*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationж
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђ2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeК
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2"
 gradients/Squeeze_1_grad/ReshapeЋ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  ђ2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeИ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ђ:         ђ:ђў2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  d2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeв
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeы
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЅ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђd2
gradients/concat_1_grad/ShapeЇ
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_1Ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_2Ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_3ј
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_4ј
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_5ј
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_6ј
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_7Ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_8Ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_9Ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_10Ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_11Ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_12Ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_13Ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_14Ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetЇ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђd2
gradients/concat_1_grad/SliceЊ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_1Њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_2Њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_3ћ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_4ћ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_5ћ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_6ћ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_7Њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_8Њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_9Ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_10Ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_11Ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_12Ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_13Ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_14Ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_1_grad/Shape╠
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_2_grad/Shape╠
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_3_grad/Shape╠
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_7_grad/ReshapeІ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_8_grad/ReshapeІ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_9_grad/ReshapeЇ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_10_grad/ReshapeЇ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_11_grad/ReshapeЇ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_12_grad/ReshapeЇ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_13_grad/ReshapeЇ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_14_grad/ReshapeЇ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationя
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationЯ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationЯ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationЯ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationр
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationр
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationр
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationр
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dђ2
gradients/split_grad/concatО
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
ђђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  d2

IdentityЃ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_1Ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dђ2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
ђђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ј
_input_shapes§
Щ:         ђ:                  ђ:         ђ:         ђ: :                  ђ::         ђ:         ђ::                  d:         ђ:         ђ:ђў::         ђ:         ђ: ::::::::: : : : *=
api_implements+)lstm_e17c2d77-07ab-454c-ae7e-32136674b925*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_88962*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ђ:;7
5
_output_shapes#
!:                  ђ:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :;7
5
_output_shapes#
!:                  ђ: 

_output_shapes
::2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:"

_output_shapes

:ђў: 

_output_shapes
::.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЊТ
ы
9__inference___backward_gpu_lstm_with_fallback_89233_89409
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_0Ё
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  ђ2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  ђ*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationж
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђ2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeК
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2"
 gradients/Squeeze_1_grad/ReshapeЋ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  ђ2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeИ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ђ:         ђ:ђў2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  d2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeв
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeы
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЅ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђd2
gradients/concat_1_grad/ShapeЇ
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_1Ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_2Ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_3ј
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_4ј
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_5ј
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_6ј
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_7Ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_8Ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_9Ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_10Ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_11Ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_12Ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_13Ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_14Ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetЇ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђd2
gradients/concat_1_grad/SliceЊ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_1Њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_2Њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_3ћ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_4ћ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_5ћ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_6ћ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_7Њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_8Њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_9Ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_10Ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_11Ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_12Ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_13Ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_14Ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_1_grad/Shape╠
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_2_grad/Shape╠
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_3_grad/Shape╠
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_7_grad/ReshapeІ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_8_grad/ReshapeІ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_9_grad/ReshapeЇ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_10_grad/ReshapeЇ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_11_grad/ReshapeЇ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_12_grad/ReshapeЇ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_13_grad/ReshapeЇ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_14_grad/ReshapeЇ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationя
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationЯ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationЯ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationЯ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationр
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationр
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationр
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationр
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dђ2
gradients/split_grad/concatО
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
ђђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  d2

IdentityЃ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_1Ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dђ2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
ђђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ј
_input_shapes§
Щ:         ђ:                  ђ:         ђ:         ђ: :                  ђ::         ђ:         ђ::                  d:         ђ:         ђ:ђў::         ђ:         ђ: ::::::::: : : : *=
api_implements+)lstm_eba80bf2-8573-41dd-9189-63b08d923346*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_89408*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ђ:;7
5
_output_shapes#
!:                  ђ:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :;7
5
_output_shapes#
!:                  ђ: 

_output_shapes
::2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:"

_output_shapes

:ђў: 

_output_shapes
::.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
█A
┐
__inference_standard_lstm_92478

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ђ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ђ2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ђ2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ђ2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ђ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ђ2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ђ2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_92393*
condR
while_cond_92392*e
output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   22
0TensorArrayV2Stack/TensorListStack/element_shapeЫ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm»
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ђ2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_8d2edc85-f410-4fff-b5d9-40de1296206c*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ЊТ
ы
9__inference___backward_gpu_lstm_with_fallback_94371_94547
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_0Ё
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  ђ2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  ђ*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationж
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђ2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeК
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2"
 gradients/Squeeze_1_grad/ReshapeЋ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  ђ2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeИ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ђ:         ђ:ђў2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  d2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeв
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeы
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЅ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђd2
gradients/concat_1_grad/ShapeЇ
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_1Ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_2Ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_3ј
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_4ј
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_5ј
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_6ј
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_7Ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_8Ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_9Ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_10Ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_11Ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_12Ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_13Ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_14Ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetЇ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђd2
gradients/concat_1_grad/SliceЊ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_1Њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_2Њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_3ћ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_4ћ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_5ћ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_6ћ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_7Њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_8Њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_9Ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_10Ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_11Ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_12Ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_13Ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_14Ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_1_grad/Shape╠
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_2_grad/Shape╠
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_3_grad/Shape╠
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_7_grad/ReshapeІ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_8_grad/ReshapeІ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_9_grad/ReshapeЇ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_10_grad/ReshapeЇ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_11_grad/ReshapeЇ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_12_grad/ReshapeЇ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_13_grad/ReshapeЇ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_14_grad/ReshapeЇ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationя
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationЯ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationЯ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationЯ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationр
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationр
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationр
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationр
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dђ2
gradients/split_grad/concatО
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
ђђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  d2

IdentityЃ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_1Ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dђ2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
ђђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ј
_input_shapes§
Щ:         ђ:                  ђ:         ђ:         ђ: :                  ђ::         ђ:         ђ::                  d:         ђ:         ђ:ђў::         ђ:         ђ: ::::::::: : : : *=
api_implements+)lstm_05821b9b-4280-4958-a318-4f288856fac1*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_94546*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ђ:;7
5
_output_shapes#
!:                  ђ:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :;7
5
_output_shapes#
!:                  ђ: 

_output_shapes
::2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:"

_output_shapes

:ђў: 

_output_shapes
::.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЅI
╦
(__inference_gpu_lstm_with_fallback_92124

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimё
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђў2

concat_1Р
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_451c757c-7777-468b-b630-5ad9b1d616bc*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
с
┤
$__inference_lstm_layer_call_fn_94560
inputs_0
unknown:	dђ
	unknown_0:
ђђ
	unknown_1:	ђ
identityѕбStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_894112
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
ё-
╬
while_body_89053
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ђ2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђ2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ђ2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ђ2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dђ:&	"
 
_output_shapes
:
ђђ:!


_output_shapes	
:ђ
ЅI
╦
(__inference_gpu_lstm_with_fallback_91034

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimё
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђў2

concat_1Р
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_3f2c4813-2d97-4e4a-9f8e-a03cf9683489*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
Р
ј
*__inference_sequential_layer_call_fn_92775

inputs
unknown:
╝дd
	unknown_0:	dђ
	unknown_1:
ђђ
	unknown_2:	ђ
	unknown_3:	ђ
	unknown_4:
identityѕбStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_912392
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:                  
 
_user_specified_nameinputs
П
▓
$__inference_lstm_layer_call_fn_94593

inputs
unknown:	dђ
	unknown_0:
ђђ
	unknown_1:	ђ
identityѕбStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_917122
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
░	
╝
while_cond_90854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_90854___redundant_placeholder03
/while_while_cond_90854___redundant_placeholder13
/while_while_cond_90854___redundant_placeholder23
/while_while_cond_90854___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ПT
Б
&__forward_gpu_lstm_with_fallback_94546

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimђ

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimє
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1Т
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_05821b9b-4280-4958-a318-4f288856fac1*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_94371_94547*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
░	
╝
while_cond_88606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_88606___redundant_placeholder03
/while_while_cond_88606___redundant_placeholder13
/while_while_cond_88606___redundant_placeholder23
/while_while_cond_88606___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ф#
╝
?__inference_lstm_layer_call_and_return_conditional_losses_93244
inputs_0/
read_readvariableop_resource:	dђ2
read_1_readvariableop_resource:
ђђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђ2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dђ2

IdentityЈ
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2М
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         ђ:                  ђ:         ђ:         ђ: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_929712
PartitionedCallи

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
ё-
╬
while_body_89510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ђ2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђ2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ђ2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ђ2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dђ:&	"
 
_output_shapes
:
ђђ:!


_output_shapes	
:ђ
¤

б
D__inference_embedding_layer_call_and_return_conditional_losses_90775

inputs*
embedding_lookup_90769:
╝дd
identityѕбembedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:                  2
Castё
embedding_lookupResourceGatherembedding_lookup_90769Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*)
_class
loc:@embedding_lookup/90769*4
_output_shapes"
 :                  d*
dtype02
embedding_lookupш
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@embedding_lookup/90769*4
_output_shapes"
 :                  d2
embedding_lookup/IdentityЕ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :                  d2
embedding_lookup/Identity_1ў
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*4
_output_shapes"
 :                  d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:                  : 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:                  
 
_user_specified_nameinputs
█A
┐
__inference_standard_lstm_89138

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ђ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ђ2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ђ2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ђ2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ђ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ђ2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ђ2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_89053*
condR
while_cond_89052*e
output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   22
0TensorArrayV2Stack/TensorListStack/element_shapeЫ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm»
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ђ2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_eba80bf2-8573-41dd-9189-63b08d923346*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ПT
Б
&__forward_gpu_lstm_with_fallback_89865

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimђ

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimє
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1Т
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_1576fc31-52f7-4a02-859f-9c40ef6744d6*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_89690_89866*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
█A
┐
__inference_standard_lstm_93841

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ђ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ђ2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ђ2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ђ2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ђ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ђ2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ђ2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_93756*
condR
while_cond_93755*e
output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   22
0TensorArrayV2Stack/TensorListStack/element_shapeЫ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm»
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ђ2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_f9446b38-faf0-47d8-96ff-af23f140a908*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ѕ9
┌
E__inference_sequential_layer_call_and_return_conditional_losses_92310

inputs4
 embedding_embedding_lookup_91866:
╝дd4
!lstm_read_readvariableop_resource:	dђ7
#lstm_read_1_readvariableop_resource:
ђђ2
#lstm_read_2_readvariableop_resource:	ђ7
$dense_matmul_readvariableop_resource:	ђ3
%dense_biasadd_readvariableop_resource:
identityѕбdense/BiasAdd/ReadVariableOpбdense/MatMul/ReadVariableOpбembedding/embedding_lookupбlstm/Read/ReadVariableOpбlstm/Read_1/ReadVariableOpбlstm/Read_2/ReadVariableOpz
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:                  2
embedding/CastХ
embedding/embedding_lookupResourceGather embedding_embedding_lookup_91866embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/91866*4
_output_shapes"
 :                  d*
dtype02
embedding/embedding_lookupЮ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/91866*4
_output_shapes"
 :                  d2%
#embedding/embedding_lookup/IdentityК
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :                  d2'
%embedding/embedding_lookup/Identity_1v

lstm/ShapeShape.embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2

lstm/Shape~
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm/strided_slice/stackѓ
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1ѓ
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2ђ
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_sliceg
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
lstm/zeros/mul/yђ
lstm/zeros/mulMullstm/strided_slice:output:0lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/muli
lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessm
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
lstm/zeros/packed/1Ќ
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros/packedi
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros/Constі

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*(
_output_shapes
:         ђ2

lstm/zerosk
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
lstm/zeros_1/mul/yє
lstm/zeros_1/mulMullstm/strided_slice:output:0lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/mulm
lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
lstm/zeros_1/Less/yЃ
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessq
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
lstm/zeros_1/packed/1Ю
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm/zeros_1/packedm
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm/zeros_1/Constњ
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђ2
lstm/zeros_1Ќ
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	dђ*
dtype02
lstm/Read/ReadVariableOpv
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	dђ2
lstm/Identityъ
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02
lstm/Read_1/ReadVariableOp}
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђ2
lstm/Identity_1Ў
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
lstm/Read_2/ReadVariableOpx
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
lstm/Identity_2ю
lstm/PartitionedCallPartitionedCall.embedding/embedding_lookup/Identity_1:output:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         ђ:                  ђ:         ђ:         ђ: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_920302
lstm/PartitionedCallа
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
dense/MatMul/ReadVariableOpю
dense/MatMulMatMullstm/PartitionedCall:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/MatMulъ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЎ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense/BiasAdds
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense/Sigmoidћ
IdentityIdentitydense/Sigmoid:y:0^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                  : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp:X T
0
_output_shapes
:                  
 
_user_specified_nameinputs
ПT
Б
&__forward_gpu_lstm_with_fallback_94111

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimђ

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimє
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1Т
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_f9446b38-faf0-47d8-96ff-af23f140a908*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_93936_94112*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ф#
╝
?__inference_lstm_layer_call_and_return_conditional_losses_93679
inputs_0/
read_readvariableop_resource:	dђ2
read_1_readvariableop_resource:
ђђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђ2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dђ2

IdentityЈ
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2М
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         ђ:                  ђ:         ђ:         ђ: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_934062
PartitionedCallи

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :                  d
"
_user_specified_name
inputs/0
ЅI
╦
(__inference_gpu_lstm_with_fallback_89689

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimё
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђў2

concat_1Р
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_1576fc31-52f7-4a02-859f-9c40ef6744d6*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
█A
┐
__inference_standard_lstm_94276

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ђ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ђ2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ђ2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ђ2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ђ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ђ2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ђ2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_94191*
condR
while_cond_94190*e
output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   22
0TensorArrayV2Stack/TensorListStack/element_shapeЫ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm»
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ђ2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_05821b9b-4280-4958-a318-4f288856fac1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ё-
╬
while_body_93756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ђ2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђ2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ђ2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ђ2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dђ:&	"
 
_output_shapes
:
ђђ:!


_output_shapes	
:ђ
░	
╝
while_cond_91944
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_91944___redundant_placeholder03
/while_while_cond_91944___redundant_placeholder13
/while_while_cond_91944___redundant_placeholder23
/while_while_cond_91944___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ЊТ
ы
9__inference___backward_gpu_lstm_with_fallback_93501_93677
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_0Ё
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  ђ2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  ђ*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationж
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђ2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeК
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2"
 gradients/Squeeze_1_grad/ReshapeЋ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  ђ2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeИ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ђ:         ђ:ђў2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  d2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeв
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeы
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЅ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђd2
gradients/concat_1_grad/ShapeЇ
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_1Ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_2Ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_3ј
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_4ј
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_5ј
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_6ј
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_7Ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_8Ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_9Ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_10Ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_11Ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_12Ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_13Ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_14Ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetЇ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђd2
gradients/concat_1_grad/SliceЊ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_1Њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_2Њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_3ћ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_4ћ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_5ћ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_6ћ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_7Њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_8Њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_9Ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_10Ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_11Ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_12Ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_13Ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_14Ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_1_grad/Shape╠
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_2_grad/Shape╠
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_3_grad/Shape╠
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_7_grad/ReshapeІ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_8_grad/ReshapeІ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_9_grad/ReshapeЇ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_10_grad/ReshapeЇ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_11_grad/ReshapeЇ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_12_grad/ReshapeЇ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_13_grad/ReshapeЇ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_14_grad/ReshapeЇ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationя
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationЯ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationЯ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationЯ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationр
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationр
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationр
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationр
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dђ2
gradients/split_grad/concatО
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
ђђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  d2

IdentityЃ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_1Ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dђ2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
ђђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ј
_input_shapes§
Щ:         ђ:                  ђ:         ђ:         ђ: :                  ђ::         ђ:         ђ::                  d:         ђ:         ђ:ђў::         ђ:         ђ: ::::::::: : : : *=
api_implements+)lstm_2ff7a411-55d8-493a-b44a-0f62516d0e1b*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_93676*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ђ:;7
5
_output_shapes#
!:                  ђ:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :;7
5
_output_shapes#
!:                  ђ: 

_output_shapes
::2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:"

_output_shapes

:ђў: 

_output_shapes
::.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ё-
╬
while_body_90855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ђ2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђ2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ђ2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ђ2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dђ:&	"
 
_output_shapes
:
ђђ:!


_output_shapes	
:ђ
б#
║
?__inference_lstm_layer_call_and_return_conditional_losses_89868

inputs/
read_readvariableop_resource:	dђ2
read_1_readvariableop_resource:
ђђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђ2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dђ2

IdentityЈ
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2Л
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         ђ:                  ђ:         ђ:         ђ: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_895952
PartitionedCallи

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
ё-
╬
while_body_94191
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ђ2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђ2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ђ2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ђ2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dђ:&	"
 
_output_shapes
:
ђђ:!


_output_shapes	
:ђ
█A
┐
__inference_standard_lstm_88692

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ђ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ђ2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ђ2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ђ2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ђ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ђ2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ђ2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_88607*
condR
while_cond_88606*e
output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   22
0TensorArrayV2Stack/TensorListStack/element_shapeЫ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm»
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ђ2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_e17c2d77-07ab-454c-ae7e-32136674b925*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ё-
╬
while_body_88607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ђ2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђ2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ђ2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ђ2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dђ:&	"
 
_output_shapes
:
ђђ:!


_output_shapes	
:ђ
ё-
╬
while_body_91945
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ђ2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђ2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ђ2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ђ2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dђ:&	"
 
_output_shapes
:
ђђ:!


_output_shapes	
:ђ
ё-
╬
while_body_92886
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ђ2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђ2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ђ2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ђ2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dђ:&	"
 
_output_shapes
:
ђђ:!


_output_shapes	
:ђ
ЊТ
ы
9__inference___backward_gpu_lstm_with_fallback_91035_91211
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_0Ё
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  ђ2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  ђ*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationж
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђ2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeК
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2"
 gradients/Squeeze_1_grad/ReshapeЋ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  ђ2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeИ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ђ:         ђ:ђў2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  d2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeв
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeы
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЅ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђd2
gradients/concat_1_grad/ShapeЇ
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_1Ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_2Ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_3ј
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_4ј
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_5ј
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_6ј
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_7Ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_8Ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_9Ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_10Ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_11Ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_12Ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_13Ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_14Ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetЇ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђd2
gradients/concat_1_grad/SliceЊ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_1Њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_2Њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_3ћ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_4ћ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_5ћ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_6ћ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_7Њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_8Њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_9Ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_10Ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_11Ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_12Ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_13Ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_14Ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_1_grad/Shape╠
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_2_grad/Shape╠
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_3_grad/Shape╠
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_7_grad/ReshapeІ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_8_grad/ReshapeІ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_9_grad/ReshapeЇ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_10_grad/ReshapeЇ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_11_grad/ReshapeЇ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_12_grad/ReshapeЇ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_13_grad/ReshapeЇ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_14_grad/ReshapeЇ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationя
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationЯ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationЯ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationЯ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationр
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationр
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationр
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationр
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dђ2
gradients/split_grad/concatО
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
ђђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  d2

IdentityЃ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_1Ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dђ2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
ђђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ј
_input_shapes§
Щ:         ђ:                  ђ:         ђ:         ђ: :                  ђ::         ђ:         ђ::                  d:         ђ:         ђ:ђў::         ђ:         ђ: ::::::::: : : : *=
api_implements+)lstm_3f2c4813-2d97-4e4a-9f8e-a03cf9683489*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_91210*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ђ:;7
5
_output_shapes#
!:                  ђ:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :;7
5
_output_shapes#
!:                  ђ: 

_output_shapes
::2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:"

_output_shapes

:ђў: 

_output_shapes
::.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Р
ј
*__inference_sequential_layer_call_fn_92792

inputs
unknown:
╝дd
	unknown_0:	dђ
	unknown_1:
ђђ
	unknown_2:	ђ
	unknown_3:	ђ
	unknown_4:
identityѕбStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_917672
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:                  
 
_user_specified_nameinputs
§
Ќ
*__inference_sequential_layer_call_fn_91254
embedding_input
unknown:
╝дd
	unknown_0:	dђ
	unknown_1:
ђђ
	unknown_2:	ђ
	unknown_3:	ђ
	unknown_4:
identityѕбStatefulPartitionedCall▓
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_912392
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:                  
)
_user_specified_nameembedding_input
ё-
╬
while_body_91354
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ђ2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђ2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ђ2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ђ2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dђ:&	"
 
_output_shapes
:
ђђ:!


_output_shapes	
:ђ
ЅI
╦
(__inference_gpu_lstm_with_fallback_94370

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimё
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђў2

concat_1Р
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_05821b9b-4280-4958-a318-4f288856fac1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ЅI
╦
(__inference_gpu_lstm_with_fallback_93065

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimё
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђў2

concat_1Р
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_aae8317e-99a1-4fbb-b16b-d9ebf6c24a47*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
█A
┐
__inference_standard_lstm_91439

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ђ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ђ2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ђ2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ђ2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ђ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ђ2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ђ2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_91354*
condR
while_cond_91353*e
output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   22
0TensorArrayV2Stack/TensorListStack/element_shapeЫ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm»
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ђ2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_ef62c802-0492-4c45-a1f1-bb44ee7f71d2*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ѕF
┬
 __inference__wrapped_model_88972
embedding_input?
+sequential_embedding_embedding_lookup_88528:
╝дd?
,sequential_lstm_read_readvariableop_resource:	dђB
.sequential_lstm_read_1_readvariableop_resource:
ђђ=
.sequential_lstm_read_2_readvariableop_resource:	ђB
/sequential_dense_matmul_readvariableop_resource:	ђ>
0sequential_dense_biasadd_readvariableop_resource:
identityѕб'sequential/dense/BiasAdd/ReadVariableOpб&sequential/dense/MatMul/ReadVariableOpб%sequential/embedding/embedding_lookupб#sequential/lstm/Read/ReadVariableOpб%sequential/lstm/Read_1/ReadVariableOpб%sequential/lstm/Read_2/ReadVariableOpЎ
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*0
_output_shapes
:                  2
sequential/embedding/Castь
%sequential/embedding/embedding_lookupResourceGather+sequential_embedding_embedding_lookup_88528sequential/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*>
_class4
20loc:@sequential/embedding/embedding_lookup/88528*4
_output_shapes"
 :                  d*
dtype02'
%sequential/embedding/embedding_lookup╔
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@sequential/embedding/embedding_lookup/88528*4
_output_shapes"
 :                  d20
.sequential/embedding/embedding_lookup/IdentityУ
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :                  d22
0sequential/embedding/embedding_lookup/Identity_1Ќ
sequential/lstm/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
sequential/lstm/Shapeћ
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#sequential/lstm/strided_slice/stackў
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_1ў
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_2┬
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sequential/lstm/strided_slice}
sequential/lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
sequential/lstm/zeros/mul/yг
sequential/lstm/zeros/mulMul&sequential/lstm/strided_slice:output:0$sequential/lstm/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/mul
sequential/lstm/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
sequential/lstm/zeros/Less/yД
sequential/lstm/zeros/LessLesssequential/lstm/zeros/mul:z:0%sequential/lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/LessЃ
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2 
sequential/lstm/zeros/packed/1├
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
sequential/lstm/zeros/packed
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros/ConstХ
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*(
_output_shapes
:         ђ2
sequential/lstm/zerosЂ
sequential/lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
sequential/lstm/zeros_1/mul/y▓
sequential/lstm/zeros_1/mulMul&sequential/lstm/strided_slice:output:0&sequential/lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/mulЃ
sequential/lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2 
sequential/lstm/zeros_1/Less/y»
sequential/lstm/zeros_1/LessLesssequential/lstm/zeros_1/mul:z:0'sequential/lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/LessЄ
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2"
 sequential/lstm/zeros_1/packed/1╔
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2 
sequential/lstm/zeros_1/packedЃ
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros_1/ConstЙ
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђ2
sequential/lstm/zeros_1И
#sequential/lstm/Read/ReadVariableOpReadVariableOp,sequential_lstm_read_readvariableop_resource*
_output_shapes
:	dђ*
dtype02%
#sequential/lstm/Read/ReadVariableOpЌ
sequential/lstm/IdentityIdentity+sequential/lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	dђ2
sequential/lstm/Identity┐
%sequential/lstm/Read_1/ReadVariableOpReadVariableOp.sequential_lstm_read_1_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02'
%sequential/lstm/Read_1/ReadVariableOpъ
sequential/lstm/Identity_1Identity-sequential/lstm/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђ2
sequential/lstm/Identity_1║
%sequential/lstm/Read_2/ReadVariableOpReadVariableOp.sequential_lstm_read_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02'
%sequential/lstm/Read_2/ReadVariableOpЎ
sequential/lstm/Identity_2Identity-sequential/lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2
sequential/lstm/Identity_2З
sequential/lstm/PartitionedCallPartitionedCall9sequential/embedding/embedding_lookup/Identity_1:output:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0!sequential/lstm/Identity:output:0#sequential/lstm/Identity_1:output:0#sequential/lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         ђ:                  ђ:         ђ:         ђ: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_886922!
sequential/lstm/PartitionedCall┴
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02(
&sequential/dense/MatMul/ReadVariableOp╚
sequential/dense/MatMulMatMul(sequential/lstm/PartitionedCall:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/dense/MatMul┐
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp┼
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential/dense/BiasAddћ
sequential/dense/SigmoidSigmoid!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:         2
sequential/dense/Sigmoidр
IdentityIdentitysequential/dense/Sigmoid:y:0(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup$^sequential/lstm/Read/ReadVariableOp&^sequential/lstm/Read_1/ReadVariableOp&^sequential/lstm/Read_2/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                  : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2J
#sequential/lstm/Read/ReadVariableOp#sequential/lstm/Read/ReadVariableOp2N
%sequential/lstm/Read_1/ReadVariableOp%sequential/lstm/Read_1/ReadVariableOp2N
%sequential/lstm/Read_2/ReadVariableOp%sequential/lstm/Read_2/ReadVariableOp:a ]
0
_output_shapes
:                  
)
_user_specified_nameembedding_input
░	
╝
while_cond_89052
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_89052___redundant_placeholder03
/while_while_cond_89052___redundant_placeholder13
/while_while_cond_89052___redundant_placeholder23
/while_while_cond_89052___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ј
і
E__inference_sequential_layer_call_and_return_conditional_losses_91837
embedding_input#
embedding_91821:
╝дd

lstm_91824:	dђ

lstm_91826:
ђђ

lstm_91828:	ђ
dense_91831:	ђ
dense_91833:
identityѕбdense/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallЎ
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_91821*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_907752#
!embedding/StatefulPartitionedCall░
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_91824
lstm_91826
lstm_91828*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_917122
lstm/StatefulPartitionedCallА
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_91831dense_91833*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_912322
dense/StatefulPartitionedCallП
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                  : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:a ]
0
_output_shapes
:                  
)
_user_specified_nameembedding_input
ЅI
╦
(__inference_gpu_lstm_with_fallback_88786

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimё
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђў2

concat_1Р
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_e17c2d77-07ab-454c-ae7e-32136674b925*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ЅI
╦
(__inference_gpu_lstm_with_fallback_93935

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimё
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђў2

concat_1Р
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_f9446b38-faf0-47d8-96ff-af23f140a908*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ПT
Б
&__forward_gpu_lstm_with_fallback_88962

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimђ

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimє
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1Т
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_e17c2d77-07ab-454c-ae7e-32136674b925*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_88787_88963*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
б#
║
?__inference_lstm_layer_call_and_return_conditional_losses_91213

inputs/
read_readvariableop_resource:	dђ2
read_1_readvariableop_resource:
ђђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђ2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dђ2

IdentityЈ
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2Л
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         ђ:                  ђ:         ђ:         ђ: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_909402
PartitionedCallи

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
█A
┐
__inference_standard_lstm_92971

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ђ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ђ2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ђ2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ђ2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ђ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ђ2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ђ2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_92886*
condR
while_cond_92885*e
output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   22
0TensorArrayV2Stack/TensorListStack/element_shapeЫ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm»
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ђ2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_aae8317e-99a1-4fbb-b16b-d9ebf6c24a47*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
а

)__inference_embedding_layer_call_fn_92809

inputs
unknown:
╝дd
identityѕбStatefulPartitionedCallЗ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_907752
StatefulPartitionedCallЏ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :                  d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:                  : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:                  
 
_user_specified_nameinputs
б#
║
?__inference_lstm_layer_call_and_return_conditional_losses_91712

inputs/
read_readvariableop_resource:	dђ2
read_1_readvariableop_resource:
ђђ-
read_2_readvariableop_resource:	ђ

identity_3ѕбRead/ReadVariableOpбRead_1/ReadVariableOpбRead_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros/packed/1Ѓ
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:         ђ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :У2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :ђ2
zeros_1/packed/1Ѕ
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:         ђ2	
zeros_1ѕ
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	dђ*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	dђ2

IdentityЈ
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
ђђ*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
ђђ2

Identity_1і
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:ђ2

Identity_2Л
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *s
_output_shapesa
_:         ђ:                  ђ:         ђ:         ђ: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8ѓ *(
f#R!
__inference_standard_lstm_914392
PartitionedCallи

Identity_3IdentityPartitionedCall:output:0^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:         ђ2

Identity_3"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  d: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs
§
Ќ
*__inference_sequential_layer_call_fn_91799
embedding_input
unknown:
╝дd
	unknown_0:	dђ
	unknown_1:
ђђ
	unknown_2:	ђ
	unknown_3:	ђ
	unknown_4:
identityѕбStatefulPartitionedCall▓
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8ѓ *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_917672
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                  : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:                  
)
_user_specified_nameembedding_input
«

Ы
@__inference_dense_layer_call_and_return_conditional_losses_91232

inputs1
matmul_readvariableop_resource:	ђ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidљ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђ
 
_user_specified_nameinputs
ПT
Б
&__forward_gpu_lstm_with_fallback_92300

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimђ

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimє
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1Т
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_451c757c-7777-468b-b630-5ad9b1d616bc*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_92125_92301*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ё-
╬
while_body_93321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ђ2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђ2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ђ2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ђ2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dђ:&	"
 
_output_shapes
:
ђђ:!


_output_shapes	
:ђ
ЅI
╦
(__inference_gpu_lstm_with_fallback_91533

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimё
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђў2

concat_1Р
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_ef62c802-0492-4c45-a1f1-bb44ee7f71d2*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
Ј
і
E__inference_sequential_layer_call_and_return_conditional_losses_91818
embedding_input#
embedding_91802:
╝дd

lstm_91805:	dђ

lstm_91807:
ђђ

lstm_91809:	ђ
dense_91812:	ђ
dense_91814:
identityѕбdense/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallЎ
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_91802*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_907752#
!embedding/StatefulPartitionedCall░
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_91805
lstm_91807
lstm_91809*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_912132
lstm/StatefulPartitionedCallА
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_91812dense_91814*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_912322
dense/StatefulPartitionedCallП
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                  : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:a ]
0
_output_shapes
:                  
)
_user_specified_nameembedding_input
г\
Є
!__inference__traced_restore_94772
file_prefix9
%assignvariableop_embedding_embeddings:
╝дd2
assignvariableop_1_dense_kernel:	ђ+
assignvariableop_2_dense_bias:)
assignvariableop_3_rmsprop_iter:	 *
 assignvariableop_4_rmsprop_decay: 2
(assignvariableop_5_rmsprop_learning_rate: -
#assignvariableop_6_rmsprop_momentum: (
assignvariableop_7_rmsprop_rho: ;
(assignvariableop_8_lstm_lstm_cell_kernel:	dђF
2assignvariableop_9_lstm_lstm_cell_recurrent_kernel:
ђђ6
'assignvariableop_10_lstm_lstm_cell_bias:	ђ#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: H
4assignvariableop_15_rmsprop_embedding_embeddings_rms:
╝дd?
,assignvariableop_16_rmsprop_dense_kernel_rms:	ђ8
*assignvariableop_17_rmsprop_dense_bias_rms:H
5assignvariableop_18_rmsprop_lstm_lstm_cell_kernel_rms:	dђS
?assignvariableop_19_rmsprop_lstm_lstm_cell_recurrent_kernel_rms:
ђђB
3assignvariableop_20_rmsprop_lstm_lstm_cell_bias_rms:	ђ
identity_22ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_3бAssignVariableOp_4бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9Ќ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Б

valueЎ
Bќ
B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/2/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/1/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/2/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBNtrainable_variables/3/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names║
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЎ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityц
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1ц
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2б
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3ц
AssignVariableOp_3AssignVariableOpassignvariableop_3_rmsprop_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ц
AssignVariableOp_4AssignVariableOp assignvariableop_4_rmsprop_decayIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Г
AssignVariableOp_5AssignVariableOp(assignvariableop_5_rmsprop_learning_rateIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6е
AssignVariableOp_6AssignVariableOp#assignvariableop_6_rmsprop_momentumIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Б
AssignVariableOp_7AssignVariableOpassignvariableop_7_rmsprop_rhoIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Г
AssignVariableOp_8AssignVariableOp(assignvariableop_8_lstm_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9и
AssignVariableOp_9AssignVariableOp2assignvariableop_9_lstm_lstm_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10»
AssignVariableOp_10AssignVariableOp'assignvariableop_10_lstm_lstm_cell_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11А
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12А
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Б
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Б
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15╝
AssignVariableOp_15AssignVariableOp4assignvariableop_15_rmsprop_embedding_embeddings_rmsIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16┤
AssignVariableOp_16AssignVariableOp,assignvariableop_16_rmsprop_dense_kernel_rmsIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17▓
AssignVariableOp_17AssignVariableOp*assignvariableop_17_rmsprop_dense_bias_rmsIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18й
AssignVariableOp_18AssignVariableOp5assignvariableop_18_rmsprop_lstm_lstm_cell_kernel_rmsIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19К
AssignVariableOp_19AssignVariableOp?assignvariableop_19_rmsprop_lstm_lstm_cell_recurrent_kernel_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20╗
AssignVariableOp_20AssignVariableOp3assignvariableop_20_rmsprop_lstm_lstm_cell_bias_rmsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpг
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21Ъ
Identity_22IdentityIdentity_21:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_22"#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ПT
Б
&__forward_gpu_lstm_with_fallback_92748

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimђ

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimє
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1Т
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_8d2edc85-f410-4fff-b5d9-40de1296206c*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_92573_92749*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
З
Ђ
E__inference_sequential_layer_call_and_return_conditional_losses_91767

inputs#
embedding_91751:
╝дd

lstm_91754:	dђ

lstm_91756:
ђђ

lstm_91758:	ђ
dense_91761:	ђ
dense_91763:
identityѕбdense/StatefulPartitionedCallб!embedding/StatefulPartitionedCallбlstm/StatefulPartitionedCallљ
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_91751*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :                  d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_907752#
!embedding/StatefulPartitionedCall░
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_91754
lstm_91756
lstm_91758*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_917122
lstm/StatefulPartitionedCallА
dense/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0dense_91761dense_91763*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8ѓ *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_912322
dense/StatefulPartitionedCallП
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:                  : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
0
_output_shapes
:                  
 
_user_specified_nameinputs
ЊТ
ы
9__inference___backward_gpu_lstm_with_fallback_89690_89866
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_0Ё
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  ђ2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  ђ*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationж
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђ2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeК
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2"
 gradients/Squeeze_1_grad/ReshapeЋ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  ђ2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeИ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ђ:         ђ:ђў2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  d2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeв
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeы
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЅ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђd2
gradients/concat_1_grad/ShapeЇ
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_1Ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_2Ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_3ј
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_4ј
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_5ј
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_6ј
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_7Ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_8Ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_9Ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_10Ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_11Ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_12Ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_13Ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_14Ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetЇ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђd2
gradients/concat_1_grad/SliceЊ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_1Њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_2Њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_3ћ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_4ћ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_5ћ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_6ћ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_7Њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_8Њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_9Ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_10Ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_11Ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_12Ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_13Ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_14Ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_1_grad/Shape╠
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_2_grad/Shape╠
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_3_grad/Shape╠
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_7_grad/ReshapeІ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_8_grad/ReshapeІ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_9_grad/ReshapeЇ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_10_grad/ReshapeЇ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_11_grad/ReshapeЇ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_12_grad/ReshapeЇ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_13_grad/ReshapeЇ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_14_grad/ReshapeЇ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationя
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationЯ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationЯ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationЯ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationр
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationр
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationр
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationр
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dђ2
gradients/split_grad/concatО
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
ђђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  d2

IdentityЃ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_1Ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dђ2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
ђђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ј
_input_shapes§
Щ:         ђ:                  ђ:         ђ:         ђ: :                  ђ::         ђ:         ђ::                  d:         ђ:         ђ:ђў::         ђ:         ђ: ::::::::: : : : *=
api_implements+)lstm_1576fc31-52f7-4a02-859f-9c40ef6744d6*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_89865*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ђ:;7
5
_output_shapes#
!:                  ђ:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :;7
5
_output_shapes#
!:                  ђ: 

_output_shapes
::2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:"

_output_shapes

:ђў: 

_output_shapes
::.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
█A
┐
__inference_standard_lstm_92030

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Р
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЁ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         2
TensorArrayV2/element_shape░
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2┐
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeЭ
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2Ч
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         ђ2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         ђ2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:         ђ2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim├
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
split`
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:         ђ2	
Sigmoidd
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:         ђ2
	Sigmoid_1[
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:         ђ2
mulW
TanhTanhsplit:output:2*
T0*(
_output_shapes
:         ђ2
Tanh_
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:         ђ2
mul_1^
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:         ђ2
add_1d
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:         ђ2
	Sigmoid_2V
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:         ђ2
Tanh_1c
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
mul_2Ј
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   2
TensorArrayV2_1/element_shapeХ
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterд
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ* 
_read_only_resource_inputs
 *
bodyR
while_body_91945*
condR
while_cond_91944*e
output_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ*
parallel_iterations 2
whileх
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    ђ   22
0TensorArrayV2Stack/TensorListStack/element_shapeЫ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:                  ђ*
element_dtype02$
"TensorArrayV2Stack/TensorListStackЂ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2Џ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm»
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ђ?2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:         ђ2

Identity_2g

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_451c757c-7777-468b-b630-5ad9b1d616bc*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ЅI
╦
(__inference_gpu_lstm_with_fallback_89232

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimё
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђў2

concat_1Р
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_eba80bf2-8573-41dd-9189-63b08d923346*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
ЊТ
ы
9__inference___backward_gpu_lstm_with_fallback_92125_92301
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_0Ё
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  ђ2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  ђ*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationж
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђ2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeК
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2"
 gradients/Squeeze_1_grad/ReshapeЋ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  ђ2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeИ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ђ:         ђ:ђў2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  d2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeв
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeы
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЅ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђd2
gradients/concat_1_grad/ShapeЇ
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_1Ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_2Ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_3ј
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_4ј
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_5ј
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_6ј
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_7Ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_8Ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_9Ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_10Ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_11Ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_12Ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_13Ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_14Ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetЇ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђd2
gradients/concat_1_grad/SliceЊ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_1Њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_2Њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_3ћ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_4ћ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_5ћ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_6ћ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_7Њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_8Њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_9Ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_10Ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_11Ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_12Ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_13Ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_14Ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_1_grad/Shape╠
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_2_grad/Shape╠
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_3_grad/Shape╠
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_7_grad/ReshapeІ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_8_grad/ReshapeІ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_9_grad/ReshapeЇ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_10_grad/ReshapeЇ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_11_grad/ReshapeЇ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_12_grad/ReshapeЇ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_13_grad/ReshapeЇ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_14_grad/ReshapeЇ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationя
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationЯ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationЯ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationЯ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationр
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationр
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationр
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationр
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dђ2
gradients/split_grad/concatО
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
ђђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  d2

IdentityЃ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_1Ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dђ2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
ђђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ј
_input_shapes§
Щ:         ђ:                  ђ:         ђ:         ђ: :                  ђ::         ђ:         ђ::                  d:         ђ:         ђ:ђў::         ђ:         ђ: ::::::::: : : : *=
api_implements+)lstm_451c757c-7777-468b-b630-5ad9b1d616bc*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_92300*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ђ:;7
5
_output_shapes#
!:                  ђ:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :;7
5
_output_shapes#
!:                  ђ: 

_output_shapes
::2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:"

_output_shapes

:ђў: 

_output_shapes
::.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
░	
╝
while_cond_92885
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_92885___redundant_placeholder03
/while_while_cond_92885___redundant_placeholder13
/while_while_cond_92885___redundant_placeholder23
/while_while_cond_92885___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ЊТ
ы
9__inference___backward_gpu_lstm_with_fallback_93936_94112
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5ѕv
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_0Ё
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:                  ђ2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_2x
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:         ђ2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4Б
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeй
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         25
3gradients/strided_slice_grad/StridedSliceGrad/begin░
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endИ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides▄
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:                  ђ*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad╠
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationж
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  ђ2&
$gradients/transpose_9_grad/transposeЉ
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/ShapeК
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2 
gradients/Squeeze_grad/ReshapeЌ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shape═
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:         ђ2"
 gradients/Squeeze_1_grad/ReshapeЋ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:                  ђ2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeИ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:                  d:         ђ:         ђ:ђў2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop─
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation 
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :                  d2$
"gradients/transpose_grad/transposeў
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeв
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2#
!gradients/ExpandDims_grad/Reshapeъ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeы
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:         ђ2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rank╣
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЅ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђd2
gradients/concat_1_grad/ShapeЇ
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_1Ї
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_2Ї
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:ђd2!
gradients/concat_1_grad/Shape_3ј
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_4ј
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_5ј
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_6ј
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:ђђ2!
gradients/concat_1_grad/Shape_7Ї
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_8Ї
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/concat_1_grad/Shape_9Ј
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_10Ј
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_11Ј
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_12Ј
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_13Ј
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_14Ј
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ђ2"
 gradients/concat_1_grad/Shape_15а
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetЇ
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђd2
gradients/concat_1_grad/SliceЊ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_1Њ
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_2Њ
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:ђd2!
gradients/concat_1_grad/Slice_3ћ
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_4ћ
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_5ћ
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_6ћ
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:ђђ2!
gradients/concat_1_grad/Slice_7Њ
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_8Њ
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:ђ2!
gradients/concat_1_grad/Slice_9Ќ
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_10Ќ
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_11Ќ
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_12Ќ
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_13Ќ
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_14Ќ
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:ђ2"
 gradients/concat_1_grad/Slice_15Ї
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2
gradients/Reshape_grad/Shape─
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2 
gradients/Reshape_grad/ReshapeЉ
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_1_grad/Shape╠
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_1_grad/ReshapeЉ
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_2_grad/Shape╠
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_2_grad/ReshapeЉ
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   d   2 
gradients/Reshape_3_grad/Shape╠
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	ђd2"
 gradients/Reshape_3_grad/ReshapeЉ
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_4_grad/Shape═
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_4_grad/ReshapeЉ
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_5_grad/Shape═
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_5_grad/ReshapeЉ
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_6_grad/Shape═
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_6_grad/ReshapeЉ
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"ђ   ђ   2 
gradients/Reshape_7_grad/Shape═
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
ђђ2"
 gradients/Reshape_7_grad/ReshapeІ
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_8_grad/Shape╚
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_8_grad/ReshapeІ
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2 
gradients/Reshape_9_grad/Shape╚
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2"
 gradients/Reshape_9_grad/ReshapeЇ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_10_grad/Shape╠
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_10_grad/ReshapeЇ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_11_grad/Shape╠
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_11_grad/ReshapeЇ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_12_grad/Shape╠
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_12_grad/ReshapeЇ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_13_grad/Shape╠
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_13_grad/ReshapeЇ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_14_grad/Shape╠
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_14_grad/ReshapeЇ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2!
gradients/Reshape_15_grad/Shape╠
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:ђ2#
!gradients/Reshape_15_grad/Reshape╠
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationя
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_1_grad/transpose╠
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationЯ
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_2_grad/transpose╠
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationЯ
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_3_grad/transpose╠
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationЯ
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	dђ2&
$gradients/transpose_4_grad/transpose╠
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationр
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_5_grad/transpose╠
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationр
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_6_grad/transpose╠
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationр
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_7_grad/transpose╠
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationр
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
ђђ2&
$gradients/transpose_8_grad/transposeѕ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ђ2
gradients/split_2_grad/concat╬
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	dђ2
gradients/split_grad/concatО
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
ђђ2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank»
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЁ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/ShapeЅ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:ђ2
gradients/concat_grad/Shape_1­
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetы
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Sliceэ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:ђ2
gradients/concat_grad/Slice_1Є
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :                  d2

IdentityЃ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_1Ё

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	dђ2

Identity_3w

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
ђђ2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:ђ2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ј
_input_shapes§
Щ:         ђ:                  ђ:         ђ:         ђ: :                  ђ::         ђ:         ђ::                  d:         ђ:         ђ:ђў::         ђ:         ђ: ::::::::: : : : *=
api_implements+)lstm_f9446b38-faf0-47d8-96ff-af23f140a908*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_94111*
go_backwards( *

time_major( :. *
(
_output_shapes
:         ђ:;7
5
_output_shapes#
!:                  ђ:.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :;7
5
_output_shapes#
!:                  ђ: 

_output_shapes
::2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:	

_output_shapes
:::
6
4
_output_shapes"
 :                  d:2.
,
_output_shapes
:         ђ:2.
,
_output_shapes
:         ђ:"

_output_shapes

:ђў: 

_output_shapes
::.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
░	
╝
while_cond_93320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_93320___redundant_placeholder03
/while_while_cond_93320___redundant_placeholder13
/while_while_cond_93320___redundant_placeholder23
/while_while_cond_93320___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ПT
Б
&__forward_gpu_lstm_with_fallback_91709

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dimђ

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimє
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisљ

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1Т
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_ef62c802-0492-4c45-a1f1-bb44ee7f71d2*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_91534_91710*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
░	
╝
while_cond_92392
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_92392___redundant_placeholder03
/while_while_cond_92392___redundant_placeholder13
/while_while_cond_92392___redundant_placeholder23
/while_while_cond_92392___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ё-
╬
while_body_92393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias├
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeМ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         d*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemб
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMulЋ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ђ2
while/MatMul_1ё
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:         ђ2
	while/addЂ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:         ђ2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim█
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:         ђ:         ђ:         ђ:         ђ*
	num_split2
while/splitr
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:         ђ2
while/Sigmoidv
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_1z
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:         ђ2
	while/muli

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:         ђ2

while/Tanhw
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_1v
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:         ђ2
while/add_1v
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:         ђ2
while/Sigmoid_2h
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Tanh_1{
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:         ђ2
while/mul_2М
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_2/yo
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: 2
while/add_2`
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_3/yv
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: 2
while/add_3^
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 2
while/Identity_2Ї
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_4t
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:         ђ2
while/Identity_5"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"е
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :         ђ:         ђ: : :	dђ:
ђђ:ђ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	dђ:&	"
 
_output_shapes
:
ђђ:!


_output_shapes	
:ђ
ЅI
╦
(__inference_gpu_lstm_with_fallback_92572

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4ѕu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permЃ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  d2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:         ђ2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimё
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:         ђ2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimЋ
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	dђ:	dђ:	dђ:	dђ*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dimЕ
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
ђђ:
ђђ:
ђђ:
ђђ*
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:ђ*
dtype0*
valueBђ*    2

zeros_like\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis|
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ђ2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim░
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:ђ:ђ:ђ:ђ:ђ:ђ:ђ:ђ*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm|
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:ђd2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm|
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm|
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm|
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	ђd2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:ђd2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_5i
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_6i
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_7i
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
ђђ2
transpose_8i
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:ђђ2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:ђ2
	Reshape_9k

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_11k

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_12k

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_13k

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_14k

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:ђ2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisг
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:ђў2

concat_1Р
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:                  ђ:         ђ:         ђ:2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2э
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         ђ*
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permЋ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*5
_output_shapes#
!:                  ђ2
transpose_9|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2	
Squeezeђ
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:         ђ*
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:         ђ2

Identityu

Identity_1Identitytranspose_9:y:0*
T0*5
_output_shapes#
!:                  ђ2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:         ђ2

Identity_2k

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:         ђ2

Identity_3W

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:                  d:         ђ:         ђ:	dђ:
ђђ:ђ*=
api_implements+)lstm_8d2edc85-f410-4fff-b5d9-40de1296206c*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :                  d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_h:PL
(
_output_shapes
:         ђ
 
_user_specified_nameinit_c:GC

_output_shapes
:	dђ
 
_user_specified_namekernel:RN
 
_output_shapes
:
ђђ
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:ђ

_user_specified_namebias
░	
╝
while_cond_91353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_91353___redundant_placeholder03
/while_while_cond_91353___redundant_placeholder13
/while_while_cond_91353___redundant_placeholder23
/while_while_cond_91353___redundant_placeholder3
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :         ђ:         ђ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:         ђ:.*
(
_output_shapes
:         ђ:

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┴
serving_defaultГ
T
embedding_inputA
!serving_default_embedding_input:0                  9
dense0
StatefulPartitionedCall:0         tensorflow/serving/predict:Й░
Ж+
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api
	
signatures
*S&call_and_return_all_conditional_losses
T__call__
U_default_save_signature"ф)
_tf_keras_sequentialІ){"name": "sequential", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 21308, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 11, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, null]}, "float32", "embedding_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_input"}, "shared_object_id": 0}, {"class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 21308, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 1}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "shared_object_id": 2}, {"class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10}]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "acc", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 12}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "RMSprop", "config": {"name": "RMSprop", "learning_rate": 0.0010000000474974513, "decay": 0.0, "rho": 0.8999999761581421, "momentum": 0.0, "epsilon": 1e-07, "centered": false}}}}
▄


embeddings
regularization_losses
trainable_variables
	variables
	keras_api
*V&call_and_return_all_conditional_losses
W__call__"й
_tf_keras_layerБ{"name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 21308, "output_dim": 100, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 1}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}}
▓
cell

state_spec
regularization_losses
trainable_variables
	variables
	keras_api
*X&call_and_return_all_conditional_losses
Y__call__"Ѕ
_tf_keras_rnn_layerв
{"name": "lstm", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTM", "config": {"name": "lstm", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 7, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 100]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 13}], "build_input_shape": {"class_name": "TensorShape", "items": [null, null, 100]}}
╬

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
*Z&call_and_return_all_conditional_losses
[__call__"Е
_tf_keras_layerЈ{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
ћ
iter
	decay
learning_rate
momentum
rho	
rmsM	rmsN	rmsO	 rmsP	!rmsQ	"rmsR"
	optimizer
 "
trackable_list_wrapper
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
J

0
 1
!2
"3
4
5"
trackable_list_wrapper
╩
regularization_losses
#layer_regularization_losses

$layers
trainable_variables
%non_trainable_variables
&layer_metrics
	variables
'metrics
T__call__
U_default_save_signature
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
,
\serving_default"
signature_map
(:&
╝дd2embedding/embeddings
 "
trackable_list_wrapper
'

0"
trackable_list_wrapper
'

0"
trackable_list_wrapper
Г
regularization_losses
(layer_regularization_losses

)layers
trainable_variables
*non_trainable_variables
+layer_metrics
	variables
,metrics
W__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
Љ	
-
state_size

 kernel
!recurrent_kernel
"bias
.regularization_losses
/trainable_variables
0	variables
1	keras_api
*]&call_and_return_all_conditional_losses
^__call__"к
_tf_keras_layerг{"name": "lstm_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "LSTMCell", "config": {"name": "lstm_cell", "trainable": true, "dtype": "float32", "units": 128, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2}, "shared_object_id": 6}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
╣
regularization_losses

2states
3layer_regularization_losses

4layers
trainable_variables
5non_trainable_variables
6layer_metrics
	variables
7metrics
Y__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
:	ђ2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Г
regularization_losses
8layer_regularization_losses

9layers
trainable_variables
:non_trainable_variables
;layer_metrics
	variables
<metrics
[__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
(:&	dђ2lstm/lstm_cell/kernel
3:1
ђђ2lstm/lstm_cell/recurrent_kernel
": ђ2lstm/lstm_cell/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
5
 0
!1
"2"
trackable_list_wrapper
Г
.regularization_losses
?layer_regularization_losses

@layers
/trainable_variables
Anon_trainable_variables
Blayer_metrics
0	variables
Cmetrics
^__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
н
	Dtotal
	Ecount
F	variables
G	keras_api"Ю
_tf_keras_metricѓ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 15}
ѕ
	Htotal
	Icount
J
_fn_kwargs
K	variables
L	keras_api"┴
_tf_keras_metricд{"class_name": "MeanMetricWrapper", "name": "acc", "dtype": "float32", "config": {"name": "acc", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 12}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
D0
E1"
trackable_list_wrapper
-
F	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
H0
I1"
trackable_list_wrapper
-
K	variables"
_generic_user_object
2:0
╝дd2 RMSprop/embedding/embeddings/rms
):'	ђ2RMSprop/dense/kernel/rms
": 2RMSprop/dense/bias/rms
2:0	dђ2!RMSprop/lstm/lstm_cell/kernel/rms
=:;
ђђ2+RMSprop/lstm/lstm_cell/recurrent_kernel/rms
,:*ђ2RMSprop/lstm/lstm_cell/bias/rms
Р2▀
E__inference_sequential_layer_call_and_return_conditional_losses_92310
E__inference_sequential_layer_call_and_return_conditional_losses_92758
E__inference_sequential_layer_call_and_return_conditional_losses_91818
E__inference_sequential_layer_call_and_return_conditional_losses_91837└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ш2з
*__inference_sequential_layer_call_fn_91254
*__inference_sequential_layer_call_fn_92775
*__inference_sequential_layer_call_fn_92792
*__inference_sequential_layer_call_fn_91799└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
№2В
 __inference__wrapped_model_88972К
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *7б4
2і/
embedding_input                  
Ь2в
D__inference_embedding_layer_call_and_return_conditional_losses_92802б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_embedding_layer_call_fn_92809б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
▀2▄
?__inference_lstm_layer_call_and_return_conditional_losses_93244
?__inference_lstm_layer_call_and_return_conditional_losses_93679
?__inference_lstm_layer_call_and_return_conditional_losses_94114
?__inference_lstm_layer_call_and_return_conditional_losses_94549Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
з2­
$__inference_lstm_layer_call_fn_94560
$__inference_lstm_layer_call_fn_94571
$__inference_lstm_layer_call_fn_94582
$__inference_lstm_layer_call_fn_94593Н
╠▓╚
FullArgSpecB
args:џ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsџ

 
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
Ж2у
@__inference_dense_layer_call_and_return_conditional_losses_94604б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
¤2╠
%__inference_dense_layer_call_fn_94613б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
мB¤
#__inference_signature_wrapper_91862embedding_input"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
─2┴Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
─2┴Й
х▓▒
FullArgSpec3
args+џ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsџ
p 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 ъ
 __inference__wrapped_model_88972z
 !"Aб>
7б4
2і/
embedding_input                  
ф "-ф*
(
denseі
dense         А
@__inference_dense_layer_call_and_return_conditional_losses_94604]0б-
&б#
!і
inputs         ђ
ф "%б"
і
0         
џ y
%__inference_dense_layer_call_fn_94613P0б-
&б#
!і
inputs         ђ
ф "і         ╣
D__inference_embedding_layer_call_and_return_conditional_losses_92802q
8б5
.б+
)і&
inputs                  
ф "2б/
(і%
0                  d
џ Љ
)__inference_embedding_layer_call_fn_92809d
8б5
.б+
)і&
inputs                  
ф "%і"                  d┴
?__inference_lstm_layer_call_and_return_conditional_losses_93244~ !"OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "&б#
і
0         ђ
џ ┴
?__inference_lstm_layer_call_and_return_conditional_losses_93679~ !"OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "&б#
і
0         ђ
џ ║
?__inference_lstm_layer_call_and_return_conditional_losses_94114w !"HбE
>б;
-і*
inputs                  d

 
p 

 
ф "&б#
і
0         ђ
џ ║
?__inference_lstm_layer_call_and_return_conditional_losses_94549w !"HбE
>б;
-і*
inputs                  d

 
p

 
ф "&б#
і
0         ђ
џ Ў
$__inference_lstm_layer_call_fn_94560q !"OбL
EбB
4џ1
/і,
inputs/0                  d

 
p 

 
ф "і         ђЎ
$__inference_lstm_layer_call_fn_94571q !"OбL
EбB
4џ1
/і,
inputs/0                  d

 
p

 
ф "і         ђњ
$__inference_lstm_layer_call_fn_94582j !"HбE
>б;
-і*
inputs                  d

 
p 

 
ф "і         ђњ
$__inference_lstm_layer_call_fn_94593j !"HбE
>б;
-і*
inputs                  d

 
p

 
ф "і         ђ├
E__inference_sequential_layer_call_and_return_conditional_losses_91818z
 !"IбF
?б<
2і/
embedding_input                  
p 

 
ф "%б"
і
0         
џ ├
E__inference_sequential_layer_call_and_return_conditional_losses_91837z
 !"IбF
?б<
2і/
embedding_input                  
p

 
ф "%б"
і
0         
џ ║
E__inference_sequential_layer_call_and_return_conditional_losses_92310q
 !"@б=
6б3
)і&
inputs                  
p 

 
ф "%б"
і
0         
џ ║
E__inference_sequential_layer_call_and_return_conditional_losses_92758q
 !"@б=
6б3
)і&
inputs                  
p

 
ф "%б"
і
0         
џ Џ
*__inference_sequential_layer_call_fn_91254m
 !"IбF
?б<
2і/
embedding_input                  
p 

 
ф "і         Џ
*__inference_sequential_layer_call_fn_91799m
 !"IбF
?б<
2і/
embedding_input                  
p

 
ф "і         њ
*__inference_sequential_layer_call_fn_92775d
 !"@б=
6б3
)і&
inputs                  
p 

 
ф "і         њ
*__inference_sequential_layer_call_fn_92792d
 !"@б=
6б3
)і&
inputs                  
p

 
ф "і         х
#__inference_signature_wrapper_91862Ї
 !"TбQ
б 
JфG
E
embedding_input2і/
embedding_input                  "-ф*
(
denseі
dense         