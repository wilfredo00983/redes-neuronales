ош4
≈Ц
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
≥
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
dtypetypeИ
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Њ
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
executor_typestring И
Ъ
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
ц
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
Ђ
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type*
output_handleКйelement_dtype"
element_dtypetype"

shape_typetype:
2	
Ъ
TensorListReserve
element_shape"
shape_type
num_elements#
handleКйelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.02v2.6.0-rc2-32-g919f693420e8Эг3
Ж
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
†Н *%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
†Н *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

: *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
З
lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*&
shared_namelstm/lstm_cell/kernel
А
)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel*
_output_shapes
:	 А*
dtype0
Ы
lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*0
shared_name!lstm/lstm_cell/recurrent_kernel
Ф
3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes
:	 А*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:А*
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
Ф
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
†Н *,
shared_nameAdam/embedding/embeddings/m
Н
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m* 
_output_shapes
:
†Н *
dtype0
В
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

: *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
Х
Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*-
shared_nameAdam/lstm/lstm_cell/kernel/m
О
0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m*
_output_shapes
:	 А*
dtype0
©
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
Ґ
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m*
_output_shapes
:	 А*
dtype0
Н
Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameAdam/lstm/lstm_cell/bias/m
Ж
.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:А*
dtype0
Ф
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
†Н *,
shared_nameAdam/embedding/embeddings/v
Н
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v* 
_output_shapes
:
†Н *
dtype0
В
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

: *
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
Х
Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*-
shared_nameAdam/lstm/lstm_cell/kernel/v
О
0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v*
_output_shapes
:	 А*
dtype0
©
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 А*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
Ґ
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v*
_output_shapes
:	 А*
dtype0
Н
Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*+
shared_nameAdam/lstm/lstm_cell/bias/v
Ж
.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:А*
dtype0

NoOpNoOp
є*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ф)
valueк)Bз) Bа)
у
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
b

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
l
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
ђ
 iter

!beta_1

"beta_2
	#decay
$learning_ratemWmXmY%mZ&m['m\v]v^v_%v`&va'vb
*
0
%1
&2
'3
4
5
*
0
%1
&2
'3
4
5
 
≠
(non_trainable_variables
)layer_metrics
	variables
*metrics
+layer_regularization_losses

,layers
trainable_variables
regularization_losses
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
≠
-non_trainable_variables
trainable_variables
.layer_metrics
	variables
/metrics
0layer_regularization_losses

1layers
regularization_losses
О
2
state_size

%kernel
&recurrent_kernel
'bias
3trainable_variables
4	variables
5regularization_losses
6	keras_api
 

%0
&1
'2

%0
&1
'2
 
є
7non_trainable_variables
8layer_metrics
	variables
9metrics

:states
;layer_regularization_losses

<layers
trainable_variables
regularization_losses
 
 
 
≠
=non_trainable_variables
trainable_variables
>layer_metrics
	variables
?metrics
@layer_regularization_losses

Alayers
regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
≠
Bnon_trainable_variables
trainable_variables
Clayer_metrics
	variables
Dmetrics
Elayer_regularization_losses

Flayers
regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUElstm/lstm_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
 
 

G0
H1
 

0
1
2
3
 
 
 
 
 
 

%0
&1
'2

%0
&1
'2
 
≠
Inon_trainable_variables
3trainable_variables
Jlayer_metrics
4	variables
Kmetrics
Llayer_regularization_losses

Mlayers
5regularization_losses
 
 
 
 
 

0
 
 
 
 
 
 
 
 
 
 
4
	Ntotal
	Ocount
P	variables
Q	keras_api
D
	Rtotal
	Scount
T
_fn_kwargs
U	variables
V	keras_api
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
N0
O1

P	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1

U	variables
ИЕ
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
tr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ф
serving_default_embedding_inputPlaceholder*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*%
shape:€€€€€€€€€€€€€€€€€€
≈
StatefulPartitionedCallStatefulPartitionedCallserving_default_embedding_inputembedding/embeddingslstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biasdense/kernel
dense/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_24928
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Д
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_27819
г
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingsdense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biastotalcounttotal_1count_1Adam/embedding/embeddings/mAdam/dense/kernel/mAdam/dense/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/mAdam/embedding/embeddings/vAdam/dense/kernel/vAdam/dense/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_27910Јм2
п,
ќ
while_body_23888
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
while_biasadd_bias√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemҐ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim„
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_2”
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
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 А:%	!

_output_shapes
:	 А:!


_output_shapes	
:А
џC
Ў
E__inference_sequential_layer_call_and_return_conditional_losses_25867

inputs4
 embedding_embedding_lookup_25415:
†Н 4
!lstm_read_readvariableop_resource:	 А6
#lstm_read_1_readvariableop_resource:	 А2
#lstm_read_2_readvariableop_resource:	А6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource:
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐembedding/embedding_lookupҐlstm/Read/ReadVariableOpҐlstm/Read_1/ReadVariableOpҐlstm/Read_2/ReadVariableOpz
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
embedding/Castґ
embedding/embedding_lookupResourceGather embedding_embedding_lookup_25415embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/25415*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
dtype02
embedding/embedding_lookupЭ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/25415*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2%
#embedding/embedding_lookup/Identity«
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2'
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
lstm/strided_slice/stackВ
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1В
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2А
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros/mul/yА
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
B :и2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros/packed/1Ч
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
lstm/zeros/ConstЙ

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros_1/mul/yЖ
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
B :и2
lstm/zeros_1/Less/yГ
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros_1/packed/1Э
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
lstm/zeros_1/ConstС
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm/zeros_1Ч
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm/Read/ReadVariableOpv
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2
lstm/IdentityЭ
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm/Read_1/ReadVariableOp|
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2
lstm/Identity_1Щ
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
lstm/Read_2/ReadVariableOpx
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
lstm/Identity_2Ы
lstm/PartitionedCallPartitionedCall.embedding/embedding_lookup/Identity_1:output:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_lstm_255792
lstm/PartitionedCalls
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/dropout/ConstҐ
dropout/dropout/MulMullstm/PartitionedCall:output:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/dropout/Mul{
dropout/dropout/ShapeShapelstm/PartitionedCall:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shapeћ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype02.
,dropout/dropout/random_uniform/RandomUniformЕ
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2 
dropout/dropout/GreaterEqual/yё
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/dropout/GreaterEqualЧ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout/dropout/CastЪ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/dropout/Mul_1Я
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMuldropout/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/Softmaxr
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityэ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
в>
а
__inference__traced_save_27819
file_prefix3
/savev2_embedding_embeddings_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameФ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¶
valueЬBЩB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesј
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesё
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*÷
_input_shapesƒ
Ѕ: :
†Н : :: : : : : :	 А:	 А:А: : : : :
†Н : ::	 А:	 А:А:
†Н : ::	 А:	 А:А: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
†Н :$ 

_output_shapes

: : 

_output_shapes
::
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
:	 А:%
!

_output_shapes
:	 А:!

_output_shapes	
:А:
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
†Н :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	 А:%!

_output_shapes
:	 А:!

_output_shapes	
:А:&"
 
_output_shapes
:
†Н :$ 

_output_shapes

: : 

_output_shapes
::%!

_output_shapes
:	 А:%!

_output_shapes
:	 А:!

_output_shapes	
:А:

_output_shapes
: 
ЎA
њ
__inference_standard_lstm_24502

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
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape∞
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeґ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterљ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_24417*
condR
while_cond_24416*b
output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А*
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_5bfcafc0-d370-4fe8-aa6a-bcf751470102*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
©е
с
9__inference___backward_gpu_lstm_with_fallback_27490_27666
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

identity_5Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4£
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeљ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€25
3gradients/strided_slice_grad/StridedSliceGrad/begin∞
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endЄ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesџ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradћ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationи
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape∆
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shapeћ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2"
 gradients/Squeeze_1_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeµ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropƒ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation€
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeк
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeр
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rankє
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЙ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_1_grad/ShapeН
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_1Н
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_2Н
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_3Н
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_4Н
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_5Н
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_6Н
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_7М
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8М
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9О
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10О
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11О
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12О
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13О
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14О
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15†
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetН
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_1_grad/SliceУ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_1У
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_2У
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_3У
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_4У
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_5У
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_6У
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_7Т
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8Т
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9Ц
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10Ц
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11Ц
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12Ц
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13Ц
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14Ц
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2
gradients/Reshape_grad/Shape√
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:  2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_1_grad/ShapeЋ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_2_grad/ShapeЋ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_3_grad/ShapeЋ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/ShapeЋ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/ShapeЋ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/ShapeЋ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/ShapeЋ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape«
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape«
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/ShapeЋ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/ShapeЋ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/ShapeЋ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/ReshapeМ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/ShapeЋ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/ReshapeМ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/ShapeЋ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/ReshapeМ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/ShapeЋ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshapeћ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationЁ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_1_grad/transposeћ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationя
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_2_grad/transposeћ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationя
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_3_grad/transposeћ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationя
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_4_grad/transposeћ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationя
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transposeћ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationя
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transposeћ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationя
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transposeћ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationя
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concatќ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_grad/concat÷
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankѓ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1р
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetс
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceч
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1З
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Д

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Г
_input_shapesс
о:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : :€€€€€€€€€€€€€€€€€€ ::€€€€€€€€€ :€€€€€€€€€ ::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB::€€€€€€€€€ :€€€€€€€€€ : ::::::::: : : : *=
api_implements+)lstm_f0f87cf9-1a79-4c3b-9aab-35edb8e60b9d*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_27665*
go_backwards( *

time_major( :- )
'
_output_shapes
:€€€€€€€€€ ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ : 

_output_shapes
::1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :	

_output_shapes
:::
6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :!

_output_shapes	
:АB: 

_output_shapes
::-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
ЬT
£
&__forward_gpu_lstm_with_fallback_24243

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
concat_axisИu
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
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЕ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1г
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_525af5bc-5ea8-41a0-8d5a-d5ed2d6847eb*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_24068_24244*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
п,
ќ
while_body_22543
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
while_biasadd_bias√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemҐ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim„
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_2”
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
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 А:%	!

_output_shapes
:	 А:!


_output_shapes	
:А
о#
є
?__inference_lstm_layer_call_and_return_conditional_losses_27668

inputs/
read_readvariableop_resource:	 А1
read_1_readvariableop_resource:	 А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpD
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
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
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
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
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1И
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2–
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_lstm_273952
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_3Ф
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ђ	
Љ
while_cond_27309
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_27309___redundant_placeholder03
/while_while_cond_27309___redundant_placeholder13
/while_while_cond_27309___redundant_placeholder23
/while_while_cond_27309___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
ЬT
£
&__forward_gpu_lstm_with_fallback_26795

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
concat_axisИu
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
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЕ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1г
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_7f4377c1-3375-4be6-b474-559c121ee8e4*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_26620_26796*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
о#
є
?__inference_lstm_layer_call_and_return_conditional_losses_27233

inputs/
read_readvariableop_resource:	 А1
read_1_readvariableop_resource:	 А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpD
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
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
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
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
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1И
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2–
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_lstm_269602
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_3Ф
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ђ	
Љ
while_cond_26439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_26439___redundant_placeholder03
/while_while_cond_26439___redundant_placeholder13
/while_while_cond_26439___redundant_placeholder23
/while_while_cond_26439___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
ЎA
њ
__inference_standard_lstm_21724

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
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape∞
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeґ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterљ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_21639*
condR
while_cond_21638*b
output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А*
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_3dba8709-af84-4628-9163-5f19e6e05ea4*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
©е
с
9__inference___backward_gpu_lstm_with_fallback_26620_26796
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

identity_5Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4£
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeљ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€25
3gradients/strided_slice_grad/StridedSliceGrad/begin∞
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endЄ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesџ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradћ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationи
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape∆
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shapeћ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2"
 gradients/Squeeze_1_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeµ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropƒ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation€
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeк
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeр
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rankє
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЙ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_1_grad/ShapeН
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_1Н
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_2Н
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_3Н
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_4Н
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_5Н
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_6Н
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_7М
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8М
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9О
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10О
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11О
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12О
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13О
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14О
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15†
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetН
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_1_grad/SliceУ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_1У
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_2У
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_3У
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_4У
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_5У
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_6У
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_7Т
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8Т
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9Ц
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10Ц
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11Ц
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12Ц
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13Ц
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14Ц
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2
gradients/Reshape_grad/Shape√
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:  2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_1_grad/ShapeЋ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_2_grad/ShapeЋ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_3_grad/ShapeЋ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/ShapeЋ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/ShapeЋ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/ShapeЋ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/ShapeЋ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape«
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape«
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/ShapeЋ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/ShapeЋ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/ShapeЋ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/ReshapeМ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/ShapeЋ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/ReshapeМ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/ShapeЋ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/ReshapeМ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/ShapeЋ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshapeћ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationЁ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_1_grad/transposeћ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationя
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_2_grad/transposeћ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationя
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_3_grad/transposeћ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationя
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_4_grad/transposeћ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationя
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transposeћ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationя
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transposeћ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationя
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transposeћ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationя
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concatќ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_grad/concat÷
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankѓ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1р
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetс
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceч
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1З
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Д

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Г
_input_shapesс
о:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : :€€€€€€€€€€€€€€€€€€ ::€€€€€€€€€ :€€€€€€€€€ ::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB::€€€€€€€€€ :€€€€€€€€€ : ::::::::: : : : *=
api_implements+)lstm_7f4377c1-3375-4be6-b474-559c121ee8e4*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_26795*
go_backwards( *

time_major( :- )
'
_output_shapes
:€€€€€€€€€ ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ : 

_output_shapes
::1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :	

_output_shapes
:::
6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :!

_output_shapes	
:АB: 

_output_shapes
::-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
®
a
B__inference_dropout_layer_call_and_return_conditional_losses_27695

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ъG
ј
 __inference__wrapped_model_22005
embedding_input?
+sequential_embedding_embedding_lookup_21560:
†Н ?
,sequential_lstm_read_readvariableop_resource:	 АA
.sequential_lstm_read_1_readvariableop_resource:	 А=
.sequential_lstm_read_2_readvariableop_resource:	АA
/sequential_dense_matmul_readvariableop_resource: >
0sequential_dense_biasadd_readvariableop_resource:
identityИҐ'sequential/dense/BiasAdd/ReadVariableOpҐ&sequential/dense/MatMul/ReadVariableOpҐ%sequential/embedding/embedding_lookupҐ#sequential/lstm/Read/ReadVariableOpҐ%sequential/lstm/Read_1/ReadVariableOpҐ%sequential/lstm/Read_2/ReadVariableOpЩ
sequential/embedding/CastCastembedding_input*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
sequential/embedding/Castн
%sequential/embedding/embedding_lookupResourceGather+sequential_embedding_embedding_lookup_21560sequential/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*>
_class4
20loc:@sequential/embedding/embedding_lookup/21560*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
dtype02'
%sequential/embedding/embedding_lookup…
.sequential/embedding/embedding_lookup/IdentityIdentity.sequential/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*>
_class4
20loc:@sequential/embedding/embedding_lookup/21560*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 20
.sequential/embedding/embedding_lookup/Identityи
0sequential/embedding/embedding_lookup/Identity_1Identity7sequential/embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 22
0sequential/embedding/embedding_lookup/Identity_1Ч
sequential/lstm/ShapeShape9sequential/embedding/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
sequential/lstm/ShapeФ
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2%
#sequential/lstm/strided_slice/stackШ
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_1Ш
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2'
%sequential/lstm/strided_slice/stack_2¬
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
sequential/lstm/strided_slice|
sequential/lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/lstm/zeros/mul/yђ
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
B :и2
sequential/lstm/zeros/Less/yІ
sequential/lstm/zeros/LessLesssequential/lstm/zeros/mul:z:0%sequential/lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros/LessВ
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2 
sequential/lstm/zeros/packed/1√
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
sequential/lstm/zeros/Constµ
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/lstm/zerosА
sequential/lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential/lstm/zeros_1/mul/y≤
sequential/lstm/zeros_1/mulMul&sequential/lstm/strided_slice:output:0&sequential/lstm/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/mulГ
sequential/lstm/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :и2 
sequential/lstm/zeros_1/Less/yѓ
sequential/lstm/zeros_1/LessLesssequential/lstm/zeros_1/mul:z:0'sequential/lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
sequential/lstm/zeros_1/LessЖ
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2"
 sequential/lstm/zeros_1/packed/1…
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2 
sequential/lstm/zeros_1/packedГ
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential/lstm/zeros_1/Constљ
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/lstm/zeros_1Є
#sequential/lstm/Read/ReadVariableOpReadVariableOp,sequential_lstm_read_readvariableop_resource*
_output_shapes
:	 А*
dtype02%
#sequential/lstm/Read/ReadVariableOpЧ
sequential/lstm/IdentityIdentity+sequential/lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2
sequential/lstm/IdentityЊ
%sequential/lstm/Read_1/ReadVariableOpReadVariableOp.sequential_lstm_read_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02'
%sequential/lstm/Read_1/ReadVariableOpЭ
sequential/lstm/Identity_1Identity-sequential/lstm/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2
sequential/lstm/Identity_1Ї
%sequential/lstm/Read_2/ReadVariableOpReadVariableOp.sequential_lstm_read_2_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%sequential/lstm/Read_2/ReadVariableOpЩ
sequential/lstm/Identity_2Identity-sequential/lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
sequential/lstm/Identity_2у
sequential/lstm/PartitionedCallPartitionedCall9sequential/embedding/embedding_lookup/Identity_1:output:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0!sequential/lstm/Identity:output:0#sequential/lstm/Identity_1:output:0#sequential/lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_lstm_217242!
sequential/lstm/PartitionedCallҐ
sequential/dropout/IdentityIdentity(sequential/lstm/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
sequential/dropout/Identityј
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02(
&sequential/dense/MatMul/ReadVariableOpƒ
sequential/dense/MatMulMatMul$sequential/dropout/Identity:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense/MatMulњ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'sequential/dense/BiasAdd/ReadVariableOp≈
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense/BiasAddФ
sequential/dense/SoftmaxSoftmax!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
sequential/dense/Softmax}
IdentityIdentity"sequential/dense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityњ
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp&^sequential/embedding/embedding_lookup$^sequential/lstm/Read/ReadVariableOp&^sequential/lstm/Read_1/ReadVariableOp&^sequential/lstm/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2N
%sequential/embedding/embedding_lookup%sequential/embedding/embedding_lookup2J
#sequential/lstm/Read/ReadVariableOp#sequential/lstm/Read/ReadVariableOp2N
%sequential/lstm/Read_1/ReadVariableOp%sequential/lstm/Read_1/ReadVariableOp2N
%sequential/lstm/Read_2/ReadVariableOp%sequential/lstm/Read_2/ReadVariableOp:a ]
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
)
_user_specified_nameembedding_input
ЬT
£
&__forward_gpu_lstm_with_fallback_26360

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
concat_axisИu
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
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЕ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1г
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_288405f7-76cc-4757-90e0-555a3d3a38a1*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_26185_26361*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
©е
с
9__inference___backward_gpu_lstm_with_fallback_25225_25401
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

identity_5Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4£
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeљ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€25
3gradients/strided_slice_grad/StridedSliceGrad/begin∞
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endЄ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesџ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradћ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationи
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape∆
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shapeћ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2"
 gradients/Squeeze_1_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeµ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropƒ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation€
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeк
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeр
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rankє
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЙ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_1_grad/ShapeН
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_1Н
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_2Н
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_3Н
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_4Н
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_5Н
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_6Н
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_7М
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8М
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9О
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10О
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11О
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12О
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13О
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14О
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15†
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetН
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_1_grad/SliceУ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_1У
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_2У
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_3У
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_4У
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_5У
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_6У
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_7Т
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8Т
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9Ц
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10Ц
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11Ц
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12Ц
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13Ц
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14Ц
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2
gradients/Reshape_grad/Shape√
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:  2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_1_grad/ShapeЋ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_2_grad/ShapeЋ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_3_grad/ShapeЋ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/ShapeЋ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/ShapeЋ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/ShapeЋ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/ShapeЋ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape«
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape«
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/ShapeЋ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/ShapeЋ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/ShapeЋ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/ReshapeМ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/ShapeЋ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/ReshapeМ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/ShapeЋ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/ReshapeМ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/ShapeЋ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshapeћ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationЁ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_1_grad/transposeћ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationя
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_2_grad/transposeћ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationя
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_3_grad/transposeћ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationя
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_4_grad/transposeћ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationя
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transposeћ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationя
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transposeћ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationя
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transposeћ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationя
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concatќ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_grad/concat÷
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankѓ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1р
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetс
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceч
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1З
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Д

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Г
_input_shapesс
о:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : :€€€€€€€€€€€€€€€€€€ ::€€€€€€€€€ :€€€€€€€€€ ::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB::€€€€€€€€€ :€€€€€€€€€ : ::::::::: : : : *=
api_implements+)lstm_d6cd3761-3fa7-4995-9e06-70e5a8265768*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_25400*
go_backwards( *

time_major( :- )
'
_output_shapes
:€€€€€€€€€ ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ : 

_output_shapes
::1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :	

_output_shapes
:::
6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :!

_output_shapes	
:АB: 

_output_shapes
::-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
»H
Ћ
(__inference_gpu_lstm_with_fallback_25673

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

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimГ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЂ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:АB2

concat_1я
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_efdfea34-4a7d-43a5-a5f6-2dd1ea1b3e2a*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
п,
ќ
while_body_26440
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
while_biasadd_bias√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemҐ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim„
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_2”
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
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 А:%	!

_output_shapes
:	 А:!


_output_shapes	
:А
»H
Ћ
(__inference_gpu_lstm_with_fallback_24067

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

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimГ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЂ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:АB2

concat_1я
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_525af5bc-5ea8-41a0-8d5a-d5ed2d6847eb*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
©е
с
9__inference___backward_gpu_lstm_with_fallback_24068_24244
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

identity_5Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4£
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeљ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€25
3gradients/strided_slice_grad/StridedSliceGrad/begin∞
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endЄ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesџ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradћ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationи
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape∆
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shapeћ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2"
 gradients/Squeeze_1_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeµ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropƒ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation€
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeк
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeр
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rankє
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЙ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_1_grad/ShapeН
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_1Н
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_2Н
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_3Н
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_4Н
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_5Н
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_6Н
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_7М
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8М
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9О
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10О
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11О
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12О
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13О
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14О
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15†
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetН
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_1_grad/SliceУ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_1У
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_2У
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_3У
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_4У
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_5У
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_6У
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_7Т
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8Т
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9Ц
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10Ц
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11Ц
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12Ц
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13Ц
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14Ц
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2
gradients/Reshape_grad/Shape√
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:  2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_1_grad/ShapeЋ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_2_grad/ShapeЋ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_3_grad/ShapeЋ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/ShapeЋ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/ShapeЋ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/ShapeЋ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/ShapeЋ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape«
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape«
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/ShapeЋ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/ShapeЋ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/ShapeЋ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/ReshapeМ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/ShapeЋ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/ReshapeМ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/ShapeЋ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/ReshapeМ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/ShapeЋ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshapeћ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationЁ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_1_grad/transposeћ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationя
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_2_grad/transposeћ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationя
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_3_grad/transposeћ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationя
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_4_grad/transposeћ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationя
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transposeћ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationя
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transposeћ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationя
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transposeћ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationя
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concatќ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_grad/concat÷
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankѓ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1р
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetс
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceч
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1З
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Д

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Г
_input_shapesс
о:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : :€€€€€€€€€€€€€€€€€€ ::€€€€€€€€€ :€€€€€€€€€ ::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB::€€€€€€€€€ :€€€€€€€€€ : ::::::::: : : : *=
api_implements+)lstm_525af5bc-5ea8-41a0-8d5a-d5ed2d6847eb*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_24243*
go_backwards( *

time_major( :- )
'
_output_shapes
:€€€€€€€€€ ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ : 

_output_shapes
::1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :	

_output_shapes
:::
6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :!

_output_shapes	
:АB: 

_output_shapes
::-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
Е
™
E__inference_sequential_layer_call_and_return_conditional_losses_24903
embedding_input#
embedding_24886:
†Н 

lstm_24889:	 А

lstm_24891:	 А

lstm_24893:	А
dense_24897: 
dense_24899:
identityИҐdense/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallҐlstm/StatefulPartitionedCallЬ
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_24886*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_238082#
!embedding/StatefulPartitionedCall≤
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_24889
lstm_24891
lstm_24893*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_247752
lstm/StatefulPartitionedCallК
dropout/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_243242!
dropout/StatefulPartitionedCallІ
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_24897dense_24899*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_242722
dense/StatefulPartitionedCallБ
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity”
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:a ]
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
)
_user_specified_nameembedding_input
»H
Ћ
(__inference_gpu_lstm_with_fallback_21818

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

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimГ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЂ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:АB2

concat_1я
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_3dba8709-af84-4628-9163-5f19e6e05ea4*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
м
Т
%__inference_dense_layer_call_fn_27704

inputs
unknown: 
	unknown_0:
identityИҐStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_242722
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
¶
Ґ
D__inference_embedding_layer_call_and_return_conditional_losses_23808

inputs*
embedding_lookup_23802:
†Н 
identityИҐembedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
CastД
embedding_lookupResourceGatherembedding_lookup_23802Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*)
_class
loc:@embedding_lookup/23802*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
dtype02
embedding_lookupх
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@embedding_lookup/23802*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
embedding_lookup/Identity©
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
embedding_lookup/Identity_1М
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€€€€€€€€€€: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ЎA
њ
__inference_standard_lstm_26090

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
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape∞
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeґ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterљ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_26005*
condR
while_cond_26004*b
output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А*
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_288405f7-76cc-4757-90e0-555a3d3a38a1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
Э
`
'__inference_dropout_layer_call_fn_27678

inputs
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_243242
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
п,
ќ
while_body_27310
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
while_biasadd_bias√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemҐ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim„
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_2”
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
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 А:%	!

_output_shapes
:	 А:!


_output_shapes	
:А
»H
Ћ
(__inference_gpu_lstm_with_fallback_25224

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

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimГ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЂ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:АB2

concat_1я
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_d6cd3761-3fa7-4995-9e06-70e5a8265768*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
©е
с
9__inference___backward_gpu_lstm_with_fallback_27055_27231
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

identity_5Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4£
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeљ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€25
3gradients/strided_slice_grad/StridedSliceGrad/begin∞
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endЄ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesџ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradћ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationи
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape∆
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shapeћ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2"
 gradients/Squeeze_1_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeµ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropƒ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation€
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeк
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeр
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rankє
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЙ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_1_grad/ShapeН
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_1Н
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_2Н
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_3Н
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_4Н
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_5Н
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_6Н
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_7М
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8М
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9О
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10О
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11О
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12О
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13О
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14О
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15†
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetН
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_1_grad/SliceУ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_1У
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_2У
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_3У
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_4У
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_5У
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_6У
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_7Т
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8Т
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9Ц
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10Ц
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11Ц
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12Ц
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13Ц
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14Ц
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2
gradients/Reshape_grad/Shape√
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:  2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_1_grad/ShapeЋ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_2_grad/ShapeЋ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_3_grad/ShapeЋ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/ShapeЋ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/ShapeЋ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/ShapeЋ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/ShapeЋ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape«
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape«
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/ShapeЋ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/ShapeЋ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/ShapeЋ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/ReshapeМ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/ShapeЋ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/ReshapeМ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/ShapeЋ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/ReshapeМ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/ShapeЋ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshapeћ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationЁ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_1_grad/transposeћ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationя
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_2_grad/transposeћ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationя
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_3_grad/transposeћ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationя
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_4_grad/transposeћ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationя
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transposeћ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationя
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transposeћ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationя
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transposeћ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationя
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concatќ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_grad/concat÷
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankѓ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1р
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetс
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceч
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1З
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Д

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Г
_input_shapesс
о:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : :€€€€€€€€€€€€€€€€€€ ::€€€€€€€€€ :€€€€€€€€€ ::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB::€€€€€€€€€ :€€€€€€€€€ : ::::::::: : : : *=
api_implements+)lstm_07af5730-d7f4-4b0c-a604-ba316b3c57ea*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_27230*
go_backwards( *

time_major( :- )
'
_output_shapes
:€€€€€€€€€ ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ : 

_output_shapes
::1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :	

_output_shapes
:::
6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :!

_output_shapes	
:АB: 

_output_shapes
::-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
ї
C
'__inference_dropout_layer_call_fn_27673

inputs
identity√
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_242592
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ђ	
Љ
while_cond_21638
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_21638___redundant_placeholder03
/while_while_cond_21638___redundant_placeholder13
/while_while_cond_21638___redundant_placeholder23
/while_while_cond_21638___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
ђ	
Љ
while_cond_23887
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_23887___redundant_placeholder03
/while_while_cond_23887___redundant_placeholder13
/while_while_cond_23887___redundant_placeholder23
/while_while_cond_23887___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
ЎA
њ
__inference_standard_lstm_26525

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
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape∞
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeґ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterљ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_26440*
condR
while_cond_26439*b
output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А*
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_7f4377c1-3375-4be6-b474-559c121ee8e4*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ђ	
Љ
while_cond_25044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_25044___redundant_placeholder03
/while_while_cond_25044___redundant_placeholder13
/while_while_cond_25044___redundant_placeholder23
/while_while_cond_25044___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
ЎA
њ
__inference_standard_lstm_27395

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
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape∞
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeґ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterљ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_27310*
condR
while_cond_27309*b
output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А*
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_f0f87cf9-1a79-4c3b-9aab-35edb8e60b9d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
шu
г
!__inference__traced_restore_27910
file_prefix9
%assignvariableop_embedding_embeddings:
†Н 1
assignvariableop_1_dense_kernel: +
assignvariableop_2_dense_bias:&
assignvariableop_3_adam_iter:	 (
assignvariableop_4_adam_beta_1: (
assignvariableop_5_adam_beta_2: '
assignvariableop_6_adam_decay: /
%assignvariableop_7_adam_learning_rate: ;
(assignvariableop_8_lstm_lstm_cell_kernel:	 АE
2assignvariableop_9_lstm_lstm_cell_recurrent_kernel:	 А6
'assignvariableop_10_lstm_lstm_cell_bias:	А#
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: C
/assignvariableop_15_adam_embedding_embeddings_m:
†Н 9
'assignvariableop_16_adam_dense_kernel_m: 3
%assignvariableop_17_adam_dense_bias_m:C
0assignvariableop_18_adam_lstm_lstm_cell_kernel_m:	 АM
:assignvariableop_19_adam_lstm_lstm_cell_recurrent_kernel_m:	 А=
.assignvariableop_20_adam_lstm_lstm_cell_bias_m:	АC
/assignvariableop_21_adam_embedding_embeddings_v:
†Н 9
'assignvariableop_22_adam_dense_kernel_v: 3
%assignvariableop_23_adam_dense_bias_v:C
0assignvariableop_24_adam_lstm_lstm_cell_kernel_v:	 АM
:assignvariableop_25_adam_lstm_lstm_cell_recurrent_kernel_v:	 А=
.assignvariableop_26_adam_lstm_lstm_cell_bias_v:	А
identity_28ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ъ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¶
valueЬBЩB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names∆
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesЄ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Д
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity§
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1§
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ґ
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3°
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ґ
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7™
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8≠
AssignVariableOp_8AssignVariableOp(assignvariableop_8_lstm_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ј
AssignVariableOp_9AssignVariableOp2assignvariableop_9_lstm_lstm_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10ѓ
AssignVariableOp_10AssignVariableOp'assignvariableop_10_lstm_lstm_cell_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11°
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12°
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ј
AssignVariableOp_15AssignVariableOp/assignvariableop_15_adam_embedding_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16ѓ
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17≠
AssignVariableOp_17AssignVariableOp%assignvariableop_17_adam_dense_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Є
AssignVariableOp_18AssignVariableOp0assignvariableop_18_adam_lstm_lstm_cell_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¬
AssignVariableOp_19AssignVariableOp:assignvariableop_19_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20ґ
AssignVariableOp_20AssignVariableOp.assignvariableop_20_adam_lstm_lstm_cell_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ј
AssignVariableOp_21AssignVariableOp/assignvariableop_21_adam_embedding_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22ѓ
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23≠
AssignVariableOp_23AssignVariableOp%assignvariableop_23_adam_dense_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Є
AssignVariableOp_24AssignVariableOp0assignvariableop_24_adam_lstm_lstm_cell_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¬
AssignVariableOp_25AssignVariableOp:assignvariableop_25_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26ґ
AssignVariableOp_26AssignVariableOp.assignvariableop_26_adam_lstm_lstm_cell_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp∞
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27f
Identity_28IdentityIdentity_27:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_28Ш
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
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
п,
ќ
while_body_25045
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
while_biasadd_bias√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemҐ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim„
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_2”
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
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 А:%	!

_output_shapes
:	 А:!


_output_shapes	
:А
ц#
ї
?__inference_lstm_layer_call_and_return_conditional_losses_26363
inputs_0/
read_readvariableop_resource:	 А1
read_1_readvariableop_resource:	 А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpF
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
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
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
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
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1И
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2“
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_lstm_260902
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_3Ф
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs/0
‘	
Х
*__inference_sequential_layer_call_fn_24294
embedding_input
unknown:
†Н 
	unknown_0:	 А
	unknown_1:	 А
	unknown_2:	А
	unknown_3: 
	unknown_4:
identityИҐStatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_242792
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
)
_user_specified_nameembedding_input
‘	
Х
*__inference_sequential_layer_call_fn_24863
embedding_input
unknown:
†Н 
	unknown_0:	 А
	unknown_1:	 А
	unknown_2:	А
	unknown_3: 
	unknown_4:
identityИҐStatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_248312
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
)
_user_specified_nameembedding_input
»H
Ћ
(__inference_gpu_lstm_with_fallback_22722

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

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimГ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЂ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:АB2

concat_1я
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_bbe91cd0-2a5f-403d-b373-cc65934a8702*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ЎA
њ
__inference_standard_lstm_25130

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
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape∞
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeґ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterљ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_25045*
condR
while_cond_25044*b
output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А*
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_d6cd3761-3fa7-4995-9e06-70e5a8265768*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
®
a
B__inference_dropout_layer_call_and_return_conditional_losses_24324

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeі
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€ 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
п,
ќ
while_body_21639
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
while_biasadd_bias√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemҐ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim„
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_2”
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
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 А:%	!

_output_shapes
:	 А:!


_output_shapes	
:А
є
≥
$__inference_lstm_layer_call_fn_25906
inputs_0
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_229012
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs/0
ъ

)__inference_embedding_layer_call_fn_25874

inputs
unknown:
†Н 
identityИҐStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_238082
StatefulPartitionedCallИ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€€€€€€€€€€: 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ђ	
Љ
while_cond_26004
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_26004___redundant_placeholder03
/while_while_cond_26004___redundant_placeholder13
/while_while_cond_26004___redundant_placeholder23
/while_while_cond_26004___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
»H
Ћ
(__inference_gpu_lstm_with_fallback_27489

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

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimГ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЂ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:АB2

concat_1я
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_f0f87cf9-1a79-4c3b-9aab-35edb8e60b9d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
Ж
с
@__inference_dense_layer_call_and_return_conditional_losses_27715

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ЬT
£
&__forward_gpu_lstm_with_fallback_21994

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
concat_axisИu
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
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЕ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1г
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_3dba8709-af84-4628-9163-5f19e6e05ea4*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_21819_21995*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
®	
О
#__inference_signature_wrapper_24928
embedding_input
unknown:
†Н 
	unknown_0:	 А
	unknown_1:	 А
	unknown_2:	А
	unknown_3: 
	unknown_4:
identityИҐStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallembedding_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_220052
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
)
_user_specified_nameembedding_input
ЬT
£
&__forward_gpu_lstm_with_fallback_22441

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
concat_axisИu
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
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЕ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1г
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_87944446-64f3-4f76-84c9-f708e0c63c6d*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_22266_22442*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ЎA
њ
__inference_standard_lstm_26960

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
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape∞
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeґ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterљ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_26875*
condR
while_cond_26874*b
output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А*
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_07af5730-d7f4-4b0c-a604-ba316b3c57ea*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
є	
М
*__inference_sequential_layer_call_fn_24945

inputs
unknown:
†Н 
	unknown_0:	 А
	unknown_1:	 А
	unknown_2:	А
	unknown_3: 
	unknown_4:
identityИҐStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_242792
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
п,
ќ
while_body_26875
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
while_biasadd_bias√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemҐ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim„
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_2”
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
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 А:%	!

_output_shapes
:	 А:!


_output_shapes	
:А
ў:
Ў
E__inference_sequential_layer_call_and_return_conditional_losses_25411

inputs4
 embedding_embedding_lookup_24966:
†Н 4
!lstm_read_readvariableop_resource:	 А6
#lstm_read_1_readvariableop_resource:	 А2
#lstm_read_2_readvariableop_resource:	А6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource:
identityИҐdense/BiasAdd/ReadVariableOpҐdense/MatMul/ReadVariableOpҐembedding/embedding_lookupҐlstm/Read/ReadVariableOpҐlstm/Read_1/ReadVariableOpҐlstm/Read_2/ReadVariableOpz
embedding/CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
embedding/Castґ
embedding/embedding_lookupResourceGather embedding_embedding_lookup_24966embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/24966*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
dtype02
embedding/embedding_lookupЭ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/24966*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2%
#embedding/embedding_lookup/Identity«
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2'
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
lstm/strided_slice/stackВ
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_1В
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm/strided_slice/stack_2А
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm/strided_slicef
lstm/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros/mul/yА
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
B :и2
lstm/zeros/Less/y{
lstm/zeros/LessLesslstm/zeros/mul:z:0lstm/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros/Lessl
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros/packed/1Ч
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
lstm/zeros/ConstЙ

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

lstm/zerosj
lstm/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros_1/mul/yЖ
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
B :и2
lstm/zeros_1/Less/yГ
lstm/zeros_1/LessLesslstm/zeros_1/mul:z:0lstm/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm/zeros_1/Lessp
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
lstm/zeros_1/packed/1Э
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
lstm/zeros_1/ConstС
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
lstm/zeros_1Ч
lstm/Read/ReadVariableOpReadVariableOp!lstm_read_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm/Read/ReadVariableOpv
lstm/IdentityIdentity lstm/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2
lstm/IdentityЭ
lstm/Read_1/ReadVariableOpReadVariableOp#lstm_read_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
lstm/Read_1/ReadVariableOp|
lstm/Identity_1Identity"lstm/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2
lstm/Identity_1Щ
lstm/Read_2/ReadVariableOpReadVariableOp#lstm_read_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
lstm/Read_2/ReadVariableOpx
lstm/Identity_2Identity"lstm/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
lstm/Identity_2Ы
lstm/PartitionedCallPartitionedCall.embedding/embedding_lookup/Identity_1:output:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/Identity:output:0lstm/Identity_1:output:0lstm/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_lstm_251302
lstm/PartitionedCallБ
dropout/IdentityIdentitylstm/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dropout/IdentityЯ
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense/MatMul/ReadVariableOpШ
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/MatMulЮ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOpЩ
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense/Softmaxr
IdentityIdentitydense/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityэ
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^embedding/embedding_lookup^lstm/Read/ReadVariableOp^lstm/Read_1/ReadVariableOp^lstm/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup24
lstm/Read/ReadVariableOplstm/Read/ReadVariableOp28
lstm/Read_1/ReadVariableOplstm/Read_1/ReadVariableOp28
lstm/Read_2/ReadVariableOplstm/Read_2/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ЬT
£
&__forward_gpu_lstm_with_fallback_22898

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
concat_axisИu
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
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЕ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1г
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_bbe91cd0-2a5f-403d-b373-cc65934a8702*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_22723_22899*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
»H
Ћ
(__inference_gpu_lstm_with_fallback_26619

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

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimГ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЂ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:АB2

concat_1я
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_7f4377c1-3375-4be6-b474-559c121ee8e4*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ђ	
Љ
while_cond_24416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_24416___redundant_placeholder03
/while_while_cond_24416___redundant_placeholder13
/while_while_cond_24416___redundant_placeholder23
/while_while_cond_24416___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
Ж
с
@__inference_dense_layer_call_and_return_conditional_losses_24272

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Softmaxl
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
¶
Ґ
D__inference_embedding_layer_call_and_return_conditional_losses_25884

inputs*
embedding_lookup_25878:
†Н 
identityИҐembedding_lookupf
CastCastinputs*

DstT0*

SrcT0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
CastД
embedding_lookupResourceGatherembedding_lookup_25878Cast:y:0",/job:localhost/replica:0/task:0/device:GPU:0*
Tindices0*)
_class
loc:@embedding_lookup/25878*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
dtype02
embedding_lookupх
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@embedding_lookup/25878*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
embedding_lookup/Identity©
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
embedding_lookup/Identity_1М
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:€€€€€€€€€€€€€€€€€€: 2$
embedding_lookupembedding_lookup:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
п,
ќ
while_body_24417
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
while_biasadd_bias√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemҐ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim„
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_2”
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
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 А:%	!

_output_shapes
:	 А:!


_output_shapes	
:А
©е
с
9__inference___backward_gpu_lstm_with_fallback_25674_25850
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

identity_5Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4£
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeљ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€25
3gradients/strided_slice_grad/StridedSliceGrad/begin∞
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endЄ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesџ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradћ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationи
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape∆
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shapeћ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2"
 gradients/Squeeze_1_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeµ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropƒ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation€
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeк
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeр
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rankє
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЙ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_1_grad/ShapeН
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_1Н
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_2Н
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_3Н
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_4Н
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_5Н
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_6Н
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_7М
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8М
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9О
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10О
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11О
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12О
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13О
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14О
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15†
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetН
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_1_grad/SliceУ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_1У
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_2У
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_3У
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_4У
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_5У
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_6У
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_7Т
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8Т
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9Ц
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10Ц
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11Ц
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12Ц
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13Ц
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14Ц
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2
gradients/Reshape_grad/Shape√
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:  2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_1_grad/ShapeЋ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_2_grad/ShapeЋ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_3_grad/ShapeЋ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/ShapeЋ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/ShapeЋ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/ShapeЋ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/ShapeЋ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape«
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape«
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/ShapeЋ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/ShapeЋ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/ShapeЋ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/ReshapeМ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/ShapeЋ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/ReshapeМ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/ShapeЋ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/ReshapeМ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/ShapeЋ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshapeћ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationЁ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_1_grad/transposeћ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationя
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_2_grad/transposeћ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationя
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_3_grad/transposeћ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationя
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_4_grad/transposeћ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationя
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transposeћ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationя
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transposeћ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationя
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transposeћ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationя
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concatќ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_grad/concat÷
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankѓ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1р
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetс
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceч
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1З
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Д

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Г
_input_shapesс
о:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : :€€€€€€€€€€€€€€€€€€ ::€€€€€€€€€ :€€€€€€€€€ ::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB::€€€€€€€€€ :€€€€€€€€€ : ::::::::: : : : *=
api_implements+)lstm_efdfea34-4a7d-43a5-a5f6-2dd1ea1b3e2a*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_25849*
go_backwards( *

time_major( :- )
'
_output_shapes
:€€€€€€€€€ ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ : 

_output_shapes
::1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :	

_output_shapes
:::
6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :!

_output_shapes	
:АB: 

_output_shapes
::-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
п,
ќ
while_body_26005
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
while_biasadd_bias√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemҐ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim„
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_2”
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
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 А:%	!

_output_shapes
:	 А:!


_output_shapes	
:А
©е
с
9__inference___backward_gpu_lstm_with_fallback_22266_22442
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

identity_5Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4£
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeљ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€25
3gradients/strided_slice_grad/StridedSliceGrad/begin∞
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endЄ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesџ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradћ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationи
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape∆
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shapeћ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2"
 gradients/Squeeze_1_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeµ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropƒ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation€
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeк
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeр
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rankє
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЙ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_1_grad/ShapeН
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_1Н
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_2Н
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_3Н
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_4Н
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_5Н
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_6Н
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_7М
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8М
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9О
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10О
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11О
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12О
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13О
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14О
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15†
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetН
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_1_grad/SliceУ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_1У
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_2У
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_3У
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_4У
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_5У
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_6У
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_7Т
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8Т
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9Ц
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10Ц
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11Ц
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12Ц
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13Ц
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14Ц
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2
gradients/Reshape_grad/Shape√
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:  2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_1_grad/ShapeЋ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_2_grad/ShapeЋ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_3_grad/ShapeЋ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/ShapeЋ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/ShapeЋ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/ShapeЋ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/ShapeЋ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape«
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape«
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/ShapeЋ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/ShapeЋ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/ShapeЋ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/ReshapeМ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/ShapeЋ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/ReshapeМ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/ShapeЋ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/ReshapeМ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/ShapeЋ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshapeћ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationЁ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_1_grad/transposeћ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationя
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_2_grad/transposeћ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationя
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_3_grad/transposeћ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationя
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_4_grad/transposeћ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationя
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transposeћ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationя
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transposeћ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationя
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transposeћ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationя
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concatќ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_grad/concat÷
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankѓ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1р
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetс
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceч
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1З
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Д

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Г
_input_shapesс
о:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : :€€€€€€€€€€€€€€€€€€ ::€€€€€€€€€ :€€€€€€€€€ ::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB::€€€€€€€€€ :€€€€€€€€€ : ::::::::: : : : *=
api_implements+)lstm_87944446-64f3-4f76-84c9-f708e0c63c6d*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_22441*
go_backwards( *

time_major( :- )
'
_output_shapes
:€€€€€€€€€ ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ : 

_output_shapes
::1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :	

_output_shapes
:::
6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :!

_output_shapes	
:АB: 

_output_shapes
::-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
ЬT
£
&__forward_gpu_lstm_with_fallback_27665

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
concat_axisИu
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
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЕ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1г
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_f0f87cf9-1a79-4c3b-9aab-35edb8e60b9d*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_27490_27666*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ђ	
Љ
while_cond_22542
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_22542___redundant_placeholder03
/while_while_cond_22542___redundant_placeholder13
/while_while_cond_22542___redundant_placeholder23
/while_while_cond_22542___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
ђ	
Љ
while_cond_25493
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_25493___redundant_placeholder03
/while_while_cond_25493___redundant_placeholder13
/while_while_cond_25493___redundant_placeholder23
/while_while_cond_25493___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
©е
с
9__inference___backward_gpu_lstm_with_fallback_26185_26361
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

identity_5Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4£
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeљ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€25
3gradients/strided_slice_grad/StridedSliceGrad/begin∞
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endЄ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesџ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradћ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationи
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape∆
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shapeћ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2"
 gradients/Squeeze_1_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeµ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropƒ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation€
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeк
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeр
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rankє
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЙ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_1_grad/ShapeН
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_1Н
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_2Н
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_3Н
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_4Н
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_5Н
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_6Н
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_7М
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8М
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9О
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10О
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11О
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12О
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13О
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14О
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15†
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetН
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_1_grad/SliceУ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_1У
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_2У
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_3У
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_4У
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_5У
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_6У
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_7Т
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8Т
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9Ц
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10Ц
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11Ц
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12Ц
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13Ц
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14Ц
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2
gradients/Reshape_grad/Shape√
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:  2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_1_grad/ShapeЋ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_2_grad/ShapeЋ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_3_grad/ShapeЋ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/ShapeЋ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/ShapeЋ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/ShapeЋ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/ShapeЋ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape«
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape«
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/ShapeЋ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/ShapeЋ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/ShapeЋ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/ReshapeМ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/ShapeЋ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/ReshapeМ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/ShapeЋ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/ReshapeМ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/ShapeЋ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshapeћ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationЁ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_1_grad/transposeћ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationя
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_2_grad/transposeћ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationя
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_3_grad/transposeћ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationя
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_4_grad/transposeћ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationя
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transposeћ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationя
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transposeћ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationя
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transposeћ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationя
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concatќ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_grad/concat÷
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankѓ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1р
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetс
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceч
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1З
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Д

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Г
_input_shapesс
о:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : :€€€€€€€€€€€€€€€€€€ ::€€€€€€€€€ :€€€€€€€€€ ::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB::€€€€€€€€€ :€€€€€€€€€ : ::::::::: : : : *=
api_implements+)lstm_288405f7-76cc-4757-90e0-555a3d3a38a1*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_26360*
go_backwards( *

time_major( :- )
'
_output_shapes
:€€€€€€€€€ ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ : 

_output_shapes
::1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :	

_output_shapes
:::
6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :!

_output_shapes	
:АB: 

_output_shapes
::-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
ц#
ї
?__inference_lstm_layer_call_and_return_conditional_losses_26798
inputs_0/
read_readvariableop_resource:	 А1
read_1_readvariableop_resource:	 А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpF
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
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
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
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
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1И
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2“
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_lstm_265252
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_3Ф
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs/0
о#
є
?__inference_lstm_layer_call_and_return_conditional_losses_24246

inputs/
read_readvariableop_resource:	 А1
read_1_readvariableop_resource:	 А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpD
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
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
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
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
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1И
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2–
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_lstm_239732
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_3Ф
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
»H
Ћ
(__inference_gpu_lstm_with_fallback_27054

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

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimГ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЂ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:АB2

concat_1я
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_07af5730-d7f4-4b0c-a604-ba316b3c57ea*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
о#
є
?__inference_lstm_layer_call_and_return_conditional_losses_22901

inputs/
read_readvariableop_resource:	 А1
read_1_readvariableop_resource:	 А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpD
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
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
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
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
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1И
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2–
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_lstm_226282
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_3Ф
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
»H
Ћ
(__inference_gpu_lstm_with_fallback_26184

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

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimГ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЂ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:АB2

concat_1я
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_288405f7-76cc-4757-90e0-555a3d3a38a1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
≥
±
$__inference_lstm_layer_call_fn_25928

inputs
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
identityИҐStatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_247752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
п
`
B__inference_dropout_layer_call_and_return_conditional_losses_24259

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ЎA
њ
__inference_standard_lstm_25579

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
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape∞
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeґ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterљ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_25494*
condR
while_cond_25493*b
output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А*
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_efdfea34-4a7d-43a5-a5f6-2dd1ea1b3e2a*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
о#
є
?__inference_lstm_layer_call_and_return_conditional_losses_22444

inputs/
read_readvariableop_resource:	 А1
read_1_readvariableop_resource:	 А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpD
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
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
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
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
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1И
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2–
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_lstm_221712
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_3Ф
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
≥
±
$__inference_lstm_layer_call_fn_25917

inputs
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
identityИҐStatefulPartitionedCall€
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_242462
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Ё
И
E__inference_sequential_layer_call_and_return_conditional_losses_24883
embedding_input#
embedding_24866:
†Н 

lstm_24869:	 А

lstm_24871:	 А

lstm_24873:	А
dense_24877: 
dense_24879:
identityИҐdense/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallҐlstm/StatefulPartitionedCallЬ
!embedding/StatefulPartitionedCallStatefulPartitionedCallembedding_inputembedding_24866*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_238082#
!embedding/StatefulPartitionedCall≤
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_24869
lstm_24871
lstm_24873*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_242462
lstm/StatefulPartitionedCallт
dropout/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_242592
dropout/PartitionedCallЯ
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_24877dense_24879*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_242722
dense/StatefulPartitionedCallБ
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity±
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:a ]
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
)
_user_specified_nameembedding_input
о#
є
?__inference_lstm_layer_call_and_return_conditional_losses_24775

inputs/
read_readvariableop_resource:	 А1
read_1_readvariableop_resource:	 А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpD
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessb
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros/packed/1Г
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
zeros/Constu
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
zeros`
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value	B : 2
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
B :и2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessf
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : 2
zeros_1/packed/1Й
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
zeros_1/Const}
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
zeros_1И
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read/ReadVariableOpg
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

IdentityО
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	 А*
dtype02
Read_1/ReadVariableOpm

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	 А2

Identity_1К
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype02
Read_2/ReadVariableOpi

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2

Identity_2–
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *o
_output_shapes]
[:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_lstm_245022
PartitionedCallw

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_3Ф
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ЎA
њ
__inference_standard_lstm_22628

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
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape∞
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeґ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterљ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_22543*
condR
while_cond_22542*b
output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А*
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_bbe91cd0-2a5f-403d-b373-cc65934a8702*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
»H
Ћ
(__inference_gpu_lstm_with_fallback_22265

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

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimГ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЂ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:АB2

concat_1я
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_87944446-64f3-4f76-84c9-f708e0c63c6d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ЬT
£
&__forward_gpu_lstm_with_fallback_24772

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
concat_axisИu
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
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЕ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1г
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_5bfcafc0-d370-4fe8-aa6a-bcf751470102*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_24597_24773*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
є	
М
*__inference_sequential_layer_call_fn_24962

inputs
unknown:
†Н 
	unknown_0:	 А
	unknown_1:	 А
	unknown_2:	А
	unknown_3: 
	unknown_4:
identityИҐStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_248312
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ЎA
њ
__inference_standard_lstm_22171

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
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape∞
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeґ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterљ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_22086*
condR
while_cond_22085*b
output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А*
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_87944446-64f3-4f76-84c9-f708e0c63c6d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ЬT
£
&__forward_gpu_lstm_with_fallback_25400

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
concat_axisИu
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
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЕ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1г
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_d6cd3761-3fa7-4995-9e06-70e5a8265768*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_25225_25401*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
©е
с
9__inference___backward_gpu_lstm_with_fallback_22723_22899
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

identity_5Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4£
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeљ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€25
3gradients/strided_slice_grad/StridedSliceGrad/begin∞
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endЄ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesџ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradћ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationи
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape∆
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shapeћ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2"
 gradients/Squeeze_1_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeµ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropƒ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation€
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeк
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeр
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rankє
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЙ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_1_grad/ShapeН
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_1Н
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_2Н
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_3Н
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_4Н
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_5Н
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_6Н
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_7М
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8М
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9О
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10О
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11О
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12О
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13О
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14О
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15†
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetН
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_1_grad/SliceУ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_1У
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_2У
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_3У
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_4У
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_5У
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_6У
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_7Т
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8Т
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9Ц
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10Ц
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11Ц
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12Ц
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13Ц
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14Ц
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2
gradients/Reshape_grad/Shape√
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:  2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_1_grad/ShapeЋ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_2_grad/ShapeЋ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_3_grad/ShapeЋ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/ShapeЋ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/ShapeЋ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/ShapeЋ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/ShapeЋ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape«
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape«
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/ShapeЋ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/ShapeЋ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/ShapeЋ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/ReshapeМ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/ShapeЋ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/ReshapeМ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/ShapeЋ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/ReshapeМ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/ShapeЋ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshapeћ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationЁ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_1_grad/transposeћ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationя
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_2_grad/transposeћ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationя
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_3_grad/transposeћ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationя
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_4_grad/transposeћ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationя
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transposeћ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationя
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transposeћ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationя
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transposeћ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationя
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concatќ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_grad/concat÷
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankѓ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1р
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetс
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceч
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1З
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Д

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Г
_input_shapesс
о:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : :€€€€€€€€€€€€€€€€€€ ::€€€€€€€€€ :€€€€€€€€€ ::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB::€€€€€€€€€ :€€€€€€€€€ : ::::::::: : : : *=
api_implements+)lstm_bbe91cd0-2a5f-403d-b373-cc65934a8702*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_22898*
go_backwards( *

time_major( :- )
'
_output_shapes
:€€€€€€€€€ ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ : 

_output_shapes
::1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :	

_output_shapes
:::
6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :!

_output_shapes	
:АB: 

_output_shapes
::-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
п,
ќ
while_body_25494
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
while_biasadd_bias√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemҐ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim„
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_2”
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
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 А:%	!

_output_shapes
:	 А:!


_output_shapes	
:А
ЬT
£
&__forward_gpu_lstm_with_fallback_27230

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
concat_axisИu
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
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЕ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1г
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_07af5730-d7f4-4b0c-a604-ba316b3c57ea*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_27055_27231*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
п,
ќ
while_body_22086
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
while_biasadd_bias√
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    29
7while/TensorArrayV2Read/TensorListGetItem/element_shape”
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemҐ
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMulХ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/MatMul_1Д
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
	while/addБ
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€А2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim„
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
while/splitq
while/SigmoidSigmoidwhile/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoidu
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_1y
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	while/mulh

while/TanhTanhwhile/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2

while/Tanhv
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_1u
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/add_1u
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Sigmoid_2g
while/Tanh_1Tanhwhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Tanh_1z
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/mul_2”
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
while/Identity_2Н
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3s
while/Identity_4Identitywhile/mul_2:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
while/Identity_4s
while/Identity_5Identitywhile/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
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
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	 А:%	!

_output_shapes
:	 А:!


_output_shapes	
:А
©е
с
9__inference___backward_gpu_lstm_with_fallback_24597_24773
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

identity_5Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4£
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeљ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€25
3gradients/strided_slice_grad/StridedSliceGrad/begin∞
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endЄ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesџ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradћ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationи
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape∆
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shapeћ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2"
 gradients/Squeeze_1_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeµ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropƒ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation€
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeк
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeр
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rankє
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЙ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_1_grad/ShapeН
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_1Н
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_2Н
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_3Н
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_4Н
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_5Н
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_6Н
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_7М
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8М
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9О
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10О
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11О
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12О
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13О
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14О
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15†
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetН
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_1_grad/SliceУ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_1У
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_2У
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_3У
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_4У
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_5У
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_6У
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_7Т
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8Т
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9Ц
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10Ц
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11Ц
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12Ц
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13Ц
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14Ц
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2
gradients/Reshape_grad/Shape√
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:  2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_1_grad/ShapeЋ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_2_grad/ShapeЋ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_3_grad/ShapeЋ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/ShapeЋ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/ShapeЋ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/ShapeЋ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/ShapeЋ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape«
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape«
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/ShapeЋ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/ShapeЋ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/ShapeЋ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/ReshapeМ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/ShapeЋ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/ReshapeМ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/ShapeЋ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/ReshapeМ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/ShapeЋ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshapeћ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationЁ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_1_grad/transposeћ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationя
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_2_grad/transposeћ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationя
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_3_grad/transposeћ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationя
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_4_grad/transposeћ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationя
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transposeћ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationя
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transposeћ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationя
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transposeћ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationя
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concatќ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_grad/concat÷
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankѓ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1р
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetс
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceч
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1З
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Д

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Г
_input_shapesс
о:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : :€€€€€€€€€€€€€€€€€€ ::€€€€€€€€€ :€€€€€€€€€ ::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB::€€€€€€€€€ :€€€€€€€€€ : ::::::::: : : : *=
api_implements+)lstm_5bfcafc0-d370-4fe8-aa6a-bcf751470102*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_24772*
go_backwards( *

time_major( :- )
'
_output_shapes
:€€€€€€€€€ ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ : 

_output_shapes
::1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :	

_output_shapes
:::
6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :!

_output_shapes	
:АB: 

_output_shapes
::-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
є
≥
$__inference_lstm_layer_call_fn_25895
inputs_0
unknown:	 А
	unknown_0:	 А
	unknown_1:	А
identityИҐStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_224442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs/0
к
°
E__inference_sequential_layer_call_and_return_conditional_losses_24831

inputs#
embedding_24814:
†Н 

lstm_24817:	 А

lstm_24819:	 А

lstm_24821:	А
dense_24825: 
dense_24827:
identityИҐdense/StatefulPartitionedCallҐdropout/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallҐlstm/StatefulPartitionedCallУ
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_24814*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_238082#
!embedding/StatefulPartitionedCall≤
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_24817
lstm_24819
lstm_24821*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_247752
lstm/StatefulPartitionedCallК
dropout/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_243242!
dropout/StatefulPartitionedCallІ
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_24825dense_24827*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_242722
dense/StatefulPartitionedCallБ
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity”
NoOpNoOp^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ђ	
Љ
while_cond_26874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_26874___redundant_placeholder03
/while_while_cond_26874___redundant_placeholder13
/while_while_cond_26874___redundant_placeholder23
/while_while_cond_26874___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
ЎA
њ
__inference_standard_lstm_23973

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
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
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
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceЕ
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€2
TensorArrayV2/element_shape∞
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2њ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    27
5TensorArrayUnstack/TensorListFromTensor/element_shapeш
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
strided_slice_1/stack_2ь
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А2
MatMulk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€А2

MatMul_1l
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€А2
add_
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€А2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimњ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_split2
split_
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2	
Sigmoidc
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_1Z
mulMulSigmoid_1:y:0init_c*
T0*'
_output_shapes
:€€€€€€€€€ 2
mulV
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh^
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_1]
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
add_1c
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 2
	Sigmoid_2U
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tanh_1b
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
mul_2П
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    2
TensorArrayV2_1/element_shapeґ
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
€€€€€€€€€2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterљ
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*c
_output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_23888*
condR
while_cond_23887*b
output_shapesQ
O: : : : :€€€€€€€€€ :€€€€€€€€€ : : :	 А:	 А:А*
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    22
0TensorArrayV2Stack/TensorListStack/element_shapeс
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
element_dtype02$
"TensorArrayV2Stack/TensorListStackБ
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice_2/stack_2Ъ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/permЃ
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?2	
runtimel
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_1:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1f

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2f

Identity_3Identitywhile:output:5*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_525af5bc-5ea8-41a0-8d5a-d5ed2d6847eb*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
¬
€
E__inference_sequential_layer_call_and_return_conditional_losses_24279

inputs#
embedding_23809:
†Н 

lstm_24247:	 А

lstm_24249:	 А

lstm_24251:	А
dense_24273: 
dense_24275:
identityИҐdense/StatefulPartitionedCallҐ!embedding/StatefulPartitionedCallҐlstm/StatefulPartitionedCallУ
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_23809*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_238082#
!embedding/StatefulPartitionedCall≤
lstm/StatefulPartitionedCallStatefulPartitionedCall*embedding/StatefulPartitionedCall:output:0
lstm_24247
lstm_24249
lstm_24251*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_lstm_layer_call_and_return_conditional_losses_242462
lstm/StatefulPartitionedCallт
dropout/PartitionedCallPartitionedCall%lstm/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_242592
dropout/PartitionedCallЯ
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_24273dense_24275*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_242722
dense/StatefulPartitionedCallБ
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity±
NoOpNoOp^dense/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^lstm/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:€€€€€€€€€€€€€€€€€€: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
п
`
B__inference_dropout_layer_call_and_return_conditional_losses_27683

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€ :O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
»H
Ћ
(__inference_gpu_lstm_with_fallback_24596

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

identity_4Иu
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permГ
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim}

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimГ
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisЂ
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:АB2

concat_1я
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_5bfcafc0-d370-4fe8-aa6a-bcf751470102*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ЬT
£
&__forward_gpu_lstm_with_fallback_25849

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
concat_axisИu
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
ExpandDims/dim

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2

ExpandDimsf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dimЕ
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2
ExpandDims_1d
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dimС
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim°
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(:  :  :  :  *
	num_split2	
split_1g

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    2

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
:А2
concath
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim®
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0: : : : : : : : *
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm{
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:  2
transpose_1d
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А2	
Reshapeu
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm{
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:  2
transpose_2h
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_1u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm{
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:  2
transpose_3h
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_2u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm{
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:  2
transpose_4h
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_3u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm}
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:  2
transpose_5h
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_4u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm}
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:  2
transpose_6h
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_5u
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_7/perm}
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:  2
transpose_7h
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_6u
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_8/perm}
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:  2
transpose_8h
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:А2
	Reshape_7h
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
: 2
	Reshape_8h
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
: 2
	Reshape_9j

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
: 2

Reshape_10j

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
: 2

Reshape_11j

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
: 2

Reshape_12j

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
: 2

Reshape_13j

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
: 2

Reshape_14j

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
: 2

Reshape_15`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axisР

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T02

concat_1г
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*f
_output_shapesT
R:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
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
strided_slice/stack_2ц
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_mask2
strided_slicey
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_9/permФ
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
transpose_9{
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2	
Squeeze
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*'
_output_shapes
:€€€€€€€€€ *
squeeze_dims
 2
	Squeeze_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimej
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identityt

Identity_1Identitytranspose_9:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity_1h

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2j

Identity_3IdentitySqueeze_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

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
_construction_contextkEagerRuntime*v
_input_shapese
c:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :	 А:	 А:А*=
api_implements+)lstm_efdfea34-4a7d-43a5-a5f6-2dd1ea1b3e2a*
api_preferred_deviceGPU*U
backward_function_name;9__inference___backward_gpu_lstm_with_fallback_25674_25850*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_h:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:QM

_output_shapes
:	 А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
©е
с
9__inference___backward_gpu_lstm_with_fallback_21819_21995
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

identity_5Иu
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_0Д
gradients/grad_ys_1Identityplaceholder_1*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/grad_ys_1w
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_2w
gradients/grad_ys_3Identityplaceholder_3*
T0*'
_output_shapes
:€€€€€€€€€ 2
gradients/grad_ys_3f
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: 2
gradients/grad_ys_4£
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shapeљ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€25
3gradients/strided_slice_grad/StridedSliceGrad/begin∞
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/endЄ
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/stridesџ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGradћ
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:2.
,gradients/transpose_9_grad/InvertPermutationи
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2&
$gradients/transpose_9_grad/transposeС
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape∆
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2 
gradients/Squeeze_grad/ReshapeЧ
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
:2 
gradients/Squeeze_1_grad/Shapeћ
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€ 2"
 gradients/Squeeze_1_grad/ReshapeФ
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
gradients/AddN{
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_likeµ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB2*
(gradients/CudnnRNN_grad/CudnnRNNBackpropƒ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation€
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2$
"gradients/transpose_grad/transposeШ
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shapeк
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2#
!gradients/ExpandDims_grad/ReshapeЮ
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
:2#
!gradients/ExpandDims_1_grad/Shapeр
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2%
#gradients/ExpandDims_1_grad/Reshape~
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_1_grad/Rankє
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_1_grad/modЙ
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_1_grad/ShapeН
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_1Н
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_2Н
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_3Н
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_4Н
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_5Н
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_6Н
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А2!
gradients/concat_1_grad/Shape_7М
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_8М
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/concat_1_grad/Shape_9О
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_10О
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_11О
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_12О
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_13О
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_14О
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB: 2"
 gradients/concat_1_grad/Shape_15†
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::2&
$gradients/concat_1_grad/ConcatOffsetН
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_1_grad/SliceУ
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_1У
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_2У
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_3У
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_4У
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_5У
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_6У
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:А2!
gradients/concat_1_grad/Slice_7Т
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_8Т
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
: 2!
gradients/concat_1_grad/Slice_9Ц
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_10Ц
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_11Ц
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_12Ц
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_13Ц
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_14Ц
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
: 2"
 gradients/concat_1_grad/Slice_15Н
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2
gradients/Reshape_grad/Shape√
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:  2 
gradients/Reshape_grad/ReshapeС
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_1_grad/ShapeЋ
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_1_grad/ReshapeС
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_2_grad/ShapeЋ
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_2_grad/ReshapeС
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_3_grad/ShapeЋ
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_3_grad/ReshapeС
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_4_grad/ShapeЋ
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_4_grad/ReshapeС
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_5_grad/ShapeЋ
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_5_grad/ReshapeС
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_6_grad/ShapeЋ
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_6_grad/ReshapeС
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"        2 
gradients/Reshape_7_grad/ShapeЋ
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:  2"
 gradients/Reshape_7_grad/ReshapeК
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_8_grad/Shape«
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_8_grad/ReshapeК
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2 
gradients/Reshape_9_grad/Shape«
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
: 2"
 gradients/Reshape_9_grad/ReshapeМ
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_10_grad/ShapeЋ
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_10_grad/ReshapeМ
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_11_grad/ShapeЋ
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_11_grad/ReshapeМ
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_12_grad/ShapeЋ
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_12_grad/ReshapeМ
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_13_grad/ShapeЋ
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_13_grad/ReshapeМ
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_14_grad/ShapeЋ
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_14_grad/ReshapeМ
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB: 2!
gradients/Reshape_15_grad/ShapeЋ
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
: 2#
!gradients/Reshape_15_grad/Reshapeћ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutationЁ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_1_grad/transposeћ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutationя
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_2_grad/transposeћ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutationя
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_3_grad/transposeћ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutationя
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_4_grad/transposeћ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutationя
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_5_grad/transposeћ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutationя
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_6_grad/transposeћ
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutationя
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_7_grad/transposeћ
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:2.
,gradients/transpose_8_grad/InvertPermutationя
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:  2&
$gradients/transpose_8_grad/transposeИ
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А2
gradients/split_2_grad/concatќ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_grad/concat÷
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	 А2
gradients/split_1_grad/concatz
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rankѓ
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/modЕ
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/ShapeЙ
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А2
gradients/concat_grad/Shape_1р
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::2$
"gradients/concat_grad/ConcatOffsetс
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Sliceч
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А2
gradients/concat_grad/Slice_1З
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

IdentityВ

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_1Д

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2

Identity_2t

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_3v

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	 А2

Identity_4r

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А2

Identity_5"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Г
_input_shapesс
о:€€€€€€€€€ :€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ : :€€€€€€€€€€€€€€€€€€ ::€€€€€€€€€ :€€€€€€€€€ ::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :АB::€€€€€€€€€ :€€€€€€€€€ : ::::::::: : : : *=
api_implements+)lstm_3dba8709-af84-4628-9163-5f19e6e05ea4*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_lstm_with_fallback_21994*
go_backwards( *

time_major( :- )
'
_output_shapes
:€€€€€€€€€ ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: ::6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ : 

_output_shapes
::1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :	

_output_shapes
:::
6
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :1-
+
_output_shapes
:€€€€€€€€€ :!

_output_shapes	
:АB: 

_output_shapes
::-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
ђ	
Љ
while_cond_22085
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice3
/while_while_cond_22085___redundant_placeholder03
/while_while_cond_22085___redundant_placeholder13
/while_while_cond_22085___redundant_placeholder23
/while_while_cond_22085___redundant_placeholder3
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
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : ::::: 
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
: :-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :
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
:"®L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ѕ
serving_default≠
T
embedding_inputA
!serving_default_embedding_input:0€€€€€€€€€€€€€€€€€€9
dense0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Пv
и
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api


signatures
c__call__
*d&call_and_return_all_conditional_losses
e_default_save_signature"
_tf_keras_sequential
µ

embeddings
trainable_variables
	variables
regularization_losses
	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
√
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
•
trainable_variables
	variables
regularization_losses
	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
l__call__
*m&call_and_return_all_conditional_losses"
_tf_keras_layer
њ
 iter

!beta_1

"beta_2
	#decay
$learning_ratemWmXmY%mZ&m['m\v]v^v_%v`&va'vb"
	optimizer
J
0
%1
&2
'3
4
5"
trackable_list_wrapper
J
0
%1
&2
'3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 
(non_trainable_variables
)layer_metrics
	variables
*metrics
+layer_regularization_losses

,layers
trainable_variables
regularization_losses
c__call__
e_default_save_signature
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
,
nserving_default"
signature_map
(:&
†Н 2embedding/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
-non_trainable_variables
trainable_variables
.layer_metrics
	variables
/metrics
0layer_regularization_losses

1layers
regularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
б
2
state_size

%kernel
&recurrent_kernel
'bias
3trainable_variables
4	variables
5regularization_losses
6	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
є
7non_trainable_variables
8layer_metrics
	variables
9metrics

:states
;layer_regularization_losses

<layers
trainable_variables
regularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≠
=non_trainable_variables
trainable_variables
>layer_metrics
	variables
?metrics
@layer_regularization_losses

Alayers
regularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
: 2dense/kernel
:2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Bnon_trainable_variables
trainable_variables
Clayer_metrics
	variables
Dmetrics
Elayer_regularization_losses

Flayers
regularization_losses
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
(:&	 А2lstm/lstm_cell/kernel
2:0	 А2lstm/lstm_cell/recurrent_kernel
": А2lstm/lstm_cell/bias
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
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
5
%0
&1
'2"
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Inon_trainable_variables
3trainable_variables
Jlayer_metrics
4	variables
Kmetrics
Llayer_regularization_losses

Mlayers
5regularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
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
'
0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	Ntotal
	Ocount
P	variables
Q	keras_api"
_tf_keras_metric
^
	Rtotal
	Scount
T
_fn_kwargs
U	variables
V	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
N0
O1"
trackable_list_wrapper
-
P	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
R0
S1"
trackable_list_wrapper
-
U	variables"
_generic_user_object
-:+
†Н 2Adam/embedding/embeddings/m
#:! 2Adam/dense/kernel/m
:2Adam/dense/bias/m
-:+	 А2Adam/lstm/lstm_cell/kernel/m
7:5	 А2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%А2Adam/lstm/lstm_cell/bias/m
-:+
†Н 2Adam/embedding/embeddings/v
#:! 2Adam/dense/kernel/v
:2Adam/dense/bias/v
-:+	 А2Adam/lstm/lstm_cell/kernel/v
7:5	 А2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%А2Adam/lstm/lstm_cell/bias/v
ц2у
*__inference_sequential_layer_call_fn_24294
*__inference_sequential_layer_call_fn_24945
*__inference_sequential_layer_call_fn_24962
*__inference_sequential_layer_call_fn_24863ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
в2я
E__inference_sequential_layer_call_and_return_conditional_losses_25411
E__inference_sequential_layer_call_and_return_conditional_losses_25867
E__inference_sequential_layer_call_and_return_conditional_losses_24883
E__inference_sequential_layer_call_and_return_conditional_losses_24903ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
”B–
 __inference__wrapped_model_22005embedding_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_embedding_layer_call_fn_25874Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_embedding_layer_call_and_return_conditional_losses_25884Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
у2р
$__inference_lstm_layer_call_fn_25895
$__inference_lstm_layer_call_fn_25906
$__inference_lstm_layer_call_fn_25917
$__inference_lstm_layer_call_fn_25928’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
я2№
?__inference_lstm_layer_call_and_return_conditional_losses_26363
?__inference_lstm_layer_call_and_return_conditional_losses_26798
?__inference_lstm_layer_call_and_return_conditional_losses_27233
?__inference_lstm_layer_call_and_return_conditional_losses_27668’
ћ≤»
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
М2Й
'__inference_dropout_layer_call_fn_27673
'__inference_dropout_layer_call_fn_27678і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
¬2њ
B__inference_dropout_layer_call_and_return_conditional_losses_27683
B__inference_dropout_layer_call_and_return_conditional_losses_27695і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ѕ2ћ
%__inference_dense_layer_call_fn_27704Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
к2з
@__inference_dense_layer_call_and_return_conditional_losses_27715Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“Bѕ
#__inference_signature_wrapper_24928embedding_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ƒ2ЅЊ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ƒ2ЅЊ
µ≤±
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 Ю
 __inference__wrapped_model_22005z%&'AҐ>
7Ґ4
2К/
embedding_input€€€€€€€€€€€€€€€€€€
™ "-™*
(
denseК
dense€€€€€€€€€†
@__inference_dense_layer_call_and_return_conditional_losses_27715\/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "%Ґ"
К
0€€€€€€€€€
Ъ x
%__inference_dense_layer_call_fn_27704O/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "К€€€€€€€€€Ґ
B__inference_dropout_layer_call_and_return_conditional_losses_27683\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ Ґ
B__inference_dropout_layer_call_and_return_conditional_losses_27695\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ z
'__inference_dropout_layer_call_fn_27673O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p 
™ "К€€€€€€€€€ z
'__inference_dropout_layer_call_fn_27678O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€ 
p
™ "К€€€€€€€€€ є
D__inference_embedding_layer_call_and_return_conditional_losses_25884q8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€€€€€€€€€€
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€ 
Ъ С
)__inference_embedding_layer_call_fn_25874d8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€€€€€€€€€€
™ "%К"€€€€€€€€€€€€€€€€€€ ј
?__inference_lstm_layer_call_and_return_conditional_losses_26363}%&'OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€ 

 
p 

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ ј
?__inference_lstm_layer_call_and_return_conditional_losses_26798}%&'OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€ 

 
p

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ є
?__inference_lstm_layer_call_and_return_conditional_losses_27233v%&'HҐE
>Ґ;
-К*
inputs€€€€€€€€€€€€€€€€€€ 

 
p 

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ є
?__inference_lstm_layer_call_and_return_conditional_losses_27668v%&'HҐE
>Ґ;
-К*
inputs€€€€€€€€€€€€€€€€€€ 

 
p

 
™ "%Ґ"
К
0€€€€€€€€€ 
Ъ Ш
$__inference_lstm_layer_call_fn_25895p%&'OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€ 

 
p 

 
™ "К€€€€€€€€€ Ш
$__inference_lstm_layer_call_fn_25906p%&'OҐL
EҐB
4Ъ1
/К,
inputs/0€€€€€€€€€€€€€€€€€€ 

 
p

 
™ "К€€€€€€€€€ С
$__inference_lstm_layer_call_fn_25917i%&'HҐE
>Ґ;
-К*
inputs€€€€€€€€€€€€€€€€€€ 

 
p 

 
™ "К€€€€€€€€€ С
$__inference_lstm_layer_call_fn_25928i%&'HҐE
>Ґ;
-К*
inputs€€€€€€€€€€€€€€€€€€ 

 
p

 
™ "К€€€€€€€€€ √
E__inference_sequential_layer_call_and_return_conditional_losses_24883z%&'IҐF
?Ґ<
2К/
embedding_input€€€€€€€€€€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ √
E__inference_sequential_layer_call_and_return_conditional_losses_24903z%&'IҐF
?Ґ<
2К/
embedding_input€€€€€€€€€€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ї
E__inference_sequential_layer_call_and_return_conditional_losses_25411q%&'@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ї
E__inference_sequential_layer_call_and_return_conditional_losses_25867q%&'@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ы
*__inference_sequential_layer_call_fn_24294m%&'IҐF
?Ґ<
2К/
embedding_input€€€€€€€€€€€€€€€€€€
p 

 
™ "К€€€€€€€€€Ы
*__inference_sequential_layer_call_fn_24863m%&'IҐF
?Ґ<
2К/
embedding_input€€€€€€€€€€€€€€€€€€
p

 
™ "К€€€€€€€€€Т
*__inference_sequential_layer_call_fn_24945d%&'@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p 

 
™ "К€€€€€€€€€Т
*__inference_sequential_layer_call_fn_24962d%&'@Ґ=
6Ґ3
)К&
inputs€€€€€€€€€€€€€€€€€€
p

 
™ "К€€€€€€€€€µ
#__inference_signature_wrapper_24928Н%&'TҐQ
Ґ 
J™G
E
embedding_input2К/
embedding_input€€€€€€€€€€€€€€€€€€"-™*
(
denseК
dense€€€€€€€€€