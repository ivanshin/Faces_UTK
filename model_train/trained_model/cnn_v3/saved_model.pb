шо
└Ћ
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
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Щ
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%иЛ8"&
exponential_avg_factorfloat%  ђ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
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
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
њ
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.6.42v2.6.3-62-g9ef160463d18ъх
ё
conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_24/kernel
}
$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*&
_output_shapes
:*
dtype0
t
conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_24/bias
m
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes
:*
dtype0
љ
batch_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_24/gamma
Ѕ
0batch_normalization_24/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_24/gamma*
_output_shapes
:*
dtype0
ј
batch_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_24/beta
Є
/batch_normalization_24/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_24/beta*
_output_shapes
:*
dtype0
ю
"batch_normalization_24/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_24/moving_mean
Ћ
6batch_normalization_24/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_24/moving_mean*
_output_shapes
:*
dtype0
ц
&batch_normalization_24/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_24/moving_variance
Ю
:batch_normalization_24/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_24/moving_variance*
_output_shapes
:*
dtype0
ё
conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*!
shared_nameconv2d_25/kernel
}
$conv2d_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_25/kernel*&
_output_shapes
:<*
dtype0
t
conv2d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_nameconv2d_25/bias
m
"conv2d_25/bias/Read/ReadVariableOpReadVariableOpconv2d_25/bias*
_output_shapes
:<*
dtype0
љ
batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*-
shared_namebatch_normalization_25/gamma
Ѕ
0batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_25/gamma*
_output_shapes
:<*
dtype0
ј
batch_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*,
shared_namebatch_normalization_25/beta
Є
/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_25/beta*
_output_shapes
:<*
dtype0
ю
"batch_normalization_25/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*3
shared_name$"batch_normalization_25/moving_mean
Ћ
6batch_normalization_25/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_25/moving_mean*
_output_shapes
:<*
dtype0
ц
&batch_normalization_25/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*7
shared_name(&batch_normalization_25/moving_variance
Ю
:batch_normalization_25/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_25/moving_variance*
_output_shapes
:<*
dtype0
ё
conv2d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:<<*!
shared_nameconv2d_26/kernel
}
$conv2d_26/kernel/Read/ReadVariableOpReadVariableOpconv2d_26/kernel*&
_output_shapes
:<<*
dtype0
t
conv2d_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_nameconv2d_26/bias
m
"conv2d_26/bias/Read/ReadVariableOpReadVariableOpconv2d_26/bias*
_output_shapes
:<*
dtype0
љ
batch_normalization_26/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*-
shared_namebatch_normalization_26/gamma
Ѕ
0batch_normalization_26/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_26/gamma*
_output_shapes
:<*
dtype0
ј
batch_normalization_26/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*,
shared_namebatch_normalization_26/beta
Є
/batch_normalization_26/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_26/beta*
_output_shapes
:<*
dtype0
ю
"batch_normalization_26/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*3
shared_name$"batch_normalization_26/moving_mean
Ћ
6batch_normalization_26/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_26/moving_mean*
_output_shapes
:<*
dtype0
ц
&batch_normalization_26/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*7
shared_name(&batch_normalization_26/moving_variance
Ю
:batch_normalization_26/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_26/moving_variance*
_output_shapes
:<*
dtype0
ё
conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*!
shared_nameconv2d_27/kernel
}
$conv2d_27/kernel/Read/ReadVariableOpReadVariableOpconv2d_27/kernel*&
_output_shapes
:<*
dtype0
t
conv2d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_27/bias
m
"conv2d_27/bias/Read/ReadVariableOpReadVariableOpconv2d_27/bias*
_output_shapes
:*
dtype0
љ
batch_normalization_27/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_27/gamma
Ѕ
0batch_normalization_27/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_27/gamma*
_output_shapes
:*
dtype0
ј
batch_normalization_27/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_27/beta
Є
/batch_normalization_27/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_27/beta*
_output_shapes
:*
dtype0
ю
"batch_normalization_27/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_27/moving_mean
Ћ
6batch_normalization_27/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_27/moving_mean*
_output_shapes
:*
dtype0
ц
&batch_normalization_27/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_27/moving_variance
Ю
:batch_normalization_27/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_27/moving_variance*
_output_shapes
:*
dtype0
|
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
■У* 
shared_namedense_21/kernel
u
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel* 
_output_shapes
:
■У*
dtype0
s
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:У*
shared_namedense_21/bias
l
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes	
:У*
dtype0
|
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
УЗ* 
shared_namedense_22/kernel
u
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel* 
_output_shapes
:
УЗ*
dtype0
s
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:З*
shared_namedense_22/bias
l
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes	
:З*
dtype0
|
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЗЩ* 
shared_namedense_23/kernel
u
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel* 
_output_shapes
:
ЗЩ*
dtype0
s
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Щ*
shared_namedense_23/bias
l
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes	
:Щ*
dtype0
{
dense_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Щ* 
shared_namedense_24/kernel
t
#dense_24/kernel/Read/ReadVariableOpReadVariableOpdense_24/kernel*
_output_shapes
:	Щ*
dtype0
r
dense_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_24/bias
k
!dense_24/bias/Read/ReadVariableOpReadVariableOpdense_24/bias*
_output_shapes
:*
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
њ
Adam/conv2d_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_24/kernel/m
І
+Adam/conv2d_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/m*&
_output_shapes
:*
dtype0
ѓ
Adam/conv2d_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_24/bias/m
{
)Adam/conv2d_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/m*
_output_shapes
:*
dtype0
ъ
#Adam/batch_normalization_24/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_24/gamma/m
Ќ
7Adam/batch_normalization_24/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_24/gamma/m*
_output_shapes
:*
dtype0
ю
"Adam/batch_normalization_24/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_24/beta/m
Ћ
6Adam/batch_normalization_24/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_24/beta/m*
_output_shapes
:*
dtype0
њ
Adam/conv2d_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*(
shared_nameAdam/conv2d_25/kernel/m
І
+Adam/conv2d_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/m*&
_output_shapes
:<*
dtype0
ѓ
Adam/conv2d_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*&
shared_nameAdam/conv2d_25/bias/m
{
)Adam/conv2d_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/m*
_output_shapes
:<*
dtype0
ъ
#Adam/batch_normalization_25/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*4
shared_name%#Adam/batch_normalization_25/gamma/m
Ќ
7Adam/batch_normalization_25/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_25/gamma/m*
_output_shapes
:<*
dtype0
ю
"Adam/batch_normalization_25/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*3
shared_name$"Adam/batch_normalization_25/beta/m
Ћ
6Adam/batch_normalization_25/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_25/beta/m*
_output_shapes
:<*
dtype0
њ
Adam/conv2d_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<<*(
shared_nameAdam/conv2d_26/kernel/m
І
+Adam/conv2d_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/m*&
_output_shapes
:<<*
dtype0
ѓ
Adam/conv2d_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*&
shared_nameAdam/conv2d_26/bias/m
{
)Adam/conv2d_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/m*
_output_shapes
:<*
dtype0
ъ
#Adam/batch_normalization_26/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*4
shared_name%#Adam/batch_normalization_26/gamma/m
Ќ
7Adam/batch_normalization_26/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_26/gamma/m*
_output_shapes
:<*
dtype0
ю
"Adam/batch_normalization_26/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*3
shared_name$"Adam/batch_normalization_26/beta/m
Ћ
6Adam/batch_normalization_26/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_26/beta/m*
_output_shapes
:<*
dtype0
њ
Adam/conv2d_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*(
shared_nameAdam/conv2d_27/kernel/m
І
+Adam/conv2d_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/m*&
_output_shapes
:<*
dtype0
ѓ
Adam/conv2d_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_27/bias/m
{
)Adam/conv2d_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/m*
_output_shapes
:*
dtype0
ъ
#Adam/batch_normalization_27/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_27/gamma/m
Ќ
7Adam/batch_normalization_27/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_27/gamma/m*
_output_shapes
:*
dtype0
ю
"Adam/batch_normalization_27/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_27/beta/m
Ћ
6Adam/batch_normalization_27/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_27/beta/m*
_output_shapes
:*
dtype0
і
Adam/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
■У*'
shared_nameAdam/dense_21/kernel/m
Ѓ
*Adam/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/m* 
_output_shapes
:
■У*
dtype0
Ђ
Adam/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:У*%
shared_nameAdam/dense_21/bias/m
z
(Adam/dense_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/m*
_output_shapes	
:У*
dtype0
і
Adam/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
УЗ*'
shared_nameAdam/dense_22/kernel/m
Ѓ
*Adam/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/m* 
_output_shapes
:
УЗ*
dtype0
Ђ
Adam/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:З*%
shared_nameAdam/dense_22/bias/m
z
(Adam/dense_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/m*
_output_shapes	
:З*
dtype0
і
Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЗЩ*'
shared_nameAdam/dense_23/kernel/m
Ѓ
*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m* 
_output_shapes
:
ЗЩ*
dtype0
Ђ
Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Щ*%
shared_nameAdam/dense_23/bias/m
z
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes	
:Щ*
dtype0
Ѕ
Adam/dense_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Щ*'
shared_nameAdam/dense_24/kernel/m
ѓ
*Adam/dense_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/m*
_output_shapes
:	Щ*
dtype0
ђ
Adam/dense_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_24/bias/m
y
(Adam/dense_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/m*
_output_shapes
:*
dtype0
њ
Adam/conv2d_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_24/kernel/v
І
+Adam/conv2d_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/v*&
_output_shapes
:*
dtype0
ѓ
Adam/conv2d_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_24/bias/v
{
)Adam/conv2d_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/v*
_output_shapes
:*
dtype0
ъ
#Adam/batch_normalization_24/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_24/gamma/v
Ќ
7Adam/batch_normalization_24/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_24/gamma/v*
_output_shapes
:*
dtype0
ю
"Adam/batch_normalization_24/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_24/beta/v
Ћ
6Adam/batch_normalization_24/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_24/beta/v*
_output_shapes
:*
dtype0
њ
Adam/conv2d_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*(
shared_nameAdam/conv2d_25/kernel/v
І
+Adam/conv2d_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/v*&
_output_shapes
:<*
dtype0
ѓ
Adam/conv2d_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*&
shared_nameAdam/conv2d_25/bias/v
{
)Adam/conv2d_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/v*
_output_shapes
:<*
dtype0
ъ
#Adam/batch_normalization_25/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*4
shared_name%#Adam/batch_normalization_25/gamma/v
Ќ
7Adam/batch_normalization_25/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_25/gamma/v*
_output_shapes
:<*
dtype0
ю
"Adam/batch_normalization_25/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*3
shared_name$"Adam/batch_normalization_25/beta/v
Ћ
6Adam/batch_normalization_25/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_25/beta/v*
_output_shapes
:<*
dtype0
њ
Adam/conv2d_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<<*(
shared_nameAdam/conv2d_26/kernel/v
І
+Adam/conv2d_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/v*&
_output_shapes
:<<*
dtype0
ѓ
Adam/conv2d_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*&
shared_nameAdam/conv2d_26/bias/v
{
)Adam/conv2d_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/v*
_output_shapes
:<*
dtype0
ъ
#Adam/batch_normalization_26/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*4
shared_name%#Adam/batch_normalization_26/gamma/v
Ќ
7Adam/batch_normalization_26/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_26/gamma/v*
_output_shapes
:<*
dtype0
ю
"Adam/batch_normalization_26/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*3
shared_name$"Adam/batch_normalization_26/beta/v
Ћ
6Adam/batch_normalization_26/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_26/beta/v*
_output_shapes
:<*
dtype0
њ
Adam/conv2d_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*(
shared_nameAdam/conv2d_27/kernel/v
І
+Adam/conv2d_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/v*&
_output_shapes
:<*
dtype0
ѓ
Adam/conv2d_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_27/bias/v
{
)Adam/conv2d_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/v*
_output_shapes
:*
dtype0
ъ
#Adam/batch_normalization_27/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_27/gamma/v
Ќ
7Adam/batch_normalization_27/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_27/gamma/v*
_output_shapes
:*
dtype0
ю
"Adam/batch_normalization_27/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_27/beta/v
Ћ
6Adam/batch_normalization_27/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_27/beta/v*
_output_shapes
:*
dtype0
і
Adam/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
■У*'
shared_nameAdam/dense_21/kernel/v
Ѓ
*Adam/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/v* 
_output_shapes
:
■У*
dtype0
Ђ
Adam/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:У*%
shared_nameAdam/dense_21/bias/v
z
(Adam/dense_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/v*
_output_shapes	
:У*
dtype0
і
Adam/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
УЗ*'
shared_nameAdam/dense_22/kernel/v
Ѓ
*Adam/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/v* 
_output_shapes
:
УЗ*
dtype0
Ђ
Adam/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:З*%
shared_nameAdam/dense_22/bias/v
z
(Adam/dense_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/v*
_output_shapes	
:З*
dtype0
і
Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ЗЩ*'
shared_nameAdam/dense_23/kernel/v
Ѓ
*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v* 
_output_shapes
:
ЗЩ*
dtype0
Ђ
Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Щ*%
shared_nameAdam/dense_23/bias/v
z
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes	
:Щ*
dtype0
Ѕ
Adam/dense_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Щ*'
shared_nameAdam/dense_24/kernel/v
ѓ
*Adam/dense_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/kernel/v*
_output_shapes
:	Щ*
dtype0
ђ
Adam/dense_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_24/bias/v
y
(Adam/dense_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_24/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ќћ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЛЊ
valueкЊB┬Њ B║Њ
Ф
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer-16
layer_with_weights-10
layer-17
layer_with_weights-11
layer-18
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
R
$	variables
%regularization_losses
&trainable_variables
'	keras_api
Ќ
(axis
	)gamma
*beta
+moving_mean
,moving_variance
-	variables
.regularization_losses
/trainable_variables
0	keras_api
h

1kernel
2bias
3	variables
4regularization_losses
5trainable_variables
6	keras_api
R
7	variables
8regularization_losses
9trainable_variables
:	keras_api
Ќ
;axis
	<gamma
=beta
>moving_mean
?moving_variance
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api
h

Dkernel
Ebias
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
R
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
Ќ
Naxis
	Ogamma
Pbeta
Qmoving_mean
Rmoving_variance
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
h

Wkernel
Xbias
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
R
]	variables
^regularization_losses
_trainable_variables
`	keras_api
Ќ
aaxis
	bgamma
cbeta
dmoving_mean
emoving_variance
f	variables
gregularization_losses
htrainable_variables
i	keras_api
R
j	variables
kregularization_losses
ltrainable_variables
m	keras_api
h

nkernel
obias
p	variables
qregularization_losses
rtrainable_variables
s	keras_api
h

tkernel
ubias
v	variables
wregularization_losses
xtrainable_variables
y	keras_api
R
z	variables
{regularization_losses
|trainable_variables
}	keras_api
l

~kernel
bias
ђ	variables
Ђregularization_losses
ѓtrainable_variables
Ѓ	keras_api
n
ёkernel
	Ёbias
є	variables
Єregularization_losses
ѕtrainable_variables
Ѕ	keras_api
Е
	іiter
Іbeta_1
їbeta_2

Їdecay
јlearning_ratem■m )mђ*mЂ1mѓ2mЃ<mё=mЁDmєEmЄOmѕPmЅWmіXmІbmїcmЇnmјomЈtmљumЉ~mњmЊ	ёmћ	ЁmЋvќvЌ)vў*vЎ1vџ2vЏ<vю=vЮDvъEvЪOvаPvАWvбXvБbvцcvЦnvдovДtvеuvЕ~vфvФ	ёvг	ЁvГ
 
И
0
1
)2
*3
14
25
<6
=7
D8
E9
O10
P11
W12
X13
b14
c15
n16
o17
t18
u19
~20
21
ё22
Ё23
Э
0
1
)2
*3
+4
,5
16
27
<8
=9
>10
?11
D12
E13
O14
P15
Q16
R17
W18
X19
b20
c21
d22
e23
n24
o25
t26
u27
~28
29
ё30
Ё31
▓
Јmetrics
љnon_trainable_variables
regularization_losses
trainable_variables
Љlayers
њlayer_metrics
	variables
 Њlayer_regularization_losses
 
 
 
 
▓
ћmetrics
	variables
Ћnon_trainable_variables
regularization_losses
trainable_variables
ќlayer_metrics
Ќlayers
 ўlayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_24/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_24/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
▓
Ўmetrics
 	variables
џnon_trainable_variables
!regularization_losses
"trainable_variables
Џlayer_metrics
юlayers
 Юlayer_regularization_losses
 
 
 
▓
ъmetrics
$	variables
Ъnon_trainable_variables
%regularization_losses
&trainable_variables
аlayer_metrics
Аlayers
 бlayer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_24/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_24/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_24/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_24/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

)0
*1
+2
,3
 

)0
*1
▓
Бmetrics
-	variables
цnon_trainable_variables
.regularization_losses
/trainable_variables
Цlayer_metrics
дlayers
 Дlayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_25/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_25/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

10
21
 

10
21
▓
еmetrics
3	variables
Еnon_trainable_variables
4regularization_losses
5trainable_variables
фlayer_metrics
Фlayers
 гlayer_regularization_losses
 
 
 
▓
Гmetrics
7	variables
«non_trainable_variables
8regularization_losses
9trainable_variables
»layer_metrics
░layers
 ▒layer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_25/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_25/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_25/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_25/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
>2
?3
 

<0
=1
▓
▓metrics
@	variables
│non_trainable_variables
Aregularization_losses
Btrainable_variables
┤layer_metrics
хlayers
 Хlayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_26/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_26/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

D0
E1
 

D0
E1
▓
иmetrics
F	variables
Иnon_trainable_variables
Gregularization_losses
Htrainable_variables
╣layer_metrics
║layers
 ╗layer_regularization_losses
 
 
 
▓
╝metrics
J	variables
йnon_trainable_variables
Kregularization_losses
Ltrainable_variables
Йlayer_metrics
┐layers
 └layer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_26/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_26/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_26/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_26/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

O0
P1
Q2
R3
 

O0
P1
▓
┴metrics
S	variables
┬non_trainable_variables
Tregularization_losses
Utrainable_variables
├layer_metrics
─layers
 ┼layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_27/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_27/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

W0
X1
 

W0
X1
▓
кmetrics
Y	variables
Кnon_trainable_variables
Zregularization_losses
[trainable_variables
╚layer_metrics
╔layers
 ╩layer_regularization_losses
 
 
 
▓
╦metrics
]	variables
╠non_trainable_variables
^regularization_losses
_trainable_variables
═layer_metrics
╬layers
 ¤layer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_27/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_27/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_27/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_27/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

b0
c1
d2
e3
 

b0
c1
▓
лmetrics
f	variables
Лnon_trainable_variables
gregularization_losses
htrainable_variables
мlayer_metrics
Мlayers
 нlayer_regularization_losses
 
 
 
▓
Нmetrics
j	variables
оnon_trainable_variables
kregularization_losses
ltrainable_variables
Оlayer_metrics
пlayers
 ┘layer_regularization_losses
[Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_21/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

n0
o1
 

n0
o1
▓
┌metrics
p	variables
█non_trainable_variables
qregularization_losses
rtrainable_variables
▄layer_metrics
Пlayers
 яlayer_regularization_losses
[Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_22/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

t0
u1
 

t0
u1
▓
▀metrics
v	variables
Яnon_trainable_variables
wregularization_losses
xtrainable_variables
рlayer_metrics
Рlayers
 сlayer_regularization_losses
 
 
 
▓
Сmetrics
z	variables
тnon_trainable_variables
{regularization_losses
|trainable_variables
Тlayer_metrics
уlayers
 Уlayer_regularization_losses
\Z
VARIABLE_VALUEdense_23/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_23/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

~0
1
 

~0
1
х
жmetrics
ђ	variables
Жnon_trainable_variables
Ђregularization_losses
ѓtrainable_variables
вlayer_metrics
Вlayers
 ьlayer_regularization_losses
\Z
VARIABLE_VALUEdense_24/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_24/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE

ё0
Ё1
 

ё0
Ё1
х
Ьmetrics
є	variables
№non_trainable_variables
Єregularization_losses
ѕtrainable_variables
­layer_metrics
ыlayers
 Ыlayer_regularization_losses
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

з0
З1
8
+0
,1
>2
?3
Q4
R5
d6
e7
ј
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
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
 
 
 
 
 
 
 
 

+0
,1
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
 
 
 
 

>0
?1
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
 
 
 
 

Q0
R1
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
 
 
 
 

d0
e1
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
 
 
 
8

шtotal

Шcount
э	variables
Э	keras_api
I

щtotal

Щcount
ч
_fn_kwargs
Ч	variables
§	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

ш0
Ш1

э	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

щ0
Щ1

Ч	variables
}
VARIABLE_VALUEAdam/conv2d_24/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_24/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Іѕ
VARIABLE_VALUE#Adam/batch_normalization_24/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ѕє
VARIABLE_VALUE"Adam/batch_normalization_24/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_25/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_25/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Іѕ
VARIABLE_VALUE#Adam/batch_normalization_25/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ѕє
VARIABLE_VALUE"Adam/batch_normalization_25/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_26/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_26/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Іѕ
VARIABLE_VALUE#Adam/batch_normalization_26/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ѕє
VARIABLE_VALUE"Adam/batch_normalization_26/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_27/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_27/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Іѕ
VARIABLE_VALUE#Adam/batch_normalization_27/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
Ѕє
VARIABLE_VALUE"Adam/batch_normalization_27/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_23/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_23/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_24/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_24/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_24/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_24/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Іѕ
VARIABLE_VALUE#Adam/batch_normalization_24/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕє
VARIABLE_VALUE"Adam/batch_normalization_24/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_25/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_25/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Іѕ
VARIABLE_VALUE#Adam/batch_normalization_25/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕє
VARIABLE_VALUE"Adam/batch_normalization_25/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_26/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_26/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Іѕ
VARIABLE_VALUE#Adam/batch_normalization_26/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕє
VARIABLE_VALUE"Adam/batch_normalization_26/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_27/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_27/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Іѕ
VARIABLE_VALUE#Adam/batch_normalization_27/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
Ѕє
VARIABLE_VALUE"Adam/batch_normalization_27/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_23/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_23/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_24/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_24/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ј
serving_default_input_7Placeholder*1
_output_shapes
:         ╚╚*
dtype0*&
shape:         ╚╚
џ	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_7conv2d_24/kernelconv2d_24/biasbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceconv2d_25/kernelconv2d_25/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_26/kernelconv2d_26/biasbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv2d_27/kernelconv2d_27/biasbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_variancedense_21/kerneldense_21/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/biasdense_24/kerneldense_24/bias*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8ѓ *.
f)R'
%__inference_signature_wrapper_6546421
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Г"
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_24/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp0batch_normalization_24/gamma/Read/ReadVariableOp/batch_normalization_24/beta/Read/ReadVariableOp6batch_normalization_24/moving_mean/Read/ReadVariableOp:batch_normalization_24/moving_variance/Read/ReadVariableOp$conv2d_25/kernel/Read/ReadVariableOp"conv2d_25/bias/Read/ReadVariableOp0batch_normalization_25/gamma/Read/ReadVariableOp/batch_normalization_25/beta/Read/ReadVariableOp6batch_normalization_25/moving_mean/Read/ReadVariableOp:batch_normalization_25/moving_variance/Read/ReadVariableOp$conv2d_26/kernel/Read/ReadVariableOp"conv2d_26/bias/Read/ReadVariableOp0batch_normalization_26/gamma/Read/ReadVariableOp/batch_normalization_26/beta/Read/ReadVariableOp6batch_normalization_26/moving_mean/Read/ReadVariableOp:batch_normalization_26/moving_variance/Read/ReadVariableOp$conv2d_27/kernel/Read/ReadVariableOp"conv2d_27/bias/Read/ReadVariableOp0batch_normalization_27/gamma/Read/ReadVariableOp/batch_normalization_27/beta/Read/ReadVariableOp6batch_normalization_27/moving_mean/Read/ReadVariableOp:batch_normalization_27/moving_variance/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOp#dense_24/kernel/Read/ReadVariableOp!dense_24/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_24/kernel/m/Read/ReadVariableOp)Adam/conv2d_24/bias/m/Read/ReadVariableOp7Adam/batch_normalization_24/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_24/beta/m/Read/ReadVariableOp+Adam/conv2d_25/kernel/m/Read/ReadVariableOp)Adam/conv2d_25/bias/m/Read/ReadVariableOp7Adam/batch_normalization_25/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_25/beta/m/Read/ReadVariableOp+Adam/conv2d_26/kernel/m/Read/ReadVariableOp)Adam/conv2d_26/bias/m/Read/ReadVariableOp7Adam/batch_normalization_26/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_26/beta/m/Read/ReadVariableOp+Adam/conv2d_27/kernel/m/Read/ReadVariableOp)Adam/conv2d_27/bias/m/Read/ReadVariableOp7Adam/batch_normalization_27/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_27/beta/m/Read/ReadVariableOp*Adam/dense_21/kernel/m/Read/ReadVariableOp(Adam/dense_21/bias/m/Read/ReadVariableOp*Adam/dense_22/kernel/m/Read/ReadVariableOp(Adam/dense_22/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp*Adam/dense_24/kernel/m/Read/ReadVariableOp(Adam/dense_24/bias/m/Read/ReadVariableOp+Adam/conv2d_24/kernel/v/Read/ReadVariableOp)Adam/conv2d_24/bias/v/Read/ReadVariableOp7Adam/batch_normalization_24/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_24/beta/v/Read/ReadVariableOp+Adam/conv2d_25/kernel/v/Read/ReadVariableOp)Adam/conv2d_25/bias/v/Read/ReadVariableOp7Adam/batch_normalization_25/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_25/beta/v/Read/ReadVariableOp+Adam/conv2d_26/kernel/v/Read/ReadVariableOp)Adam/conv2d_26/bias/v/Read/ReadVariableOp7Adam/batch_normalization_26/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_26/beta/v/Read/ReadVariableOp+Adam/conv2d_27/kernel/v/Read/ReadVariableOp)Adam/conv2d_27/bias/v/Read/ReadVariableOp7Adam/batch_normalization_27/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_27/beta/v/Read/ReadVariableOp*Adam/dense_21/kernel/v/Read/ReadVariableOp(Adam/dense_21/bias/v/Read/ReadVariableOp*Adam/dense_22/kernel/v/Read/ReadVariableOp(Adam/dense_22/bias/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOp*Adam/dense_24/kernel/v/Read/ReadVariableOp(Adam/dense_24/bias/v/Read/ReadVariableOpConst*f
Tin_
]2[	*
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
GPU2*0J 8ѓ *)
f$R"
 __inference__traced_save_6547891
┤
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_24/kernelconv2d_24/biasbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceconv2d_25/kernelconv2d_25/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_26/kernelconv2d_26/biasbatch_normalization_26/gammabatch_normalization_26/beta"batch_normalization_26/moving_mean&batch_normalization_26/moving_varianceconv2d_27/kernelconv2d_27/biasbatch_normalization_27/gammabatch_normalization_27/beta"batch_normalization_27/moving_mean&batch_normalization_27/moving_variancedense_21/kerneldense_21/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/biasdense_24/kerneldense_24/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_24/kernel/mAdam/conv2d_24/bias/m#Adam/batch_normalization_24/gamma/m"Adam/batch_normalization_24/beta/mAdam/conv2d_25/kernel/mAdam/conv2d_25/bias/m#Adam/batch_normalization_25/gamma/m"Adam/batch_normalization_25/beta/mAdam/conv2d_26/kernel/mAdam/conv2d_26/bias/m#Adam/batch_normalization_26/gamma/m"Adam/batch_normalization_26/beta/mAdam/conv2d_27/kernel/mAdam/conv2d_27/bias/m#Adam/batch_normalization_27/gamma/m"Adam/batch_normalization_27/beta/mAdam/dense_21/kernel/mAdam/dense_21/bias/mAdam/dense_22/kernel/mAdam/dense_22/bias/mAdam/dense_23/kernel/mAdam/dense_23/bias/mAdam/dense_24/kernel/mAdam/dense_24/bias/mAdam/conv2d_24/kernel/vAdam/conv2d_24/bias/v#Adam/batch_normalization_24/gamma/v"Adam/batch_normalization_24/beta/vAdam/conv2d_25/kernel/vAdam/conv2d_25/bias/v#Adam/batch_normalization_25/gamma/v"Adam/batch_normalization_25/beta/vAdam/conv2d_26/kernel/vAdam/conv2d_26/bias/v#Adam/batch_normalization_26/gamma/v"Adam/batch_normalization_26/beta/vAdam/conv2d_27/kernel/vAdam/conv2d_27/bias/v#Adam/batch_normalization_27/gamma/v"Adam/batch_normalization_27/beta/vAdam/dense_21/kernel/vAdam/dense_21/bias/vAdam/dense_22/kernel/vAdam/dense_22/bias/vAdam/dense_23/kernel/vAdam/dense_23/bias/vAdam/dense_24/kernel/vAdam/dense_24/bias/v*e
Tin^
\2Z*
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
GPU2*0J 8ѓ *,
f'R%
#__inference__traced_restore_6548168╗б
л
┬
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6545667

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1п
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         		:::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         		2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         		: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         		
 
_user_specified_nameinputs
Г
i
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_6544912

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
В
 
F__inference_conv2d_25_layer_call_and_return_conditional_losses_6547011

inputs8
conv2d_readvariableop_resource:<-
biasadd_readvariableop_resource:<
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         KK<*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         KK<2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         KK<2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         KK<2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         KK: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         KK
 
_user_specified_nameinputs
л
┬
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6547155

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1п
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         %%<:<:<:<:<:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         %%<2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         %%<: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         %%<
 
_user_specified_nameinputs
 
М
8__inference_batch_normalization_24_layer_call_fn_6546906

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_65452542
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         KK2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         KK: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         KK
 
_user_specified_nameinputs
Г
i
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6545060

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
А
а
+__inference_conv2d_27_layer_call_fn_6547328

inputs!
unknown:<
	unknown_0:
identityѕбStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_65453752
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         <: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         <
 
_user_specified_nameinputs
А
а
+__inference_conv2d_25_layer_call_fn_6547000

inputs!
unknown:<
	unknown_0:<
identityѕбStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_65452752
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         KK<2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         KK: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         KK
 
_user_specified_nameinputs
Г
i
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_6547026

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Е
d
+__inference_dropout_6_layer_call_fn_6547544

inputs
identityѕбStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         З* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_65456052
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         З2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         З22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         З
 
_user_specified_nameinputs
Г
i
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_6547190

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
В
 
F__inference_conv2d_25_layer_call_and_return_conditional_losses_6545275

inputs8
conv2d_readvariableop_resource:<-
biasadd_readvariableop_resource:<
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         KK<*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         KK<2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         KK<2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         KK<2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         KK: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         KK
 
_user_specified_nameinputs
Ў
┬
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6546955

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
т
ъ
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6547265

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           <:<:<:<:<:*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           <2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           <: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           <
 
_user_specified_nameinputs
Т
c
G__inference_resizing_6_layer_call_and_return_conditional_losses_6545212

inputs
identityk
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"ќ   ќ   2
resize/size┤
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:         ќќ*
half_pixel_centers(2
resize/ResizeBilinearё
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:         ќќ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ╚╚:Y U
1
_output_shapes
:         ╚╚
 
_user_specified_nameinputs
В
 
F__inference_conv2d_27_layer_call_and_return_conditional_losses_6547339

inputs8
conv2d_readvariableop_resource:<-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         <: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         <
 
_user_specified_nameinputs
ыЂ
Ц:
#__inference__traced_restore_6548168
file_prefix;
!assignvariableop_conv2d_24_kernel:/
!assignvariableop_1_conv2d_24_bias:=
/assignvariableop_2_batch_normalization_24_gamma:<
.assignvariableop_3_batch_normalization_24_beta:C
5assignvariableop_4_batch_normalization_24_moving_mean:G
9assignvariableop_5_batch_normalization_24_moving_variance:=
#assignvariableop_6_conv2d_25_kernel:</
!assignvariableop_7_conv2d_25_bias:<=
/assignvariableop_8_batch_normalization_25_gamma:<<
.assignvariableop_9_batch_normalization_25_beta:<D
6assignvariableop_10_batch_normalization_25_moving_mean:<H
:assignvariableop_11_batch_normalization_25_moving_variance:<>
$assignvariableop_12_conv2d_26_kernel:<<0
"assignvariableop_13_conv2d_26_bias:<>
0assignvariableop_14_batch_normalization_26_gamma:<=
/assignvariableop_15_batch_normalization_26_beta:<D
6assignvariableop_16_batch_normalization_26_moving_mean:<H
:assignvariableop_17_batch_normalization_26_moving_variance:<>
$assignvariableop_18_conv2d_27_kernel:<0
"assignvariableop_19_conv2d_27_bias:>
0assignvariableop_20_batch_normalization_27_gamma:=
/assignvariableop_21_batch_normalization_27_beta:D
6assignvariableop_22_batch_normalization_27_moving_mean:H
:assignvariableop_23_batch_normalization_27_moving_variance:7
#assignvariableop_24_dense_21_kernel:
■У0
!assignvariableop_25_dense_21_bias:	У7
#assignvariableop_26_dense_22_kernel:
УЗ0
!assignvariableop_27_dense_22_bias:	З7
#assignvariableop_28_dense_23_kernel:
ЗЩ0
!assignvariableop_29_dense_23_bias:	Щ6
#assignvariableop_30_dense_24_kernel:	Щ/
!assignvariableop_31_dense_24_bias:'
assignvariableop_32_adam_iter:	 )
assignvariableop_33_adam_beta_1: )
assignvariableop_34_adam_beta_2: (
assignvariableop_35_adam_decay: 0
&assignvariableop_36_adam_learning_rate: #
assignvariableop_37_total: #
assignvariableop_38_count: %
assignvariableop_39_total_1: %
assignvariableop_40_count_1: E
+assignvariableop_41_adam_conv2d_24_kernel_m:7
)assignvariableop_42_adam_conv2d_24_bias_m:E
7assignvariableop_43_adam_batch_normalization_24_gamma_m:D
6assignvariableop_44_adam_batch_normalization_24_beta_m:E
+assignvariableop_45_adam_conv2d_25_kernel_m:<7
)assignvariableop_46_adam_conv2d_25_bias_m:<E
7assignvariableop_47_adam_batch_normalization_25_gamma_m:<D
6assignvariableop_48_adam_batch_normalization_25_beta_m:<E
+assignvariableop_49_adam_conv2d_26_kernel_m:<<7
)assignvariableop_50_adam_conv2d_26_bias_m:<E
7assignvariableop_51_adam_batch_normalization_26_gamma_m:<D
6assignvariableop_52_adam_batch_normalization_26_beta_m:<E
+assignvariableop_53_adam_conv2d_27_kernel_m:<7
)assignvariableop_54_adam_conv2d_27_bias_m:E
7assignvariableop_55_adam_batch_normalization_27_gamma_m:D
6assignvariableop_56_adam_batch_normalization_27_beta_m:>
*assignvariableop_57_adam_dense_21_kernel_m:
■У7
(assignvariableop_58_adam_dense_21_bias_m:	У>
*assignvariableop_59_adam_dense_22_kernel_m:
УЗ7
(assignvariableop_60_adam_dense_22_bias_m:	З>
*assignvariableop_61_adam_dense_23_kernel_m:
ЗЩ7
(assignvariableop_62_adam_dense_23_bias_m:	Щ=
*assignvariableop_63_adam_dense_24_kernel_m:	Щ6
(assignvariableop_64_adam_dense_24_bias_m:E
+assignvariableop_65_adam_conv2d_24_kernel_v:7
)assignvariableop_66_adam_conv2d_24_bias_v:E
7assignvariableop_67_adam_batch_normalization_24_gamma_v:D
6assignvariableop_68_adam_batch_normalization_24_beta_v:E
+assignvariableop_69_adam_conv2d_25_kernel_v:<7
)assignvariableop_70_adam_conv2d_25_bias_v:<E
7assignvariableop_71_adam_batch_normalization_25_gamma_v:<D
6assignvariableop_72_adam_batch_normalization_25_beta_v:<E
+assignvariableop_73_adam_conv2d_26_kernel_v:<<7
)assignvariableop_74_adam_conv2d_26_bias_v:<E
7assignvariableop_75_adam_batch_normalization_26_gamma_v:<D
6assignvariableop_76_adam_batch_normalization_26_beta_v:<E
+assignvariableop_77_adam_conv2d_27_kernel_v:<7
)assignvariableop_78_adam_conv2d_27_bias_v:E
7assignvariableop_79_adam_batch_normalization_27_gamma_v:D
6assignvariableop_80_adam_batch_normalization_27_beta_v:>
*assignvariableop_81_adam_dense_21_kernel_v:
■У7
(assignvariableop_82_adam_dense_21_bias_v:	У>
*assignvariableop_83_adam_dense_22_kernel_v:
УЗ7
(assignvariableop_84_adam_dense_22_bias_v:	З>
*assignvariableop_85_adam_dense_23_kernel_v:
ЗЩ7
(assignvariableop_86_adam_dense_23_bias_v:	Щ=
*assignvariableop_87_adam_dense_24_kernel_v:	Щ6
(assignvariableop_88_adam_dense_24_bias_v:
identity_90ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_45бAssignVariableOp_46бAssignVariableOp_47бAssignVariableOp_48бAssignVariableOp_49бAssignVariableOp_5бAssignVariableOp_50бAssignVariableOp_51бAssignVariableOp_52бAssignVariableOp_53бAssignVariableOp_54бAssignVariableOp_55бAssignVariableOp_56бAssignVariableOp_57бAssignVariableOp_58бAssignVariableOp_59бAssignVariableOp_6бAssignVariableOp_60бAssignVariableOp_61бAssignVariableOp_62бAssignVariableOp_63бAssignVariableOp_64бAssignVariableOp_65бAssignVariableOp_66бAssignVariableOp_67бAssignVariableOp_68бAssignVariableOp_69бAssignVariableOp_7бAssignVariableOp_70бAssignVariableOp_71бAssignVariableOp_72бAssignVariableOp_73бAssignVariableOp_74бAssignVariableOp_75бAssignVariableOp_76бAssignVariableOp_77бAssignVariableOp_78бAssignVariableOp_79бAssignVariableOp_8бAssignVariableOp_80бAssignVariableOp_81бAssignVariableOp_82бAssignVariableOp_83бAssignVariableOp_84бAssignVariableOp_85бAssignVariableOp_86бAssignVariableOp_87бAssignVariableOp_88бAssignVariableOp_9ћ2
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Z*
dtype0*а1
valueќ1BЊ1ZB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names┼
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Z*
dtype0*╔
value┐B╝ZB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices­
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*■
_output_shapesв
У::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*h
dtypes^
\2Z	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityа
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_24_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1д
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_24_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2┤
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_24_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3│
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_24_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4║
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_24_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Й
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_24_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6е
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_25_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7д
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_25_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8┤
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_25_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9│
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_25_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Й
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_25_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11┬
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_25_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12г
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_26_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13ф
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_26_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14И
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_26_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15и
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_26_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16Й
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_26_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17┬
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_26_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18г
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_27_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19ф
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_27_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20И
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_27_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21и
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_27_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Й
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_27_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23┬
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_27_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24Ф
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_21_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Е
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_21_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26Ф
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_22_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Е
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_22_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28Ф
AssignVariableOp_28AssignVariableOp#assignvariableop_28_dense_23_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Е
AssignVariableOp_29AssignVariableOp!assignvariableop_29_dense_23_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30Ф
AssignVariableOp_30AssignVariableOp#assignvariableop_30_dense_24_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31Е
AssignVariableOp_31AssignVariableOp!assignvariableop_31_dense_24_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_32Ц
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_iterIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33Д
AssignVariableOp_33AssignVariableOpassignvariableop_33_adam_beta_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Д
AssignVariableOp_34AssignVariableOpassignvariableop_34_adam_beta_2Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35д
AssignVariableOp_35AssignVariableOpassignvariableop_35_adam_decayIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36«
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_learning_rateIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37А
AssignVariableOp_37AssignVariableOpassignvariableop_37_totalIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38А
AssignVariableOp_38AssignVariableOpassignvariableop_38_countIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39Б
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40Б
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_1Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41│
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_24_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42▒
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_24_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43┐
AssignVariableOp_43AssignVariableOp7assignvariableop_43_adam_batch_normalization_24_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44Й
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_batch_normalization_24_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45│
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_25_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46▒
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_25_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47┐
AssignVariableOp_47AssignVariableOp7assignvariableop_47_adam_batch_normalization_25_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48Й
AssignVariableOp_48AssignVariableOp6assignvariableop_48_adam_batch_normalization_25_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49│
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_26_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50▒
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_26_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51┐
AssignVariableOp_51AssignVariableOp7assignvariableop_51_adam_batch_normalization_26_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52Й
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_batch_normalization_26_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53│
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_27_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54▒
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_27_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55┐
AssignVariableOp_55AssignVariableOp7assignvariableop_55_adam_batch_normalization_27_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56Й
AssignVariableOp_56AssignVariableOp6assignvariableop_56_adam_batch_normalization_27_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57▓
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_21_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58░
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_21_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59▓
AssignVariableOp_59AssignVariableOp*assignvariableop_59_adam_dense_22_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60░
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_dense_22_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61▓
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_dense_23_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62░
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_dense_23_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63▓
AssignVariableOp_63AssignVariableOp*assignvariableop_63_adam_dense_24_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64░
AssignVariableOp_64AssignVariableOp(assignvariableop_64_adam_dense_24_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65│
AssignVariableOp_65AssignVariableOp+assignvariableop_65_adam_conv2d_24_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66▒
AssignVariableOp_66AssignVariableOp)assignvariableop_66_adam_conv2d_24_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67┐
AssignVariableOp_67AssignVariableOp7assignvariableop_67_adam_batch_normalization_24_gamma_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68Й
AssignVariableOp_68AssignVariableOp6assignvariableop_68_adam_batch_normalization_24_beta_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69│
AssignVariableOp_69AssignVariableOp+assignvariableop_69_adam_conv2d_25_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70▒
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_conv2d_25_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71┐
AssignVariableOp_71AssignVariableOp7assignvariableop_71_adam_batch_normalization_25_gamma_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72Й
AssignVariableOp_72AssignVariableOp6assignvariableop_72_adam_batch_normalization_25_beta_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73│
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_conv2d_26_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74▒
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_conv2d_26_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75┐
AssignVariableOp_75AssignVariableOp7assignvariableop_75_adam_batch_normalization_26_gamma_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76Й
AssignVariableOp_76AssignVariableOp6assignvariableop_76_adam_batch_normalization_26_beta_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77│
AssignVariableOp_77AssignVariableOp+assignvariableop_77_adam_conv2d_27_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78▒
AssignVariableOp_78AssignVariableOp)assignvariableop_78_adam_conv2d_27_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79┐
AssignVariableOp_79AssignVariableOp7assignvariableop_79_adam_batch_normalization_27_gamma_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80Й
AssignVariableOp_80AssignVariableOp6assignvariableop_80_adam_batch_normalization_27_beta_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81▓
AssignVariableOp_81AssignVariableOp*assignvariableop_81_adam_dense_21_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82░
AssignVariableOp_82AssignVariableOp(assignvariableop_82_adam_dense_21_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83▓
AssignVariableOp_83AssignVariableOp*assignvariableop_83_adam_dense_22_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84░
AssignVariableOp_84AssignVariableOp(assignvariableop_84_adam_dense_22_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85▓
AssignVariableOp_85AssignVariableOp*assignvariableop_85_adam_dense_23_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86░
AssignVariableOp_86AssignVariableOp(assignvariableop_86_adam_dense_23_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87▓
AssignVariableOp_87AssignVariableOp*assignvariableop_87_adam_dense_24_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88░
AssignVariableOp_88AssignVariableOp(assignvariableop_88_adam_dense_24_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_889
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpё
Identity_89Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_89f
Identity_90IdentityIdentity_89:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_90В
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_90Identity_90:output:0*╔
_input_shapesи
┤: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
т
ъ
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6544947

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           <:<:<:<:<:*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           <2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           <: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           <
 
_user_specified_nameinputs
 
М
8__inference_batch_normalization_26_layer_call_fn_6547234

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identityѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_65453542
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         <2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         <: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         <
 
_user_specified_nameinputs
т
ъ
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6547429

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
У
b
F__inference_flatten_6_layer_call_and_return_conditional_losses_6545420

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ~	  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ■2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ■2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         		:W S
/
_output_shapes
:         		
 
_user_specified_nameinputs
А
а
+__inference_conv2d_26_layer_call_fn_6547164

inputs!
unknown:<<
	unknown_0:<
identityѕбStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_65453252
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         %%<2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         %%<: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         %%<
 
_user_specified_nameinputs
К
G
+__inference_dropout_6_layer_call_fn_6547539

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         З* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_65454612
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         З2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         З:P L
(
_output_shapes
:         З
 
_user_specified_nameinputs
т
ъ
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6544799

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           <:<:<:<:<:*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           <2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           <: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           <
 
_user_specified_nameinputs
Ј
щ
E__inference_dense_22_layer_call_and_return_conditional_losses_6545450

inputs2
matmul_readvariableop_resource:
УЗ.
biasadd_readvariableop_resource:	З
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
УЗ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         З2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:З*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         З2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         З2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         З2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         У: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         У
 
_user_specified_nameinputs
§
џ
*__inference_dense_23_layer_call_fn_6547570

inputs
unknown:
ЗЩ
	unknown_0:	Щ
identityѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Щ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_65454742
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         Щ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         З: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         З
 
_user_specified_nameinputs
К	
М
8__inference_batch_normalization_24_layer_call_fn_6546880

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCall║
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_65446512
StatefulPartitionedCallЋ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
К	
М
8__inference_batch_normalization_26_layer_call_fn_6547208

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identityѕбStatefulPartitionedCall║
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           <*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_65449472
StatefulPartitionedCallЋ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           <: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           <
 
_user_specified_nameinputs
я
N
2__inference_max_pooling2d_27_layer_call_fn_6547344

inputs
identityы
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_65450602
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
├d
ъ
I__inference_sequential_6_layer_call_and_return_conditional_losses_6546034

inputs+
conv2d_24_6545951:
conv2d_24_6545953:,
batch_normalization_24_6545957:,
batch_normalization_24_6545959:,
batch_normalization_24_6545961:,
batch_normalization_24_6545963:+
conv2d_25_6545966:<
conv2d_25_6545968:<,
batch_normalization_25_6545972:<,
batch_normalization_25_6545974:<,
batch_normalization_25_6545976:<,
batch_normalization_25_6545978:<+
conv2d_26_6545981:<<
conv2d_26_6545983:<,
batch_normalization_26_6545987:<,
batch_normalization_26_6545989:<,
batch_normalization_26_6545991:<,
batch_normalization_26_6545993:<+
conv2d_27_6545996:<
conv2d_27_6545998:,
batch_normalization_27_6546002:,
batch_normalization_27_6546004:,
batch_normalization_27_6546006:,
batch_normalization_27_6546008:$
dense_21_6546012:
■У
dense_21_6546014:	У$
dense_22_6546017:
УЗ
dense_22_6546019:	З$
dense_23_6546023:
ЗЩ
dense_23_6546025:	Щ#
dense_24_6546028:	Щ
dense_24_6546030:
identityѕб.batch_normalization_24/StatefulPartitionedCallб.batch_normalization_25/StatefulPartitionedCallб.batch_normalization_26/StatefulPartitionedCallб.batch_normalization_27/StatefulPartitionedCallб!conv2d_24/StatefulPartitionedCallб!conv2d_25/StatefulPartitionedCallб!conv2d_26/StatefulPartitionedCallб!conv2d_27/StatefulPartitionedCallб dense_21/StatefulPartitionedCallб dense_22/StatefulPartitionedCallб dense_23/StatefulPartitionedCallб dense_24/StatefulPartitionedCallб!dropout_6/StatefulPartitionedCallУ
resizing_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ќќ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_resizing_6_layer_call_and_return_conditional_losses_65452122
resizing_6/PartitionedCallк
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall#resizing_6/PartitionedCall:output:0conv2d_24_6545951conv2d_24_6545953*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ќќ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_65452252#
!conv2d_24/StatefulPartitionedCallю
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_65452352"
 max_pooling2d_24/PartitionedCall═
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0batch_normalization_24_6545957batch_normalization_24_6545959batch_normalization_24_6545961batch_normalization_24_6545963*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_654584420
.batch_normalization_24/StatefulPartitionedCallп
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0conv2d_25_6545966conv2d_25_6545968*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_65452752#
!conv2d_25/StatefulPartitionedCallю
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_65452852"
 max_pooling2d_25/PartitionedCall═
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0batch_normalization_25_6545972batch_normalization_25_6545974batch_normalization_25_6545976batch_normalization_25_6545978*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_654578520
.batch_normalization_25/StatefulPartitionedCallп
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0conv2d_26_6545981conv2d_26_6545983*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_65453252#
!conv2d_26/StatefulPartitionedCallю
 max_pooling2d_26/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_65453352"
 max_pooling2d_26/PartitionedCall═
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_26/PartitionedCall:output:0batch_normalization_26_6545987batch_normalization_26_6545989batch_normalization_26_6545991batch_normalization_26_6545993*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_654572620
.batch_normalization_26/StatefulPartitionedCallп
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0conv2d_27_6545996conv2d_27_6545998*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_65453752#
!conv2d_27/StatefulPartitionedCallю
 max_pooling2d_27/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_65453852"
 max_pooling2d_27/PartitionedCall═
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0batch_normalization_27_6546002batch_normalization_27_6546004batch_normalization_27_6546006batch_normalization_27_6546008*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_654566720
.batch_normalization_27/StatefulPartitionedCallЇ
flatten_6/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ■* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_65454202
flatten_6/PartitionedCallи
 dense_21/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_21_6546012dense_21_6546014*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         У*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_65454332"
 dense_21/StatefulPartitionedCallЙ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_6546017dense_22_6546019*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         З*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_65454502"
 dense_22/StatefulPartitionedCallЌ
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         З* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_65456052#
!dropout_6/StatefulPartitionedCall┐
 dense_23/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_23_6546023dense_23_6546025*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Щ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_65454742"
 dense_23/StatefulPartitionedCallй
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_6546028dense_24_6546030*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_65454912"
 dense_24/StatefulPartitionedCallё
IdentityIdentity)dense_24/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityм
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall:Y U
1
_output_shapes
:         ╚╚
 
_user_specified_nameinputs
В
 
F__inference_conv2d_26_layer_call_and_return_conditional_losses_6545325

inputs8
conv2d_readvariableop_resource:<<-
biasadd_readvariableop_resource:<
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         %%<*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         %%<2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         %%<2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         %%<2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         %%<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         %%<
 
_user_specified_nameinputs
Г
i
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_6544616

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
К	
М
8__inference_batch_normalization_25_layer_call_fn_6547044

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identityѕбStatefulPartitionedCall║
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           <*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_65447992
StatefulPartitionedCallЋ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           <: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           <
 
_user_specified_nameinputs
В
 
F__inference_conv2d_26_layer_call_and_return_conditional_losses_6547175

inputs8
conv2d_readvariableop_resource:<<-
biasadd_readvariableop_resource:<
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         %%<*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         %%<2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         %%<2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         %%<2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         %%<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         %%<
 
_user_specified_nameinputs
Н
G
+__inference_flatten_6_layer_call_fn_6547488

inputs
identity╚
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ■* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_65454202
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ■2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         		:W S
/
_output_shapes
:         		
 
_user_specified_nameinputs
щ
ў
*__inference_dense_24_layer_call_fn_6547590

inputs
unknown:	Щ
	unknown_0:
identityѕбStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_65454912
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Щ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         Щ
 
_user_specified_nameinputs
Ј
щ
E__inference_dense_23_layer_call_and_return_conditional_losses_6545474

inputs2
matmul_readvariableop_resource:
ЗЩ.
biasadd_readvariableop_resource:	Щ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ЗЩ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Щ2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Щ*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Щ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Щ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Щ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         З: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         З
 
_user_specified_nameinputs
ю
ъ
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6547301

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         <:<:<:<:<:*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         <2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         <: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         <
 
_user_specified_nameinputs
Г
i
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6547354

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
и░
ш'
 __inference__traced_save_6547891
file_prefix/
+savev2_conv2d_24_kernel_read_readvariableop-
)savev2_conv2d_24_bias_read_readvariableop;
7savev2_batch_normalization_24_gamma_read_readvariableop:
6savev2_batch_normalization_24_beta_read_readvariableopA
=savev2_batch_normalization_24_moving_mean_read_readvariableopE
Asavev2_batch_normalization_24_moving_variance_read_readvariableop/
+savev2_conv2d_25_kernel_read_readvariableop-
)savev2_conv2d_25_bias_read_readvariableop;
7savev2_batch_normalization_25_gamma_read_readvariableop:
6savev2_batch_normalization_25_beta_read_readvariableopA
=savev2_batch_normalization_25_moving_mean_read_readvariableopE
Asavev2_batch_normalization_25_moving_variance_read_readvariableop/
+savev2_conv2d_26_kernel_read_readvariableop-
)savev2_conv2d_26_bias_read_readvariableop;
7savev2_batch_normalization_26_gamma_read_readvariableop:
6savev2_batch_normalization_26_beta_read_readvariableopA
=savev2_batch_normalization_26_moving_mean_read_readvariableopE
Asavev2_batch_normalization_26_moving_variance_read_readvariableop/
+savev2_conv2d_27_kernel_read_readvariableop-
)savev2_conv2d_27_bias_read_readvariableop;
7savev2_batch_normalization_27_gamma_read_readvariableop:
6savev2_batch_normalization_27_beta_read_readvariableopA
=savev2_batch_normalization_27_moving_mean_read_readvariableopE
Asavev2_batch_normalization_27_moving_variance_read_readvariableop.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop.
*savev2_dense_24_kernel_read_readvariableop,
(savev2_dense_24_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_24_kernel_m_read_readvariableop4
0savev2_adam_conv2d_24_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_24_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_24_beta_m_read_readvariableop6
2savev2_adam_conv2d_25_kernel_m_read_readvariableop4
0savev2_adam_conv2d_25_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_25_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_25_beta_m_read_readvariableop6
2savev2_adam_conv2d_26_kernel_m_read_readvariableop4
0savev2_adam_conv2d_26_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_26_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_26_beta_m_read_readvariableop6
2savev2_adam_conv2d_27_kernel_m_read_readvariableop4
0savev2_adam_conv2d_27_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_27_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_27_beta_m_read_readvariableop5
1savev2_adam_dense_21_kernel_m_read_readvariableop3
/savev2_adam_dense_21_bias_m_read_readvariableop5
1savev2_adam_dense_22_kernel_m_read_readvariableop3
/savev2_adam_dense_22_bias_m_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableop5
1savev2_adam_dense_24_kernel_m_read_readvariableop3
/savev2_adam_dense_24_bias_m_read_readvariableop6
2savev2_adam_conv2d_24_kernel_v_read_readvariableop4
0savev2_adam_conv2d_24_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_24_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_24_beta_v_read_readvariableop6
2savev2_adam_conv2d_25_kernel_v_read_readvariableop4
0savev2_adam_conv2d_25_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_25_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_25_beta_v_read_readvariableop6
2savev2_adam_conv2d_26_kernel_v_read_readvariableop4
0savev2_adam_conv2d_26_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_26_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_26_beta_v_read_readvariableop6
2savev2_adam_conv2d_27_kernel_v_read_readvariableop4
0savev2_adam_conv2d_27_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_27_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_27_beta_v_read_readvariableop5
1savev2_adam_dense_21_kernel_v_read_readvariableop3
/savev2_adam_dense_21_bias_v_read_readvariableop5
1savev2_adam_dense_22_kernel_v_read_readvariableop3
/savev2_adam_dense_22_bias_v_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableop5
1savev2_adam_dense_24_kernel_v_read_readvariableop3
/savev2_adam_dense_24_bias_v_read_readvariableop
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
ShardedFilenameј2
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Z*
dtype0*а1
valueќ1BЊ1ZB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names┐
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Z*
dtype0*╔
value┐B╝ZB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesи&
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_24_kernel_read_readvariableop)savev2_conv2d_24_bias_read_readvariableop7savev2_batch_normalization_24_gamma_read_readvariableop6savev2_batch_normalization_24_beta_read_readvariableop=savev2_batch_normalization_24_moving_mean_read_readvariableopAsavev2_batch_normalization_24_moving_variance_read_readvariableop+savev2_conv2d_25_kernel_read_readvariableop)savev2_conv2d_25_bias_read_readvariableop7savev2_batch_normalization_25_gamma_read_readvariableop6savev2_batch_normalization_25_beta_read_readvariableop=savev2_batch_normalization_25_moving_mean_read_readvariableopAsavev2_batch_normalization_25_moving_variance_read_readvariableop+savev2_conv2d_26_kernel_read_readvariableop)savev2_conv2d_26_bias_read_readvariableop7savev2_batch_normalization_26_gamma_read_readvariableop6savev2_batch_normalization_26_beta_read_readvariableop=savev2_batch_normalization_26_moving_mean_read_readvariableopAsavev2_batch_normalization_26_moving_variance_read_readvariableop+savev2_conv2d_27_kernel_read_readvariableop)savev2_conv2d_27_bias_read_readvariableop7savev2_batch_normalization_27_gamma_read_readvariableop6savev2_batch_normalization_27_beta_read_readvariableop=savev2_batch_normalization_27_moving_mean_read_readvariableopAsavev2_batch_normalization_27_moving_variance_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop*savev2_dense_24_kernel_read_readvariableop(savev2_dense_24_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_24_kernel_m_read_readvariableop0savev2_adam_conv2d_24_bias_m_read_readvariableop>savev2_adam_batch_normalization_24_gamma_m_read_readvariableop=savev2_adam_batch_normalization_24_beta_m_read_readvariableop2savev2_adam_conv2d_25_kernel_m_read_readvariableop0savev2_adam_conv2d_25_bias_m_read_readvariableop>savev2_adam_batch_normalization_25_gamma_m_read_readvariableop=savev2_adam_batch_normalization_25_beta_m_read_readvariableop2savev2_adam_conv2d_26_kernel_m_read_readvariableop0savev2_adam_conv2d_26_bias_m_read_readvariableop>savev2_adam_batch_normalization_26_gamma_m_read_readvariableop=savev2_adam_batch_normalization_26_beta_m_read_readvariableop2savev2_adam_conv2d_27_kernel_m_read_readvariableop0savev2_adam_conv2d_27_bias_m_read_readvariableop>savev2_adam_batch_normalization_27_gamma_m_read_readvariableop=savev2_adam_batch_normalization_27_beta_m_read_readvariableop1savev2_adam_dense_21_kernel_m_read_readvariableop/savev2_adam_dense_21_bias_m_read_readvariableop1savev2_adam_dense_22_kernel_m_read_readvariableop/savev2_adam_dense_22_bias_m_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop1savev2_adam_dense_24_kernel_m_read_readvariableop/savev2_adam_dense_24_bias_m_read_readvariableop2savev2_adam_conv2d_24_kernel_v_read_readvariableop0savev2_adam_conv2d_24_bias_v_read_readvariableop>savev2_adam_batch_normalization_24_gamma_v_read_readvariableop=savev2_adam_batch_normalization_24_beta_v_read_readvariableop2savev2_adam_conv2d_25_kernel_v_read_readvariableop0savev2_adam_conv2d_25_bias_v_read_readvariableop>savev2_adam_batch_normalization_25_gamma_v_read_readvariableop=savev2_adam_batch_normalization_25_beta_v_read_readvariableop2savev2_adam_conv2d_26_kernel_v_read_readvariableop0savev2_adam_conv2d_26_bias_v_read_readvariableop>savev2_adam_batch_normalization_26_gamma_v_read_readvariableop=savev2_adam_batch_normalization_26_beta_v_read_readvariableop2savev2_adam_conv2d_27_kernel_v_read_readvariableop0savev2_adam_conv2d_27_bias_v_read_readvariableop>savev2_adam_batch_normalization_27_gamma_v_read_readvariableop=savev2_adam_batch_normalization_27_beta_v_read_readvariableop1savev2_adam_dense_21_kernel_v_read_readvariableop/savev2_adam_dense_21_bias_v_read_readvariableop1savev2_adam_dense_22_kernel_v_read_readvariableop/savev2_adam_dense_22_bias_v_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableop1savev2_adam_dense_24_kernel_v_read_readvariableop/savev2_adam_dense_24_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *h
dtypes^
\2Z	2
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

identity_1Identity_1:output:0*ж
_input_shapesО
н: :::::::<:<:<:<:<:<:<<:<:<:<:<:<:<::::::
■У:У:
УЗ:З:
ЗЩ:Щ:	Щ:: : : : : : : : : :::::<:<:<:<:<<:<:<:<:<::::
■У:У:
УЗ:З:
ЗЩ:Щ:	Щ::::::<:<:<:<:<<:<:<:<:<::::
■У:У:
УЗ:З:
ЗЩ:Щ:	Щ:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:<: 

_output_shapes
:<: 	

_output_shapes
:<: 


_output_shapes
:<: 

_output_shapes
:<: 

_output_shapes
:<:,(
&
_output_shapes
:<<: 

_output_shapes
:<: 

_output_shapes
:<: 

_output_shapes
:<: 

_output_shapes
:<: 

_output_shapes
:<:,(
&
_output_shapes
:<: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
■У:!

_output_shapes	
:У:&"
 
_output_shapes
:
УЗ:!

_output_shapes	
:З:&"
 
_output_shapes
:
ЗЩ:!

_output_shapes	
:Щ:%!

_output_shapes
:	Щ:  

_output_shapes
::!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :,*(
&
_output_shapes
:: +

_output_shapes
:: ,

_output_shapes
:: -

_output_shapes
::,.(
&
_output_shapes
:<: /

_output_shapes
:<: 0

_output_shapes
:<: 1

_output_shapes
:<:,2(
&
_output_shapes
:<<: 3

_output_shapes
:<: 4

_output_shapes
:<: 5

_output_shapes
:<:,6(
&
_output_shapes
:<: 7

_output_shapes
:: 8

_output_shapes
:: 9

_output_shapes
::&:"
 
_output_shapes
:
■У:!;

_output_shapes	
:У:&<"
 
_output_shapes
:
УЗ:!=

_output_shapes	
:З:&>"
 
_output_shapes
:
ЗЩ:!?

_output_shapes	
:Щ:%@!

_output_shapes
:	Щ: A

_output_shapes
::,B(
&
_output_shapes
:: C

_output_shapes
:: D

_output_shapes
:: E

_output_shapes
::,F(
&
_output_shapes
:<: G

_output_shapes
:<: H

_output_shapes
:<: I

_output_shapes
:<:,J(
&
_output_shapes
:<<: K

_output_shapes
:<: L

_output_shapes
:<: M

_output_shapes
:<:,N(
&
_output_shapes
:<: O

_output_shapes
:: P

_output_shapes
:: Q

_output_shapes
::&R"
 
_output_shapes
:
■У:!S

_output_shapes	
:У:&T"
 
_output_shapes
:
УЗ:!U

_output_shapes	
:З:&V"
 
_output_shapes
:
ЗЩ:!W

_output_shapes	
:Щ:%X!

_output_shapes
:	Щ: Y

_output_shapes
::Z

_output_shapes
: 
└
i
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_6547195

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         <*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         <2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         %%<:W S
/
_output_shapes
:         %%<
 
_user_specified_nameinputs
└
i
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6545385

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         		*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         		2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
§
џ
*__inference_dense_22_layer_call_fn_6547523

inputs
unknown:
УЗ
	unknown_0:	З
identityѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         З*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_65454502
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         З2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         У: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         У
 
_user_specified_nameinputs
я
N
2__inference_max_pooling2d_26_layer_call_fn_6547180

inputs
identityы
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_65449122
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
└
i
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6547359

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         		*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         		2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
Ў
┬
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6547283

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           <:<:<:<:<:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           <2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           <: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           <
 
_user_specified_nameinputs
§
М
8__inference_batch_normalization_27_layer_call_fn_6547411

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_65456672
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         		2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         		: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         		
 
_user_specified_nameinputs
Ј
щ
E__inference_dense_22_layer_call_and_return_conditional_losses_6547534

inputs2
matmul_readvariableop_resource:
УЗ.
biasadd_readvariableop_resource:	З
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
УЗ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         З2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:З*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         З2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         З2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         З2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         У: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         У
 
_user_specified_nameinputs
У
b
F__inference_flatten_6_layer_call_and_return_conditional_losses_6547494

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ~	  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ■2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ■2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         		:W S
/
_output_shapes
:         		
 
_user_specified_nameinputs
т
ъ
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6547101

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           <:<:<:<:<:*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           <2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           <: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           <
 
_user_specified_nameinputs
В
 
F__inference_conv2d_27_layer_call_and_return_conditional_losses_6545375

inputs8
conv2d_readvariableop_resource:<-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:<*
dtype02
Conv2D/ReadVariableOpБ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         <: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         <
 
_user_specified_nameinputs
Ј
щ
E__inference_dense_21_layer_call_and_return_conditional_losses_6545433

inputs2
matmul_readvariableop_resource:
■У.
biasadd_readvariableop_resource:	У
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
■У*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         У2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:У*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         У2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         У2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         У2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ■: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ■
 
_user_specified_nameinputs
ы
N
2__inference_max_pooling2d_27_layer_call_fn_6547349

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_65453852
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         		2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         :W S
/
_output_shapes
:         
 
_user_specified_nameinputs
л
┬
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6547483

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1п
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         		:::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         		2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         		: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         		
 
_user_specified_nameinputs
Э
 
F__inference_conv2d_24_layer_call_and_return_conditional_losses_6546847

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ќќ*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ќќ2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ќќ2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ќќ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ќќ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
─
i
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_6545235

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         KK*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         KK2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ќќ:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
э
d
F__inference_dropout_6_layer_call_and_return_conditional_losses_6545461

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         З2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         З2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         З:P L
(
_output_shapes
:         З
 
_user_specified_nameinputs
К	
М
8__inference_batch_normalization_27_layer_call_fn_6547372

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCall║
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_65450952
StatefulPartitionedCallЋ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ь
H
,__inference_resizing_6_layer_call_fn_6546821

inputs
identityм
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ќќ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_resizing_6_layer_call_and_return_conditional_losses_65452122
PartitionedCallv
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         ќќ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ╚╚:Y U
1
_output_shapes
:         ╚╚
 
_user_specified_nameinputs
§
М
8__inference_batch_normalization_26_layer_call_fn_6547247

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identityѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_65457262
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         <2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         <: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         <
 
_user_specified_nameinputs
ш
N
2__inference_max_pooling2d_24_layer_call_fn_6546857

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_65452352
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         KK2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ќќ:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
└
i
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_6547031

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         %%<*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         %%<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         KK<:W S
/
_output_shapes
:         KK<
 
_user_specified_nameinputs
─
i
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_6546867

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         KK*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         KK2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ќќ:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
ы
N
2__inference_max_pooling2d_26_layer_call_fn_6547185

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_65453352
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         <2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         %%<:W S
/
_output_shapes
:         %%<
 
_user_specified_nameinputs
ф
С
.__inference_sequential_6_layer_call_fn_6546559

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:<
	unknown_6:<
	unknown_7:<
	unknown_8:<
	unknown_9:<

unknown_10:<$

unknown_11:<<

unknown_12:<

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<$

unknown_17:<

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:
■У

unknown_24:	У

unknown_25:
УЗ

unknown_26:	З

unknown_27:
ЗЩ

unknown_28:	Щ

unknown_29:	Щ

unknown_30:
identityѕбStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *:
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_65460342
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ╚╚
 
_user_specified_nameinputs
Г
i
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_6544764

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
я
N
2__inference_max_pooling2d_24_layer_call_fn_6546852

inputs
identityы
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_65446162
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
т
ъ
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6544651

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ы
N
2__inference_max_pooling2d_25_layer_call_fn_6547021

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_65452852
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         %%<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         KK<:W S
/
_output_shapes
:         KK<
 
_user_specified_nameinputs
Ё
▄
%__inference_signature_wrapper_6546421
input_7!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:<
	unknown_6:<
	unknown_7:<
	unknown_8:<
	unknown_9:<

unknown_10:<$

unknown_11:<<

unknown_12:<

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<$

unknown_17:<

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:
■У

unknown_24:	У

unknown_25:
УЗ

unknown_26:	З

unknown_27:
ЗЩ

unknown_28:	Щ

unknown_29:	Щ

unknown_30:
identityѕбStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference__wrapped_model_65446072
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ╚╚
!
_user_specified_name	input_7
х
e
F__inference_dropout_6_layer_call_and_return_conditional_losses_6547561

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         З2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeх
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         З*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         З2
dropout/GreaterEqualђ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         З2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         З2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         З2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         З:P L
(
_output_shapes
:         З
 
_user_specified_nameinputs
┼	
М
8__inference_batch_normalization_25_layer_call_fn_6547057

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identityѕбStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           <*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_65448432
StatefulPartitionedCallЋ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           <: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           <
 
_user_specified_nameinputs
ю
ъ
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6547137

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         %%<:<:<:<:<:*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         %%<2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         %%<: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         %%<
 
_user_specified_nameinputs
▓
С
.__inference_sequential_6_layer_call_fn_6546490

inputs!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:<
	unknown_6:<
	unknown_7:<
	unknown_8:<
	unknown_9:<

unknown_10:<$

unknown_11:<<

unknown_12:<

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<$

unknown_17:<

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:
■У

unknown_24:	У

unknown_25:
УЗ

unknown_26:	З

unknown_27:
ЗЩ

unknown_28:	Щ

unknown_29:	Щ

unknown_30:
identityѕбStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_65454982
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ╚╚
 
_user_specified_nameinputs
ыф
Р
I__inference_sequential_6_layer_call_and_return_conditional_losses_6546684

inputsB
(conv2d_24_conv2d_readvariableop_resource:7
)conv2d_24_biasadd_readvariableop_resource:<
.batch_normalization_24_readvariableop_resource:>
0batch_normalization_24_readvariableop_1_resource:M
?batch_normalization_24_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_25_conv2d_readvariableop_resource:<7
)conv2d_25_biasadd_readvariableop_resource:<<
.batch_normalization_25_readvariableop_resource:<>
0batch_normalization_25_readvariableop_1_resource:<M
?batch_normalization_25_fusedbatchnormv3_readvariableop_resource:<O
Abatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource:<B
(conv2d_26_conv2d_readvariableop_resource:<<7
)conv2d_26_biasadd_readvariableop_resource:<<
.batch_normalization_26_readvariableop_resource:<>
0batch_normalization_26_readvariableop_1_resource:<M
?batch_normalization_26_fusedbatchnormv3_readvariableop_resource:<O
Abatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource:<B
(conv2d_27_conv2d_readvariableop_resource:<7
)conv2d_27_biasadd_readvariableop_resource:<
.batch_normalization_27_readvariableop_resource:>
0batch_normalization_27_readvariableop_1_resource:M
?batch_normalization_27_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource:;
'dense_21_matmul_readvariableop_resource:
■У7
(dense_21_biasadd_readvariableop_resource:	У;
'dense_22_matmul_readvariableop_resource:
УЗ7
(dense_22_biasadd_readvariableop_resource:	З;
'dense_23_matmul_readvariableop_resource:
ЗЩ7
(dense_23_biasadd_readvariableop_resource:	Щ:
'dense_24_matmul_readvariableop_resource:	Щ6
(dense_24_biasadd_readvariableop_resource:
identityѕб6batch_normalization_24/FusedBatchNormV3/ReadVariableOpб8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_24/ReadVariableOpб'batch_normalization_24/ReadVariableOp_1б6batch_normalization_25/FusedBatchNormV3/ReadVariableOpб8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_25/ReadVariableOpб'batch_normalization_25/ReadVariableOp_1б6batch_normalization_26/FusedBatchNormV3/ReadVariableOpб8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_26/ReadVariableOpб'batch_normalization_26/ReadVariableOp_1б6batch_normalization_27/FusedBatchNormV3/ReadVariableOpб8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_27/ReadVariableOpб'batch_normalization_27/ReadVariableOp_1б conv2d_24/BiasAdd/ReadVariableOpбconv2d_24/Conv2D/ReadVariableOpб conv2d_25/BiasAdd/ReadVariableOpбconv2d_25/Conv2D/ReadVariableOpб conv2d_26/BiasAdd/ReadVariableOpбconv2d_26/Conv2D/ReadVariableOpб conv2d_27/BiasAdd/ReadVariableOpбconv2d_27/Conv2D/ReadVariableOpбdense_21/BiasAdd/ReadVariableOpбdense_21/MatMul/ReadVariableOpбdense_22/BiasAdd/ReadVariableOpбdense_22/MatMul/ReadVariableOpбdense_23/BiasAdd/ReadVariableOpбdense_23/MatMul/ReadVariableOpбdense_24/BiasAdd/ReadVariableOpбdense_24/MatMul/ReadVariableOpЂ
resizing_6/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"ќ   ќ   2
resizing_6/resize/sizeН
 resizing_6/resize/ResizeBilinearResizeBilinearinputsresizing_6/resize/size:output:0*
T0*1
_output_shapes
:         ќќ*
half_pixel_centers(2"
 resizing_6/resize/ResizeBilinear│
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_24/Conv2D/ReadVariableOpЬ
conv2d_24/Conv2DConv2D1resizing_6/resize/ResizeBilinear:resized_images:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ќќ*
paddingSAME*
strides
2
conv2d_24/Conv2Dф
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_24/BiasAdd/ReadVariableOp▓
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ќќ2
conv2d_24/BiasAddђ
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*1
_output_shapes
:         ќќ2
conv2d_24/Relu╩
max_pooling2d_24/MaxPoolMaxPoolconv2d_24/Relu:activations:0*/
_output_shapes
:         KK*
ksize
*
paddingVALID*
strides
2
max_pooling2d_24/MaxPool╣
%batch_normalization_24/ReadVariableOpReadVariableOp.batch_normalization_24_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_24/ReadVariableOp┐
'batch_normalization_24/ReadVariableOp_1ReadVariableOp0batch_normalization_24_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_24/ReadVariableOp_1В
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpЫ
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1№
'batch_normalization_24/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_24/MaxPool:output:0-batch_normalization_24/ReadVariableOp:value:0/batch_normalization_24/ReadVariableOp_1:value:0>batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         KK:::::*
epsilon%oЃ:*
is_training( 2)
'batch_normalization_24/FusedBatchNormV3│
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype02!
conv2d_25/Conv2D/ReadVariableOpТ
conv2d_25/Conv2DConv2D+batch_normalization_24/FusedBatchNormV3:y:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         KK<*
paddingSAME*
strides
2
conv2d_25/Conv2Dф
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02"
 conv2d_25/BiasAdd/ReadVariableOp░
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         KK<2
conv2d_25/BiasAdd~
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:         KK<2
conv2d_25/Relu╩
max_pooling2d_25/MaxPoolMaxPoolconv2d_25/Relu:activations:0*/
_output_shapes
:         %%<*
ksize
*
paddingVALID*
strides
2
max_pooling2d_25/MaxPool╣
%batch_normalization_25/ReadVariableOpReadVariableOp.batch_normalization_25_readvariableop_resource*
_output_shapes
:<*
dtype02'
%batch_normalization_25/ReadVariableOp┐
'batch_normalization_25/ReadVariableOp_1ReadVariableOp0batch_normalization_25_readvariableop_1_resource*
_output_shapes
:<*
dtype02)
'batch_normalization_25/ReadVariableOp_1В
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype028
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpЫ
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02:
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1№
'batch_normalization_25/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_25/MaxPool:output:0-batch_normalization_25/ReadVariableOp:value:0/batch_normalization_25/ReadVariableOp_1:value:0>batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         %%<:<:<:<:<:*
epsilon%oЃ:*
is_training( 2)
'batch_normalization_25/FusedBatchNormV3│
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype02!
conv2d_26/Conv2D/ReadVariableOpТ
conv2d_26/Conv2DConv2D+batch_normalization_25/FusedBatchNormV3:y:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         %%<*
paddingSAME*
strides
2
conv2d_26/Conv2Dф
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02"
 conv2d_26/BiasAdd/ReadVariableOp░
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         %%<2
conv2d_26/BiasAdd~
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:         %%<2
conv2d_26/Relu╩
max_pooling2d_26/MaxPoolMaxPoolconv2d_26/Relu:activations:0*/
_output_shapes
:         <*
ksize
*
paddingVALID*
strides
2
max_pooling2d_26/MaxPool╣
%batch_normalization_26/ReadVariableOpReadVariableOp.batch_normalization_26_readvariableop_resource*
_output_shapes
:<*
dtype02'
%batch_normalization_26/ReadVariableOp┐
'batch_normalization_26/ReadVariableOp_1ReadVariableOp0batch_normalization_26_readvariableop_1_resource*
_output_shapes
:<*
dtype02)
'batch_normalization_26/ReadVariableOp_1В
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype028
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpЫ
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02:
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1№
'batch_normalization_26/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_26/MaxPool:output:0-batch_normalization_26/ReadVariableOp:value:0/batch_normalization_26/ReadVariableOp_1:value:0>batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         <:<:<:<:<:*
epsilon%oЃ:*
is_training( 2)
'batch_normalization_26/FusedBatchNormV3│
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype02!
conv2d_27/Conv2D/ReadVariableOpТ
conv2d_27/Conv2DConv2D+batch_normalization_26/FusedBatchNormV3:y:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
2
conv2d_27/Conv2Dф
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_27/BiasAdd/ReadVariableOp░
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
conv2d_27/BiasAdd~
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_27/Relu╩
max_pooling2d_27/MaxPoolMaxPoolconv2d_27/Relu:activations:0*/
_output_shapes
:         		*
ksize
*
paddingVALID*
strides
2
max_pooling2d_27/MaxPool╣
%batch_normalization_27/ReadVariableOpReadVariableOp.batch_normalization_27_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_27/ReadVariableOp┐
'batch_normalization_27/ReadVariableOp_1ReadVariableOp0batch_normalization_27_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_27/ReadVariableOp_1В
6batch_normalization_27/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_27_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_27/FusedBatchNormV3/ReadVariableOpЫ
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1№
'batch_normalization_27/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_27/MaxPool:output:0-batch_normalization_27/ReadVariableOp:value:0/batch_normalization_27/ReadVariableOp_1:value:0>batch_normalization_27/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         		:::::*
epsilon%oЃ:*
is_training( 2)
'batch_normalization_27/FusedBatchNormV3s
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ~	  2
flatten_6/ConstФ
flatten_6/ReshapeReshape+batch_normalization_27/FusedBatchNormV3:y:0flatten_6/Const:output:0*
T0*(
_output_shapes
:         ■2
flatten_6/Reshapeф
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
■У*
dtype02 
dense_21/MatMul/ReadVariableOpБ
dense_21/MatMulMatMulflatten_6/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         У2
dense_21/MatMulе
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:У*
dtype02!
dense_21/BiasAdd/ReadVariableOpд
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         У2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:         У2
dense_21/Reluф
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource* 
_output_shapes
:
УЗ*
dtype02 
dense_22/MatMul/ReadVariableOpц
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         З2
dense_22/MatMulе
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes	
:З*
dtype02!
dense_22/BiasAdd/ReadVariableOpд
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         З2
dense_22/BiasAddt
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*(
_output_shapes
:         З2
dense_22/Reluё
dropout_6/IdentityIdentitydense_22/Relu:activations:0*
T0*(
_output_shapes
:         З2
dropout_6/Identityф
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource* 
_output_shapes
:
ЗЩ*
dtype02 
dense_23/MatMul/ReadVariableOpц
dense_23/MatMulMatMuldropout_6/Identity:output:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Щ2
dense_23/MatMulе
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes	
:Щ*
dtype02!
dense_23/BiasAdd/ReadVariableOpд
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Щ2
dense_23/BiasAddt
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*(
_output_shapes
:         Щ2
dense_23/ReluЕ
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes
:	Щ*
dtype02 
dense_24/MatMul/ReadVariableOpБ
dense_24/MatMulMatMuldense_23/Relu:activations:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_24/MatMulД
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_24/BiasAdd/ReadVariableOpЦ
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_24/BiasAdds
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_24/Reluv
IdentityIdentitydense_24/Relu:activations:0^NoOp*
T0*'
_output_shapes
:         2

Identityє
NoOpNoOp7^batch_normalization_24/FusedBatchNormV3/ReadVariableOp9^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_24/ReadVariableOp(^batch_normalization_24/ReadVariableOp_17^batch_normalization_25/FusedBatchNormV3/ReadVariableOp9^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_25/ReadVariableOp(^batch_normalization_25/ReadVariableOp_17^batch_normalization_26/FusedBatchNormV3/ReadVariableOp9^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_26/ReadVariableOp(^batch_normalization_26/ReadVariableOp_17^batch_normalization_27/FusedBatchNormV3/ReadVariableOp9^batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_27/ReadVariableOp(^batch_normalization_27/ReadVariableOp_1!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_24/FusedBatchNormV3/ReadVariableOp6batch_normalization_24/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_18batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_24/ReadVariableOp%batch_normalization_24/ReadVariableOp2R
'batch_normalization_24/ReadVariableOp_1'batch_normalization_24/ReadVariableOp_12p
6batch_normalization_25/FusedBatchNormV3/ReadVariableOp6batch_normalization_25/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_18batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_25/ReadVariableOp%batch_normalization_25/ReadVariableOp2R
'batch_normalization_25/ReadVariableOp_1'batch_normalization_25/ReadVariableOp_12p
6batch_normalization_26/FusedBatchNormV3/ReadVariableOp6batch_normalization_26/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_18batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_26/ReadVariableOp%batch_normalization_26/ReadVariableOp2R
'batch_normalization_26/ReadVariableOp_1'batch_normalization_26/ReadVariableOp_12p
6batch_normalization_27/FusedBatchNormV3/ReadVariableOp6batch_normalization_27/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_18batch_normalization_27/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_27/ReadVariableOp%batch_normalization_27/ReadVariableOp2R
'batch_normalization_27/ReadVariableOp_1'batch_normalization_27/ReadVariableOp_12D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ╚╚
 
_user_specified_nameinputs
т
ъ
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6546937

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ъc
ч
I__inference_sequential_6_layer_call_and_return_conditional_losses_6546257
input_7+
conv2d_24_6546174:
conv2d_24_6546176:,
batch_normalization_24_6546180:,
batch_normalization_24_6546182:,
batch_normalization_24_6546184:,
batch_normalization_24_6546186:+
conv2d_25_6546189:<
conv2d_25_6546191:<,
batch_normalization_25_6546195:<,
batch_normalization_25_6546197:<,
batch_normalization_25_6546199:<,
batch_normalization_25_6546201:<+
conv2d_26_6546204:<<
conv2d_26_6546206:<,
batch_normalization_26_6546210:<,
batch_normalization_26_6546212:<,
batch_normalization_26_6546214:<,
batch_normalization_26_6546216:<+
conv2d_27_6546219:<
conv2d_27_6546221:,
batch_normalization_27_6546225:,
batch_normalization_27_6546227:,
batch_normalization_27_6546229:,
batch_normalization_27_6546231:$
dense_21_6546235:
■У
dense_21_6546237:	У$
dense_22_6546240:
УЗ
dense_22_6546242:	З$
dense_23_6546246:
ЗЩ
dense_23_6546248:	Щ#
dense_24_6546251:	Щ
dense_24_6546253:
identityѕб.batch_normalization_24/StatefulPartitionedCallб.batch_normalization_25/StatefulPartitionedCallб.batch_normalization_26/StatefulPartitionedCallб.batch_normalization_27/StatefulPartitionedCallб!conv2d_24/StatefulPartitionedCallб!conv2d_25/StatefulPartitionedCallб!conv2d_26/StatefulPartitionedCallб!conv2d_27/StatefulPartitionedCallб dense_21/StatefulPartitionedCallб dense_22/StatefulPartitionedCallб dense_23/StatefulPartitionedCallб dense_24/StatefulPartitionedCallж
resizing_6/PartitionedCallPartitionedCallinput_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ќќ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_resizing_6_layer_call_and_return_conditional_losses_65452122
resizing_6/PartitionedCallк
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall#resizing_6/PartitionedCall:output:0conv2d_24_6546174conv2d_24_6546176*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ќќ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_65452252#
!conv2d_24/StatefulPartitionedCallю
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_65452352"
 max_pooling2d_24/PartitionedCall¤
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0batch_normalization_24_6546180batch_normalization_24_6546182batch_normalization_24_6546184batch_normalization_24_6546186*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_654525420
.batch_normalization_24/StatefulPartitionedCallп
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0conv2d_25_6546189conv2d_25_6546191*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_65452752#
!conv2d_25/StatefulPartitionedCallю
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_65452852"
 max_pooling2d_25/PartitionedCall¤
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0batch_normalization_25_6546195batch_normalization_25_6546197batch_normalization_25_6546199batch_normalization_25_6546201*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_654530420
.batch_normalization_25/StatefulPartitionedCallп
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0conv2d_26_6546204conv2d_26_6546206*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_65453252#
!conv2d_26/StatefulPartitionedCallю
 max_pooling2d_26/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_65453352"
 max_pooling2d_26/PartitionedCall¤
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_26/PartitionedCall:output:0batch_normalization_26_6546210batch_normalization_26_6546212batch_normalization_26_6546214batch_normalization_26_6546216*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_654535420
.batch_normalization_26/StatefulPartitionedCallп
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0conv2d_27_6546219conv2d_27_6546221*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_65453752#
!conv2d_27/StatefulPartitionedCallю
 max_pooling2d_27/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_65453852"
 max_pooling2d_27/PartitionedCall¤
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0batch_normalization_27_6546225batch_normalization_27_6546227batch_normalization_27_6546229batch_normalization_27_6546231*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_654540420
.batch_normalization_27/StatefulPartitionedCallЇ
flatten_6/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ■* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_65454202
flatten_6/PartitionedCallи
 dense_21/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_21_6546235dense_21_6546237*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         У*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_65454332"
 dense_21/StatefulPartitionedCallЙ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_6546240dense_22_6546242*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         З*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_65454502"
 dense_22/StatefulPartitionedCall 
dropout_6/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         З* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_65454612
dropout_6/PartitionedCallи
 dense_23/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_23_6546246dense_23_6546248*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Щ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_65454742"
 dense_23/StatefulPartitionedCallй
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_6546251dense_24_6546253*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_65454912"
 dense_24/StatefulPartitionedCallё
IdentityIdentity)dense_24/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity«
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall:Z V
1
_output_shapes
:         ╚╚
!
_user_specified_name	input_7
Ј
щ
E__inference_dense_21_layer_call_and_return_conditional_losses_6547514

inputs2
matmul_readvariableop_resource:
■У.
biasadd_readvariableop_resource:	У
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
■У*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         У2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:У*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         У2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         У2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         У2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ■: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ■
 
_user_specified_nameinputs
кd
Ъ
I__inference_sequential_6_layer_call_and_return_conditional_losses_6546344
input_7+
conv2d_24_6546261:
conv2d_24_6546263:,
batch_normalization_24_6546267:,
batch_normalization_24_6546269:,
batch_normalization_24_6546271:,
batch_normalization_24_6546273:+
conv2d_25_6546276:<
conv2d_25_6546278:<,
batch_normalization_25_6546282:<,
batch_normalization_25_6546284:<,
batch_normalization_25_6546286:<,
batch_normalization_25_6546288:<+
conv2d_26_6546291:<<
conv2d_26_6546293:<,
batch_normalization_26_6546297:<,
batch_normalization_26_6546299:<,
batch_normalization_26_6546301:<,
batch_normalization_26_6546303:<+
conv2d_27_6546306:<
conv2d_27_6546308:,
batch_normalization_27_6546312:,
batch_normalization_27_6546314:,
batch_normalization_27_6546316:,
batch_normalization_27_6546318:$
dense_21_6546322:
■У
dense_21_6546324:	У$
dense_22_6546327:
УЗ
dense_22_6546329:	З$
dense_23_6546333:
ЗЩ
dense_23_6546335:	Щ#
dense_24_6546338:	Щ
dense_24_6546340:
identityѕб.batch_normalization_24/StatefulPartitionedCallб.batch_normalization_25/StatefulPartitionedCallб.batch_normalization_26/StatefulPartitionedCallб.batch_normalization_27/StatefulPartitionedCallб!conv2d_24/StatefulPartitionedCallб!conv2d_25/StatefulPartitionedCallб!conv2d_26/StatefulPartitionedCallб!conv2d_27/StatefulPartitionedCallб dense_21/StatefulPartitionedCallб dense_22/StatefulPartitionedCallб dense_23/StatefulPartitionedCallб dense_24/StatefulPartitionedCallб!dropout_6/StatefulPartitionedCallж
resizing_6/PartitionedCallPartitionedCallinput_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ќќ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_resizing_6_layer_call_and_return_conditional_losses_65452122
resizing_6/PartitionedCallк
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall#resizing_6/PartitionedCall:output:0conv2d_24_6546261conv2d_24_6546263*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ќќ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_65452252#
!conv2d_24/StatefulPartitionedCallю
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_65452352"
 max_pooling2d_24/PartitionedCall═
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0batch_normalization_24_6546267batch_normalization_24_6546269batch_normalization_24_6546271batch_normalization_24_6546273*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_654584420
.batch_normalization_24/StatefulPartitionedCallп
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0conv2d_25_6546276conv2d_25_6546278*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_65452752#
!conv2d_25/StatefulPartitionedCallю
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_65452852"
 max_pooling2d_25/PartitionedCall═
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0batch_normalization_25_6546282batch_normalization_25_6546284batch_normalization_25_6546286batch_normalization_25_6546288*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_654578520
.batch_normalization_25/StatefulPartitionedCallп
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0conv2d_26_6546291conv2d_26_6546293*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_65453252#
!conv2d_26/StatefulPartitionedCallю
 max_pooling2d_26/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_65453352"
 max_pooling2d_26/PartitionedCall═
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_26/PartitionedCall:output:0batch_normalization_26_6546297batch_normalization_26_6546299batch_normalization_26_6546301batch_normalization_26_6546303*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_654572620
.batch_normalization_26/StatefulPartitionedCallп
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0conv2d_27_6546306conv2d_27_6546308*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_65453752#
!conv2d_27/StatefulPartitionedCallю
 max_pooling2d_27/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_65453852"
 max_pooling2d_27/PartitionedCall═
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0batch_normalization_27_6546312batch_normalization_27_6546314batch_normalization_27_6546316batch_normalization_27_6546318*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_654566720
.batch_normalization_27/StatefulPartitionedCallЇ
flatten_6/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ■* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_65454202
flatten_6/PartitionedCallи
 dense_21/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_21_6546322dense_21_6546324*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         У*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_65454332"
 dense_21/StatefulPartitionedCallЙ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_6546327dense_22_6546329*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         З*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_65454502"
 dense_22/StatefulPartitionedCallЌ
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         З* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_65456052#
!dropout_6/StatefulPartitionedCall┐
 dense_23/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0dense_23_6546333dense_23_6546335*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Щ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_65454742"
 dense_23/StatefulPartitionedCallй
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_6546338dense_24_6546340*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_65454912"
 dense_24/StatefulPartitionedCallё
IdentityIdentity)dense_24/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityм
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall:Z V
1
_output_shapes
:         ╚╚
!
_user_specified_name	input_7
Ў
┬
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6544843

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           <:<:<:<:<:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           <2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           <: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           <
 
_user_specified_nameinputs
ю
ъ
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6545404

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         		:::::*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         		2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         		: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         		
 
_user_specified_nameinputs
┼	
М
8__inference_batch_normalization_27_layer_call_fn_6547385

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_65451392
StatefulPartitionedCallЋ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Е
а
+__inference_conv2d_24_layer_call_fn_6546836

inputs!
unknown:
	unknown_0:
identityѕбStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ќќ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_65452252
StatefulPartitionedCallЁ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ќќ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ќќ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
└
i
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_6545285

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         %%<*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         %%<2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         KK<:W S
/
_output_shapes
:         KK<
 
_user_specified_nameinputs
 
М
8__inference_batch_normalization_25_layer_call_fn_6547070

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identityѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_65453042
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         %%<2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         %%<: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         %%<
 
_user_specified_nameinputs
Э
 
F__inference_conv2d_24_layer_call_and_return_conditional_losses_6545225

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ќќ*
paddingSAME*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ќќ2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ќќ2
Reluw
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ќќ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ќќ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ќќ
 
_user_specified_nameinputs
т
ъ
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6545095

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Џc
Щ
I__inference_sequential_6_layer_call_and_return_conditional_losses_6545498

inputs+
conv2d_24_6545226:
conv2d_24_6545228:,
batch_normalization_24_6545255:,
batch_normalization_24_6545257:,
batch_normalization_24_6545259:,
batch_normalization_24_6545261:+
conv2d_25_6545276:<
conv2d_25_6545278:<,
batch_normalization_25_6545305:<,
batch_normalization_25_6545307:<,
batch_normalization_25_6545309:<,
batch_normalization_25_6545311:<+
conv2d_26_6545326:<<
conv2d_26_6545328:<,
batch_normalization_26_6545355:<,
batch_normalization_26_6545357:<,
batch_normalization_26_6545359:<,
batch_normalization_26_6545361:<+
conv2d_27_6545376:<
conv2d_27_6545378:,
batch_normalization_27_6545405:,
batch_normalization_27_6545407:,
batch_normalization_27_6545409:,
batch_normalization_27_6545411:$
dense_21_6545434:
■У
dense_21_6545436:	У$
dense_22_6545451:
УЗ
dense_22_6545453:	З$
dense_23_6545475:
ЗЩ
dense_23_6545477:	Щ#
dense_24_6545492:	Щ
dense_24_6545494:
identityѕб.batch_normalization_24/StatefulPartitionedCallб.batch_normalization_25/StatefulPartitionedCallб.batch_normalization_26/StatefulPartitionedCallб.batch_normalization_27/StatefulPartitionedCallб!conv2d_24/StatefulPartitionedCallб!conv2d_25/StatefulPartitionedCallб!conv2d_26/StatefulPartitionedCallб!conv2d_27/StatefulPartitionedCallб dense_21/StatefulPartitionedCallб dense_22/StatefulPartitionedCallб dense_23/StatefulPartitionedCallб dense_24/StatefulPartitionedCallУ
resizing_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ќќ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *P
fKRI
G__inference_resizing_6_layer_call_and_return_conditional_losses_65452122
resizing_6/PartitionedCallк
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall#resizing_6/PartitionedCall:output:0conv2d_24_6545226conv2d_24_6545228*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ќќ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_24_layer_call_and_return_conditional_losses_65452252#
!conv2d_24/StatefulPartitionedCallю
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_65452352"
 max_pooling2d_24/PartitionedCall¤
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0batch_normalization_24_6545255batch_normalization_24_6545257batch_normalization_24_6545259batch_normalization_24_6545261*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_654525420
.batch_normalization_24/StatefulPartitionedCallп
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0conv2d_25_6545276conv2d_25_6545278*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_25_layer_call_and_return_conditional_losses_65452752#
!conv2d_25/StatefulPartitionedCallю
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_65452852"
 max_pooling2d_25/PartitionedCall¤
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_25/PartitionedCall:output:0batch_normalization_25_6545305batch_normalization_25_6545307batch_normalization_25_6545309batch_normalization_25_6545311*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_654530420
.batch_normalization_25/StatefulPartitionedCallп
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0conv2d_26_6545326conv2d_26_6545328*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_26_layer_call_and_return_conditional_losses_65453252#
!conv2d_26/StatefulPartitionedCallю
 max_pooling2d_26/PartitionedCallPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_65453352"
 max_pooling2d_26/PartitionedCall¤
.batch_normalization_26/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_26/PartitionedCall:output:0batch_normalization_26_6545355batch_normalization_26_6545357batch_normalization_26_6545359batch_normalization_26_6545361*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_654535420
.batch_normalization_26/StatefulPartitionedCallп
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_26/StatefulPartitionedCall:output:0conv2d_27_6545376conv2d_27_6545378*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_conv2d_27_layer_call_and_return_conditional_losses_65453752#
!conv2d_27/StatefulPartitionedCallю
 max_pooling2d_27/PartitionedCallPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_65453852"
 max_pooling2d_27/PartitionedCall¤
.batch_normalization_27/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_27/PartitionedCall:output:0batch_normalization_27_6545405batch_normalization_27_6545407batch_normalization_27_6545409batch_normalization_27_6545411*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_654540420
.batch_normalization_27/StatefulPartitionedCallЇ
flatten_6/PartitionedCallPartitionedCall7batch_normalization_27/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ■* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_6_layer_call_and_return_conditional_losses_65454202
flatten_6/PartitionedCallи
 dense_21/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_21_6545434dense_21_6545436*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         У*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_65454332"
 dense_21/StatefulPartitionedCallЙ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_6545451dense_22_6545453*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         З*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_22_layer_call_and_return_conditional_losses_65454502"
 dense_22/StatefulPartitionedCall 
dropout_6/PartitionedCallPartitionedCall)dense_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         З* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_dropout_6_layer_call_and_return_conditional_losses_65454612
dropout_6/PartitionedCallи
 dense_23/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0dense_23_6545475dense_23_6545477*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Щ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_23_layer_call_and_return_conditional_losses_65454742"
 dense_23/StatefulPartitionedCallй
 dense_24/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0dense_24_6545492dense_24_6545494*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_24_layer_call_and_return_conditional_losses_65454912"
 dense_24/StatefulPartitionedCallё
IdentityIdentity)dense_24/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identity«
NoOpNoOp/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall/^batch_normalization_26/StatefulPartitionedCall/^batch_normalization_27/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall!^dense_24/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2`
.batch_normalization_26/StatefulPartitionedCall.batch_normalization_26/StatefulPartitionedCall2`
.batch_normalization_27/StatefulPartitionedCall.batch_normalization_27/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2D
 dense_24/StatefulPartitionedCall dense_24/StatefulPartitionedCall:Y U
1
_output_shapes
:         ╚╚
 
_user_specified_nameinputs
ю
ъ
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6545254

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         KK:::::*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         KK2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         KK: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         KK
 
_user_specified_nameinputs
ю
ъ
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6545304

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         %%<:<:<:<:<:*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         %%<2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         %%<: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         %%<
 
_user_specified_nameinputs
Г
т
.__inference_sequential_6_layer_call_fn_6546170
input_7!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:<
	unknown_6:<
	unknown_7:<
	unknown_8:<
	unknown_9:<

unknown_10:<$

unknown_11:<<

unknown_12:<

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<$

unknown_17:<

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:
■У

unknown_24:	У

unknown_25:
УЗ

unknown_26:	З

unknown_27:
ЗЩ

unknown_28:	Щ

unknown_29:	Щ

unknown_30:
identityѕбStatefulPartitionedCallљ
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *:
_read_only_resource_inputs
	
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_65460342
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ╚╚
!
_user_specified_name	input_7
┼	
М
8__inference_batch_normalization_26_layer_call_fn_6547221

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identityѕбStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           <*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_65449912
StatefulPartitionedCallЋ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           <: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           <
 
_user_specified_nameinputs
§
М
8__inference_batch_normalization_24_layer_call_fn_6546919

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         KK*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_65458442
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         KK2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         KK: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         KK
 
_user_specified_nameinputs
л
┬
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6546991

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1п
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         KK:::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         KK2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         KK: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         KK
 
_user_specified_nameinputs
Ў
┬
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6547447

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
ю
ъ
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6546973

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         KK:::::*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         KK2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         KK: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         KK
 
_user_specified_nameinputs
Ј
щ
E__inference_dense_23_layer_call_and_return_conditional_losses_6547581

inputs2
matmul_readvariableop_resource:
ЗЩ.
biasadd_readvariableop_resource:	Щ
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpЈ
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ЗЩ*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Щ2
MatMulЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Щ*
dtype02
BiasAdd/ReadVariableOpѓ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Щ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Щ2
Relun
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Щ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         З: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         З
 
_user_specified_nameinputs
ю
ъ
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6547465

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         		:::::*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         		2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         		: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         		
 
_user_specified_nameinputs
л
┬
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6547319

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1п
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         <:<:<:<:<:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         <2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         <: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         <
 
_user_specified_nameinputs
Ў
┬
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6544991

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           <:<:<:<:<:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           <2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           <: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           <
 
_user_specified_nameinputs
ум
ф
I__inference_sequential_6_layer_call_and_return_conditional_losses_6546816

inputsB
(conv2d_24_conv2d_readvariableop_resource:7
)conv2d_24_biasadd_readvariableop_resource:<
.batch_normalization_24_readvariableop_resource:>
0batch_normalization_24_readvariableop_1_resource:M
?batch_normalization_24_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:B
(conv2d_25_conv2d_readvariableop_resource:<7
)conv2d_25_biasadd_readvariableop_resource:<<
.batch_normalization_25_readvariableop_resource:<>
0batch_normalization_25_readvariableop_1_resource:<M
?batch_normalization_25_fusedbatchnormv3_readvariableop_resource:<O
Abatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource:<B
(conv2d_26_conv2d_readvariableop_resource:<<7
)conv2d_26_biasadd_readvariableop_resource:<<
.batch_normalization_26_readvariableop_resource:<>
0batch_normalization_26_readvariableop_1_resource:<M
?batch_normalization_26_fusedbatchnormv3_readvariableop_resource:<O
Abatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource:<B
(conv2d_27_conv2d_readvariableop_resource:<7
)conv2d_27_biasadd_readvariableop_resource:<
.batch_normalization_27_readvariableop_resource:>
0batch_normalization_27_readvariableop_1_resource:M
?batch_normalization_27_fusedbatchnormv3_readvariableop_resource:O
Abatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource:;
'dense_21_matmul_readvariableop_resource:
■У7
(dense_21_biasadd_readvariableop_resource:	У;
'dense_22_matmul_readvariableop_resource:
УЗ7
(dense_22_biasadd_readvariableop_resource:	З;
'dense_23_matmul_readvariableop_resource:
ЗЩ7
(dense_23_biasadd_readvariableop_resource:	Щ:
'dense_24_matmul_readvariableop_resource:	Щ6
(dense_24_biasadd_readvariableop_resource:
identityѕб%batch_normalization_24/AssignNewValueб'batch_normalization_24/AssignNewValue_1б6batch_normalization_24/FusedBatchNormV3/ReadVariableOpб8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_24/ReadVariableOpб'batch_normalization_24/ReadVariableOp_1б%batch_normalization_25/AssignNewValueб'batch_normalization_25/AssignNewValue_1б6batch_normalization_25/FusedBatchNormV3/ReadVariableOpб8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_25/ReadVariableOpб'batch_normalization_25/ReadVariableOp_1б%batch_normalization_26/AssignNewValueб'batch_normalization_26/AssignNewValue_1б6batch_normalization_26/FusedBatchNormV3/ReadVariableOpб8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_26/ReadVariableOpб'batch_normalization_26/ReadVariableOp_1б%batch_normalization_27/AssignNewValueб'batch_normalization_27/AssignNewValue_1б6batch_normalization_27/FusedBatchNormV3/ReadVariableOpб8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1б%batch_normalization_27/ReadVariableOpб'batch_normalization_27/ReadVariableOp_1б conv2d_24/BiasAdd/ReadVariableOpбconv2d_24/Conv2D/ReadVariableOpб conv2d_25/BiasAdd/ReadVariableOpбconv2d_25/Conv2D/ReadVariableOpб conv2d_26/BiasAdd/ReadVariableOpбconv2d_26/Conv2D/ReadVariableOpб conv2d_27/BiasAdd/ReadVariableOpбconv2d_27/Conv2D/ReadVariableOpбdense_21/BiasAdd/ReadVariableOpбdense_21/MatMul/ReadVariableOpбdense_22/BiasAdd/ReadVariableOpбdense_22/MatMul/ReadVariableOpбdense_23/BiasAdd/ReadVariableOpбdense_23/MatMul/ReadVariableOpбdense_24/BiasAdd/ReadVariableOpбdense_24/MatMul/ReadVariableOpЂ
resizing_6/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"ќ   ќ   2
resizing_6/resize/sizeН
 resizing_6/resize/ResizeBilinearResizeBilinearinputsresizing_6/resize/size:output:0*
T0*1
_output_shapes
:         ќќ*
half_pixel_centers(2"
 resizing_6/resize/ResizeBilinear│
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
conv2d_24/Conv2D/ReadVariableOpЬ
conv2d_24/Conv2DConv2D1resizing_6/resize/ResizeBilinear:resized_images:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ќќ*
paddingSAME*
strides
2
conv2d_24/Conv2Dф
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_24/BiasAdd/ReadVariableOp▓
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ќќ2
conv2d_24/BiasAddђ
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*1
_output_shapes
:         ќќ2
conv2d_24/Relu╩
max_pooling2d_24/MaxPoolMaxPoolconv2d_24/Relu:activations:0*/
_output_shapes
:         KK*
ksize
*
paddingVALID*
strides
2
max_pooling2d_24/MaxPool╣
%batch_normalization_24/ReadVariableOpReadVariableOp.batch_normalization_24_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_24/ReadVariableOp┐
'batch_normalization_24/ReadVariableOp_1ReadVariableOp0batch_normalization_24_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_24/ReadVariableOp_1В
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpЫ
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1§
'batch_normalization_24/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_24/MaxPool:output:0-batch_normalization_24/ReadVariableOp:value:0/batch_normalization_24/ReadVariableOp_1:value:0>batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         KK:::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<2)
'batch_normalization_24/FusedBatchNormV3х
%batch_normalization_24/AssignNewValueAssignVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource4batch_normalization_24/FusedBatchNormV3:batch_mean:07^batch_normalization_24/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_24/AssignNewValue┴
'batch_normalization_24/AssignNewValue_1AssignVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_24/FusedBatchNormV3:batch_variance:09^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_24/AssignNewValue_1│
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype02!
conv2d_25/Conv2D/ReadVariableOpТ
conv2d_25/Conv2DConv2D+batch_normalization_24/FusedBatchNormV3:y:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         KK<*
paddingSAME*
strides
2
conv2d_25/Conv2Dф
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02"
 conv2d_25/BiasAdd/ReadVariableOp░
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         KK<2
conv2d_25/BiasAdd~
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:         KK<2
conv2d_25/Relu╩
max_pooling2d_25/MaxPoolMaxPoolconv2d_25/Relu:activations:0*/
_output_shapes
:         %%<*
ksize
*
paddingVALID*
strides
2
max_pooling2d_25/MaxPool╣
%batch_normalization_25/ReadVariableOpReadVariableOp.batch_normalization_25_readvariableop_resource*
_output_shapes
:<*
dtype02'
%batch_normalization_25/ReadVariableOp┐
'batch_normalization_25/ReadVariableOp_1ReadVariableOp0batch_normalization_25_readvariableop_1_resource*
_output_shapes
:<*
dtype02)
'batch_normalization_25/ReadVariableOp_1В
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype028
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpЫ
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02:
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1§
'batch_normalization_25/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_25/MaxPool:output:0-batch_normalization_25/ReadVariableOp:value:0/batch_normalization_25/ReadVariableOp_1:value:0>batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         %%<:<:<:<:<:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2)
'batch_normalization_25/FusedBatchNormV3х
%batch_normalization_25/AssignNewValueAssignVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource4batch_normalization_25/FusedBatchNormV3:batch_mean:07^batch_normalization_25/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_25/AssignNewValue┴
'batch_normalization_25/AssignNewValue_1AssignVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_25/FusedBatchNormV3:batch_variance:09^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_25/AssignNewValue_1│
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype02!
conv2d_26/Conv2D/ReadVariableOpТ
conv2d_26/Conv2DConv2D+batch_normalization_25/FusedBatchNormV3:y:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         %%<*
paddingSAME*
strides
2
conv2d_26/Conv2Dф
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02"
 conv2d_26/BiasAdd/ReadVariableOp░
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         %%<2
conv2d_26/BiasAdd~
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:         %%<2
conv2d_26/Relu╩
max_pooling2d_26/MaxPoolMaxPoolconv2d_26/Relu:activations:0*/
_output_shapes
:         <*
ksize
*
paddingVALID*
strides
2
max_pooling2d_26/MaxPool╣
%batch_normalization_26/ReadVariableOpReadVariableOp.batch_normalization_26_readvariableop_resource*
_output_shapes
:<*
dtype02'
%batch_normalization_26/ReadVariableOp┐
'batch_normalization_26/ReadVariableOp_1ReadVariableOp0batch_normalization_26_readvariableop_1_resource*
_output_shapes
:<*
dtype02)
'batch_normalization_26/ReadVariableOp_1В
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype028
6batch_normalization_26/FusedBatchNormV3/ReadVariableOpЫ
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02:
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1§
'batch_normalization_26/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_26/MaxPool:output:0-batch_normalization_26/ReadVariableOp:value:0/batch_normalization_26/ReadVariableOp_1:value:0>batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         <:<:<:<:<:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2)
'batch_normalization_26/FusedBatchNormV3х
%batch_normalization_26/AssignNewValueAssignVariableOp?batch_normalization_26_fusedbatchnormv3_readvariableop_resource4batch_normalization_26/FusedBatchNormV3:batch_mean:07^batch_normalization_26/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_26/AssignNewValue┴
'batch_normalization_26/AssignNewValue_1AssignVariableOpAbatch_normalization_26_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_26/FusedBatchNormV3:batch_variance:09^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_26/AssignNewValue_1│
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype02!
conv2d_27/Conv2D/ReadVariableOpТ
conv2d_27/Conv2DConv2D+batch_normalization_26/FusedBatchNormV3:y:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
2
conv2d_27/Conv2Dф
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_27/BiasAdd/ReadVariableOp░
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2
conv2d_27/BiasAdd~
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:         2
conv2d_27/Relu╩
max_pooling2d_27/MaxPoolMaxPoolconv2d_27/Relu:activations:0*/
_output_shapes
:         		*
ksize
*
paddingVALID*
strides
2
max_pooling2d_27/MaxPool╣
%batch_normalization_27/ReadVariableOpReadVariableOp.batch_normalization_27_readvariableop_resource*
_output_shapes
:*
dtype02'
%batch_normalization_27/ReadVariableOp┐
'batch_normalization_27/ReadVariableOp_1ReadVariableOp0batch_normalization_27_readvariableop_1_resource*
_output_shapes
:*
dtype02)
'batch_normalization_27/ReadVariableOp_1В
6batch_normalization_27/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_27_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype028
6batch_normalization_27/FusedBatchNormV3/ReadVariableOpЫ
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02:
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1§
'batch_normalization_27/FusedBatchNormV3FusedBatchNormV3!max_pooling2d_27/MaxPool:output:0-batch_normalization_27/ReadVariableOp:value:0/batch_normalization_27/ReadVariableOp_1:value:0>batch_normalization_27/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         		:::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<2)
'batch_normalization_27/FusedBatchNormV3х
%batch_normalization_27/AssignNewValueAssignVariableOp?batch_normalization_27_fusedbatchnormv3_readvariableop_resource4batch_normalization_27/FusedBatchNormV3:batch_mean:07^batch_normalization_27/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_27/AssignNewValue┴
'batch_normalization_27/AssignNewValue_1AssignVariableOpAbatch_normalization_27_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_27/FusedBatchNormV3:batch_variance:09^batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_27/AssignNewValue_1s
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ~	  2
flatten_6/ConstФ
flatten_6/ReshapeReshape+batch_normalization_27/FusedBatchNormV3:y:0flatten_6/Const:output:0*
T0*(
_output_shapes
:         ■2
flatten_6/Reshapeф
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource* 
_output_shapes
:
■У*
dtype02 
dense_21/MatMul/ReadVariableOpБ
dense_21/MatMulMatMulflatten_6/Reshape:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         У2
dense_21/MatMulе
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes	
:У*
dtype02!
dense_21/BiasAdd/ReadVariableOpд
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         У2
dense_21/BiasAddt
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*(
_output_shapes
:         У2
dense_21/Reluф
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource* 
_output_shapes
:
УЗ*
dtype02 
dense_22/MatMul/ReadVariableOpц
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         З2
dense_22/MatMulе
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes	
:З*
dtype02!
dense_22/BiasAdd/ReadVariableOpд
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         З2
dense_22/BiasAddt
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*(
_output_shapes
:         З2
dense_22/Reluw
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?2
dropout_6/dropout/ConstД
dropout_6/dropout/MulMuldense_22/Relu:activations:0 dropout_6/dropout/Const:output:0*
T0*(
_output_shapes
:         З2
dropout_6/dropout/Mul}
dropout_6/dropout/ShapeShapedense_22/Relu:activations:0*
T0*
_output_shapes
:2
dropout_6/dropout/ShapeМ
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*(
_output_shapes
:         З*
dtype020
.dropout_6/dropout/random_uniform/RandomUniformЅ
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2"
 dropout_6/dropout/GreaterEqual/yу
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         З2 
dropout_6/dropout/GreaterEqualъ
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         З2
dropout_6/dropout/CastБ
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*(
_output_shapes
:         З2
dropout_6/dropout/Mul_1ф
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource* 
_output_shapes
:
ЗЩ*
dtype02 
dense_23/MatMul/ReadVariableOpц
dense_23/MatMulMatMuldropout_6/dropout/Mul_1:z:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Щ2
dense_23/MatMulе
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes	
:Щ*
dtype02!
dense_23/BiasAdd/ReadVariableOpд
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Щ2
dense_23/BiasAddt
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*(
_output_shapes
:         Щ2
dense_23/ReluЕ
dense_24/MatMul/ReadVariableOpReadVariableOp'dense_24_matmul_readvariableop_resource*
_output_shapes
:	Щ*
dtype02 
dense_24/MatMul/ReadVariableOpБ
dense_24/MatMulMatMuldense_23/Relu:activations:0&dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_24/MatMulД
dense_24/BiasAdd/ReadVariableOpReadVariableOp(dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_24/BiasAdd/ReadVariableOpЦ
dense_24/BiasAddBiasAdddense_24/MatMul:product:0'dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_24/BiasAdds
dense_24/ReluReludense_24/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_24/Reluv
IdentityIdentitydense_24/Relu:activations:0^NoOp*
T0*'
_output_shapes
:         2

Identity╬
NoOpNoOp&^batch_normalization_24/AssignNewValue(^batch_normalization_24/AssignNewValue_17^batch_normalization_24/FusedBatchNormV3/ReadVariableOp9^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_24/ReadVariableOp(^batch_normalization_24/ReadVariableOp_1&^batch_normalization_25/AssignNewValue(^batch_normalization_25/AssignNewValue_17^batch_normalization_25/FusedBatchNormV3/ReadVariableOp9^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_25/ReadVariableOp(^batch_normalization_25/ReadVariableOp_1&^batch_normalization_26/AssignNewValue(^batch_normalization_26/AssignNewValue_17^batch_normalization_26/FusedBatchNormV3/ReadVariableOp9^batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_26/ReadVariableOp(^batch_normalization_26/ReadVariableOp_1&^batch_normalization_27/AssignNewValue(^batch_normalization_27/AssignNewValue_17^batch_normalization_27/FusedBatchNormV3/ReadVariableOp9^batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_27/ReadVariableOp(^batch_normalization_27/ReadVariableOp_1!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp ^dense_24/BiasAdd/ReadVariableOp^dense_24/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_24/AssignNewValue%batch_normalization_24/AssignNewValue2R
'batch_normalization_24/AssignNewValue_1'batch_normalization_24/AssignNewValue_12p
6batch_normalization_24/FusedBatchNormV3/ReadVariableOp6batch_normalization_24/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_18batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_24/ReadVariableOp%batch_normalization_24/ReadVariableOp2R
'batch_normalization_24/ReadVariableOp_1'batch_normalization_24/ReadVariableOp_12N
%batch_normalization_25/AssignNewValue%batch_normalization_25/AssignNewValue2R
'batch_normalization_25/AssignNewValue_1'batch_normalization_25/AssignNewValue_12p
6batch_normalization_25/FusedBatchNormV3/ReadVariableOp6batch_normalization_25/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_18batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_25/ReadVariableOp%batch_normalization_25/ReadVariableOp2R
'batch_normalization_25/ReadVariableOp_1'batch_normalization_25/ReadVariableOp_12N
%batch_normalization_26/AssignNewValue%batch_normalization_26/AssignNewValue2R
'batch_normalization_26/AssignNewValue_1'batch_normalization_26/AssignNewValue_12p
6batch_normalization_26/FusedBatchNormV3/ReadVariableOp6batch_normalization_26/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_26/FusedBatchNormV3/ReadVariableOp_18batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_26/ReadVariableOp%batch_normalization_26/ReadVariableOp2R
'batch_normalization_26/ReadVariableOp_1'batch_normalization_26/ReadVariableOp_12N
%batch_normalization_27/AssignNewValue%batch_normalization_27/AssignNewValue2R
'batch_normalization_27/AssignNewValue_1'batch_normalization_27/AssignNewValue_12p
6batch_normalization_27/FusedBatchNormV3/ReadVariableOp6batch_normalization_27/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_27/FusedBatchNormV3/ReadVariableOp_18batch_normalization_27/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_27/ReadVariableOp%batch_normalization_27/ReadVariableOp2R
'batch_normalization_27/ReadVariableOp_1'batch_normalization_27/ReadVariableOp_12D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2B
dense_24/BiasAdd/ReadVariableOpdense_24/BiasAdd/ReadVariableOp2@
dense_24/MatMul/ReadVariableOpdense_24/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ╚╚
 
_user_specified_nameinputs
§
џ
*__inference_dense_21_layer_call_fn_6547503

inputs
unknown:
■У
	unknown_0:	У
identityѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         У*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *N
fIRG
E__inference_dense_21_layer_call_and_return_conditional_losses_65454332
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         У2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ■: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ■
 
_user_specified_nameinputs
ю
ъ
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6545354

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╩
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         <:<:<:<:<:*
epsilon%oЃ:*
is_training( 2
FusedBatchNormV3w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         <2

IdentityИ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         <: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         <
 
_user_specified_nameinputs
л
┬
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6545726

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1п
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         <:<:<:<:<:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         <2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         <: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         <
 
_user_specified_nameinputs
л
┬
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6545785

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1п
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         %%<:<:<:<:<:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         %%<2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         %%<: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         %%<
 
_user_specified_nameinputs
х
e
F__inference_dropout_6_layer_call_and_return_conditional_losses_6545605

inputs
identityѕc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUН?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         З2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeх
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         З*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         З2
dropout/GreaterEqualђ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         З2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         З2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         З2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         З:P L
(
_output_shapes
:         З
 
_user_specified_nameinputs
┼	
М
8__inference_batch_normalization_24_layer_call_fn_6546893

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_65446952
StatefulPartitionedCallЋ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Т
c
G__inference_resizing_6_layer_call_and_return_conditional_losses_6546827

inputs
identityk
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"ќ   ќ   2
resize/size┤
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:         ќќ*
half_pixel_centers(2
resize/ResizeBilinearё
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:         ќќ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         ╚╚:Y U
1
_output_shapes
:         ╚╚
 
_user_specified_nameinputs
АМ
Ч!
"__inference__wrapped_model_6544607
input_7O
5sequential_6_conv2d_24_conv2d_readvariableop_resource:D
6sequential_6_conv2d_24_biasadd_readvariableop_resource:I
;sequential_6_batch_normalization_24_readvariableop_resource:K
=sequential_6_batch_normalization_24_readvariableop_1_resource:Z
Lsequential_6_batch_normalization_24_fusedbatchnormv3_readvariableop_resource:\
Nsequential_6_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resource:O
5sequential_6_conv2d_25_conv2d_readvariableop_resource:<D
6sequential_6_conv2d_25_biasadd_readvariableop_resource:<I
;sequential_6_batch_normalization_25_readvariableop_resource:<K
=sequential_6_batch_normalization_25_readvariableop_1_resource:<Z
Lsequential_6_batch_normalization_25_fusedbatchnormv3_readvariableop_resource:<\
Nsequential_6_batch_normalization_25_fusedbatchnormv3_readvariableop_1_resource:<O
5sequential_6_conv2d_26_conv2d_readvariableop_resource:<<D
6sequential_6_conv2d_26_biasadd_readvariableop_resource:<I
;sequential_6_batch_normalization_26_readvariableop_resource:<K
=sequential_6_batch_normalization_26_readvariableop_1_resource:<Z
Lsequential_6_batch_normalization_26_fusedbatchnormv3_readvariableop_resource:<\
Nsequential_6_batch_normalization_26_fusedbatchnormv3_readvariableop_1_resource:<O
5sequential_6_conv2d_27_conv2d_readvariableop_resource:<D
6sequential_6_conv2d_27_biasadd_readvariableop_resource:I
;sequential_6_batch_normalization_27_readvariableop_resource:K
=sequential_6_batch_normalization_27_readvariableop_1_resource:Z
Lsequential_6_batch_normalization_27_fusedbatchnormv3_readvariableop_resource:\
Nsequential_6_batch_normalization_27_fusedbatchnormv3_readvariableop_1_resource:H
4sequential_6_dense_21_matmul_readvariableop_resource:
■УD
5sequential_6_dense_21_biasadd_readvariableop_resource:	УH
4sequential_6_dense_22_matmul_readvariableop_resource:
УЗD
5sequential_6_dense_22_biasadd_readvariableop_resource:	ЗH
4sequential_6_dense_23_matmul_readvariableop_resource:
ЗЩD
5sequential_6_dense_23_biasadd_readvariableop_resource:	ЩG
4sequential_6_dense_24_matmul_readvariableop_resource:	ЩC
5sequential_6_dense_24_biasadd_readvariableop_resource:
identityѕбCsequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOpбEsequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1б2sequential_6/batch_normalization_24/ReadVariableOpб4sequential_6/batch_normalization_24/ReadVariableOp_1бCsequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOpбEsequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1б2sequential_6/batch_normalization_25/ReadVariableOpб4sequential_6/batch_normalization_25/ReadVariableOp_1бCsequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOpбEsequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1б2sequential_6/batch_normalization_26/ReadVariableOpб4sequential_6/batch_normalization_26/ReadVariableOp_1бCsequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOpбEsequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1б2sequential_6/batch_normalization_27/ReadVariableOpб4sequential_6/batch_normalization_27/ReadVariableOp_1б-sequential_6/conv2d_24/BiasAdd/ReadVariableOpб,sequential_6/conv2d_24/Conv2D/ReadVariableOpб-sequential_6/conv2d_25/BiasAdd/ReadVariableOpб,sequential_6/conv2d_25/Conv2D/ReadVariableOpб-sequential_6/conv2d_26/BiasAdd/ReadVariableOpб,sequential_6/conv2d_26/Conv2D/ReadVariableOpб-sequential_6/conv2d_27/BiasAdd/ReadVariableOpб,sequential_6/conv2d_27/Conv2D/ReadVariableOpб,sequential_6/dense_21/BiasAdd/ReadVariableOpб+sequential_6/dense_21/MatMul/ReadVariableOpб,sequential_6/dense_22/BiasAdd/ReadVariableOpб+sequential_6/dense_22/MatMul/ReadVariableOpб,sequential_6/dense_23/BiasAdd/ReadVariableOpб+sequential_6/dense_23/MatMul/ReadVariableOpб,sequential_6/dense_24/BiasAdd/ReadVariableOpб+sequential_6/dense_24/MatMul/ReadVariableOpЏ
#sequential_6/resizing_6/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"ќ   ќ   2%
#sequential_6/resizing_6/resize/size§
-sequential_6/resizing_6/resize/ResizeBilinearResizeBilinearinput_7,sequential_6/resizing_6/resize/size:output:0*
T0*1
_output_shapes
:         ќќ*
half_pixel_centers(2/
-sequential_6/resizing_6/resize/ResizeBilinear┌
,sequential_6/conv2d_24/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02.
,sequential_6/conv2d_24/Conv2D/ReadVariableOpб
sequential_6/conv2d_24/Conv2DConv2D>sequential_6/resizing_6/resize/ResizeBilinear:resized_images:04sequential_6/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ќќ*
paddingSAME*
strides
2
sequential_6/conv2d_24/Conv2DЛ
-sequential_6/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_6/conv2d_24/BiasAdd/ReadVariableOpТ
sequential_6/conv2d_24/BiasAddBiasAdd&sequential_6/conv2d_24/Conv2D:output:05sequential_6/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ќќ2 
sequential_6/conv2d_24/BiasAddД
sequential_6/conv2d_24/ReluRelu'sequential_6/conv2d_24/BiasAdd:output:0*
T0*1
_output_shapes
:         ќќ2
sequential_6/conv2d_24/Reluы
%sequential_6/max_pooling2d_24/MaxPoolMaxPool)sequential_6/conv2d_24/Relu:activations:0*/
_output_shapes
:         KK*
ksize
*
paddingVALID*
strides
2'
%sequential_6/max_pooling2d_24/MaxPoolЯ
2sequential_6/batch_normalization_24/ReadVariableOpReadVariableOp;sequential_6_batch_normalization_24_readvariableop_resource*
_output_shapes
:*
dtype024
2sequential_6/batch_normalization_24/ReadVariableOpТ
4sequential_6/batch_normalization_24/ReadVariableOp_1ReadVariableOp=sequential_6_batch_normalization_24_readvariableop_1_resource*
_output_shapes
:*
dtype026
4sequential_6/batch_normalization_24/ReadVariableOp_1Њ
Csequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_6_batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02E
Csequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOpЎ
Esequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_6_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02G
Esequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1╩
4sequential_6/batch_normalization_24/FusedBatchNormV3FusedBatchNormV3.sequential_6/max_pooling2d_24/MaxPool:output:0:sequential_6/batch_normalization_24/ReadVariableOp:value:0<sequential_6/batch_normalization_24/ReadVariableOp_1:value:0Ksequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0Msequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         KK:::::*
epsilon%oЃ:*
is_training( 26
4sequential_6/batch_normalization_24/FusedBatchNormV3┌
,sequential_6/conv2d_25/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype02.
,sequential_6/conv2d_25/Conv2D/ReadVariableOpџ
sequential_6/conv2d_25/Conv2DConv2D8sequential_6/batch_normalization_24/FusedBatchNormV3:y:04sequential_6/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         KK<*
paddingSAME*
strides
2
sequential_6/conv2d_25/Conv2DЛ
-sequential_6/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02/
-sequential_6/conv2d_25/BiasAdd/ReadVariableOpС
sequential_6/conv2d_25/BiasAddBiasAdd&sequential_6/conv2d_25/Conv2D:output:05sequential_6/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         KK<2 
sequential_6/conv2d_25/BiasAddЦ
sequential_6/conv2d_25/ReluRelu'sequential_6/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:         KK<2
sequential_6/conv2d_25/Reluы
%sequential_6/max_pooling2d_25/MaxPoolMaxPool)sequential_6/conv2d_25/Relu:activations:0*/
_output_shapes
:         %%<*
ksize
*
paddingVALID*
strides
2'
%sequential_6/max_pooling2d_25/MaxPoolЯ
2sequential_6/batch_normalization_25/ReadVariableOpReadVariableOp;sequential_6_batch_normalization_25_readvariableop_resource*
_output_shapes
:<*
dtype024
2sequential_6/batch_normalization_25/ReadVariableOpТ
4sequential_6/batch_normalization_25/ReadVariableOp_1ReadVariableOp=sequential_6_batch_normalization_25_readvariableop_1_resource*
_output_shapes
:<*
dtype026
4sequential_6/batch_normalization_25/ReadVariableOp_1Њ
Csequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_6_batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02E
Csequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOpЎ
Esequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_6_batch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02G
Esequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1╩
4sequential_6/batch_normalization_25/FusedBatchNormV3FusedBatchNormV3.sequential_6/max_pooling2d_25/MaxPool:output:0:sequential_6/batch_normalization_25/ReadVariableOp:value:0<sequential_6/batch_normalization_25/ReadVariableOp_1:value:0Ksequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0Msequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         %%<:<:<:<:<:*
epsilon%oЃ:*
is_training( 26
4sequential_6/batch_normalization_25/FusedBatchNormV3┌
,sequential_6/conv2d_26/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_26_conv2d_readvariableop_resource*&
_output_shapes
:<<*
dtype02.
,sequential_6/conv2d_26/Conv2D/ReadVariableOpџ
sequential_6/conv2d_26/Conv2DConv2D8sequential_6/batch_normalization_25/FusedBatchNormV3:y:04sequential_6/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         %%<*
paddingSAME*
strides
2
sequential_6/conv2d_26/Conv2DЛ
-sequential_6/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_26_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype02/
-sequential_6/conv2d_26/BiasAdd/ReadVariableOpС
sequential_6/conv2d_26/BiasAddBiasAdd&sequential_6/conv2d_26/Conv2D:output:05sequential_6/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         %%<2 
sequential_6/conv2d_26/BiasAddЦ
sequential_6/conv2d_26/ReluRelu'sequential_6/conv2d_26/BiasAdd:output:0*
T0*/
_output_shapes
:         %%<2
sequential_6/conv2d_26/Reluы
%sequential_6/max_pooling2d_26/MaxPoolMaxPool)sequential_6/conv2d_26/Relu:activations:0*/
_output_shapes
:         <*
ksize
*
paddingVALID*
strides
2'
%sequential_6/max_pooling2d_26/MaxPoolЯ
2sequential_6/batch_normalization_26/ReadVariableOpReadVariableOp;sequential_6_batch_normalization_26_readvariableop_resource*
_output_shapes
:<*
dtype024
2sequential_6/batch_normalization_26/ReadVariableOpТ
4sequential_6/batch_normalization_26/ReadVariableOp_1ReadVariableOp=sequential_6_batch_normalization_26_readvariableop_1_resource*
_output_shapes
:<*
dtype026
4sequential_6/batch_normalization_26/ReadVariableOp_1Њ
Csequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_6_batch_normalization_26_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02E
Csequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOpЎ
Esequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_6_batch_normalization_26_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02G
Esequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1╩
4sequential_6/batch_normalization_26/FusedBatchNormV3FusedBatchNormV3.sequential_6/max_pooling2d_26/MaxPool:output:0:sequential_6/batch_normalization_26/ReadVariableOp:value:0<sequential_6/batch_normalization_26/ReadVariableOp_1:value:0Ksequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp:value:0Msequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         <:<:<:<:<:*
epsilon%oЃ:*
is_training( 26
4sequential_6/batch_normalization_26/FusedBatchNormV3┌
,sequential_6/conv2d_27/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_27_conv2d_readvariableop_resource*&
_output_shapes
:<*
dtype02.
,sequential_6/conv2d_27/Conv2D/ReadVariableOpџ
sequential_6/conv2d_27/Conv2DConv2D8sequential_6/batch_normalization_26/FusedBatchNormV3:y:04sequential_6/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         *
paddingSAME*
strides
2
sequential_6/conv2d_27/Conv2DЛ
-sequential_6/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_27_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_6/conv2d_27/BiasAdd/ReadVariableOpС
sequential_6/conv2d_27/BiasAddBiasAdd&sequential_6/conv2d_27/Conv2D:output:05sequential_6/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         2 
sequential_6/conv2d_27/BiasAddЦ
sequential_6/conv2d_27/ReluRelu'sequential_6/conv2d_27/BiasAdd:output:0*
T0*/
_output_shapes
:         2
sequential_6/conv2d_27/Reluы
%sequential_6/max_pooling2d_27/MaxPoolMaxPool)sequential_6/conv2d_27/Relu:activations:0*/
_output_shapes
:         		*
ksize
*
paddingVALID*
strides
2'
%sequential_6/max_pooling2d_27/MaxPoolЯ
2sequential_6/batch_normalization_27/ReadVariableOpReadVariableOp;sequential_6_batch_normalization_27_readvariableop_resource*
_output_shapes
:*
dtype024
2sequential_6/batch_normalization_27/ReadVariableOpТ
4sequential_6/batch_normalization_27/ReadVariableOp_1ReadVariableOp=sequential_6_batch_normalization_27_readvariableop_1_resource*
_output_shapes
:*
dtype026
4sequential_6/batch_normalization_27/ReadVariableOp_1Њ
Csequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOpReadVariableOpLsequential_6_batch_normalization_27_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02E
Csequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOpЎ
Esequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNsequential_6_batch_normalization_27_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02G
Esequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1╩
4sequential_6/batch_normalization_27/FusedBatchNormV3FusedBatchNormV3.sequential_6/max_pooling2d_27/MaxPool:output:0:sequential_6/batch_normalization_27/ReadVariableOp:value:0<sequential_6/batch_normalization_27/ReadVariableOp_1:value:0Ksequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp:value:0Msequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         		:::::*
epsilon%oЃ:*
is_training( 26
4sequential_6/batch_normalization_27/FusedBatchNormV3Ї
sequential_6/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ~	  2
sequential_6/flatten_6/Const▀
sequential_6/flatten_6/ReshapeReshape8sequential_6/batch_normalization_27/FusedBatchNormV3:y:0%sequential_6/flatten_6/Const:output:0*
T0*(
_output_shapes
:         ■2 
sequential_6/flatten_6/ReshapeЛ
+sequential_6/dense_21/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_21_matmul_readvariableop_resource* 
_output_shapes
:
■У*
dtype02-
+sequential_6/dense_21/MatMul/ReadVariableOpО
sequential_6/dense_21/MatMulMatMul'sequential_6/flatten_6/Reshape:output:03sequential_6/dense_21/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         У2
sequential_6/dense_21/MatMul¤
,sequential_6/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_21_biasadd_readvariableop_resource*
_output_shapes	
:У*
dtype02.
,sequential_6/dense_21/BiasAdd/ReadVariableOp┌
sequential_6/dense_21/BiasAddBiasAdd&sequential_6/dense_21/MatMul:product:04sequential_6/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         У2
sequential_6/dense_21/BiasAddЏ
sequential_6/dense_21/ReluRelu&sequential_6/dense_21/BiasAdd:output:0*
T0*(
_output_shapes
:         У2
sequential_6/dense_21/ReluЛ
+sequential_6/dense_22/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_22_matmul_readvariableop_resource* 
_output_shapes
:
УЗ*
dtype02-
+sequential_6/dense_22/MatMul/ReadVariableOpп
sequential_6/dense_22/MatMulMatMul(sequential_6/dense_21/Relu:activations:03sequential_6/dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         З2
sequential_6/dense_22/MatMul¤
,sequential_6/dense_22/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:З*
dtype02.
,sequential_6/dense_22/BiasAdd/ReadVariableOp┌
sequential_6/dense_22/BiasAddBiasAdd&sequential_6/dense_22/MatMul:product:04sequential_6/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         З2
sequential_6/dense_22/BiasAddЏ
sequential_6/dense_22/ReluRelu&sequential_6/dense_22/BiasAdd:output:0*
T0*(
_output_shapes
:         З2
sequential_6/dense_22/ReluФ
sequential_6/dropout_6/IdentityIdentity(sequential_6/dense_22/Relu:activations:0*
T0*(
_output_shapes
:         З2!
sequential_6/dropout_6/IdentityЛ
+sequential_6/dense_23/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_23_matmul_readvariableop_resource* 
_output_shapes
:
ЗЩ*
dtype02-
+sequential_6/dense_23/MatMul/ReadVariableOpп
sequential_6/dense_23/MatMulMatMul(sequential_6/dropout_6/Identity:output:03sequential_6/dense_23/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Щ2
sequential_6/dense_23/MatMul¤
,sequential_6/dense_23/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_23_biasadd_readvariableop_resource*
_output_shapes	
:Щ*
dtype02.
,sequential_6/dense_23/BiasAdd/ReadVariableOp┌
sequential_6/dense_23/BiasAddBiasAdd&sequential_6/dense_23/MatMul:product:04sequential_6/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Щ2
sequential_6/dense_23/BiasAddЏ
sequential_6/dense_23/ReluRelu&sequential_6/dense_23/BiasAdd:output:0*
T0*(
_output_shapes
:         Щ2
sequential_6/dense_23/Reluл
+sequential_6/dense_24/MatMul/ReadVariableOpReadVariableOp4sequential_6_dense_24_matmul_readvariableop_resource*
_output_shapes
:	Щ*
dtype02-
+sequential_6/dense_24/MatMul/ReadVariableOpО
sequential_6/dense_24/MatMulMatMul(sequential_6/dense_23/Relu:activations:03sequential_6/dense_24/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_6/dense_24/MatMul╬
,sequential_6/dense_24/BiasAdd/ReadVariableOpReadVariableOp5sequential_6_dense_24_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_6/dense_24/BiasAdd/ReadVariableOp┘
sequential_6/dense_24/BiasAddBiasAdd&sequential_6/dense_24/MatMul:product:04sequential_6/dense_24/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
sequential_6/dense_24/BiasAddџ
sequential_6/dense_24/ReluRelu&sequential_6/dense_24/BiasAdd:output:0*
T0*'
_output_shapes
:         2
sequential_6/dense_24/ReluЃ
IdentityIdentity(sequential_6/dense_24/Relu:activations:0^NoOp*
T0*'
_output_shapes
:         2

Identityд
NoOpNoOpD^sequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOpF^sequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_13^sequential_6/batch_normalization_24/ReadVariableOp5^sequential_6/batch_normalization_24/ReadVariableOp_1D^sequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOpF^sequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_13^sequential_6/batch_normalization_25/ReadVariableOp5^sequential_6/batch_normalization_25/ReadVariableOp_1D^sequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOpF^sequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_13^sequential_6/batch_normalization_26/ReadVariableOp5^sequential_6/batch_normalization_26/ReadVariableOp_1D^sequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOpF^sequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_13^sequential_6/batch_normalization_27/ReadVariableOp5^sequential_6/batch_normalization_27/ReadVariableOp_1.^sequential_6/conv2d_24/BiasAdd/ReadVariableOp-^sequential_6/conv2d_24/Conv2D/ReadVariableOp.^sequential_6/conv2d_25/BiasAdd/ReadVariableOp-^sequential_6/conv2d_25/Conv2D/ReadVariableOp.^sequential_6/conv2d_26/BiasAdd/ReadVariableOp-^sequential_6/conv2d_26/Conv2D/ReadVariableOp.^sequential_6/conv2d_27/BiasAdd/ReadVariableOp-^sequential_6/conv2d_27/Conv2D/ReadVariableOp-^sequential_6/dense_21/BiasAdd/ReadVariableOp,^sequential_6/dense_21/MatMul/ReadVariableOp-^sequential_6/dense_22/BiasAdd/ReadVariableOp,^sequential_6/dense_22/MatMul/ReadVariableOp-^sequential_6/dense_23/BiasAdd/ReadVariableOp,^sequential_6/dense_23/MatMul/ReadVariableOp-^sequential_6/dense_24/BiasAdd/ReadVariableOp,^sequential_6/dense_24/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2і
Csequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOpCsequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp2ј
Esequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1Esequential_6/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12h
2sequential_6/batch_normalization_24/ReadVariableOp2sequential_6/batch_normalization_24/ReadVariableOp2l
4sequential_6/batch_normalization_24/ReadVariableOp_14sequential_6/batch_normalization_24/ReadVariableOp_12і
Csequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOpCsequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp2ј
Esequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1Esequential_6/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12h
2sequential_6/batch_normalization_25/ReadVariableOp2sequential_6/batch_normalization_25/ReadVariableOp2l
4sequential_6/batch_normalization_25/ReadVariableOp_14sequential_6/batch_normalization_25/ReadVariableOp_12і
Csequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOpCsequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp2ј
Esequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_1Esequential_6/batch_normalization_26/FusedBatchNormV3/ReadVariableOp_12h
2sequential_6/batch_normalization_26/ReadVariableOp2sequential_6/batch_normalization_26/ReadVariableOp2l
4sequential_6/batch_normalization_26/ReadVariableOp_14sequential_6/batch_normalization_26/ReadVariableOp_12і
Csequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOpCsequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp2ј
Esequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_1Esequential_6/batch_normalization_27/FusedBatchNormV3/ReadVariableOp_12h
2sequential_6/batch_normalization_27/ReadVariableOp2sequential_6/batch_normalization_27/ReadVariableOp2l
4sequential_6/batch_normalization_27/ReadVariableOp_14sequential_6/batch_normalization_27/ReadVariableOp_12^
-sequential_6/conv2d_24/BiasAdd/ReadVariableOp-sequential_6/conv2d_24/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_24/Conv2D/ReadVariableOp,sequential_6/conv2d_24/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_25/BiasAdd/ReadVariableOp-sequential_6/conv2d_25/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_25/Conv2D/ReadVariableOp,sequential_6/conv2d_25/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_26/BiasAdd/ReadVariableOp-sequential_6/conv2d_26/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_26/Conv2D/ReadVariableOp,sequential_6/conv2d_26/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_27/BiasAdd/ReadVariableOp-sequential_6/conv2d_27/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_27/Conv2D/ReadVariableOp,sequential_6/conv2d_27/Conv2D/ReadVariableOp2\
,sequential_6/dense_21/BiasAdd/ReadVariableOp,sequential_6/dense_21/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_21/MatMul/ReadVariableOp+sequential_6/dense_21/MatMul/ReadVariableOp2\
,sequential_6/dense_22/BiasAdd/ReadVariableOp,sequential_6/dense_22/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_22/MatMul/ReadVariableOp+sequential_6/dense_22/MatMul/ReadVariableOp2\
,sequential_6/dense_23/BiasAdd/ReadVariableOp,sequential_6/dense_23/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_23/MatMul/ReadVariableOp+sequential_6/dense_23/MatMul/ReadVariableOp2\
,sequential_6/dense_24/BiasAdd/ReadVariableOp,sequential_6/dense_24/BiasAdd/ReadVariableOp2Z
+sequential_6/dense_24/MatMul/ReadVariableOp+sequential_6/dense_24/MatMul/ReadVariableOp:Z V
1
_output_shapes
:         ╚╚
!
_user_specified_name	input_7
л
┬
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6545844

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1п
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         KK:::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1w
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*/
_output_shapes
:         KK2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         KK: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:         KK
 
_user_specified_nameinputs
я
N
2__inference_max_pooling2d_25_layer_call_fn_6547016

inputs
identityы
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *V
fQRO
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_65447642
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Є
э
E__inference_dense_24_layer_call_and_return_conditional_losses_6547601

inputs1
matmul_readvariableop_resource:	Щ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Щ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Щ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Щ
 
_user_specified_nameinputs
Ў
┬
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6545139

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
э
d
F__inference_dropout_6_layer_call_and_return_conditional_losses_6547549

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         З2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         З2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         З:P L
(
_output_shapes
:         З
 
_user_specified_nameinputs
Г
i
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_6546862

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
 
М
8__inference_batch_normalization_27_layer_call_fn_6547398

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityѕбStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         		*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_65454042
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         		2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         		: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         		
 
_user_specified_nameinputs
§
М
8__inference_batch_normalization_25_layer_call_fn_6547083

inputs
unknown:<
	unknown_0:<
	unknown_1:<
	unknown_2:<
identityѕбStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         %%<*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_65457852
StatefulPartitionedCallЃ
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         %%<2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:         %%<: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         %%<
 
_user_specified_nameinputs
└
i
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_6545335

inputs
identityњ
MaxPoolMaxPoolinputs*/
_output_shapes
:         <*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:         <2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         %%<:W S
/
_output_shapes
:         %%<
 
_user_specified_nameinputs
Ў
┬
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6547119

inputs%
readvariableop_resource:<'
readvariableop_1_resource:<6
(fusedbatchnormv3_readvariableop_resource:<8
*fusedbatchnormv3_readvariableop_1_resource:<
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:<*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:<*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:<*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:<*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           <:<:<:<:<:*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           <2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           <: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           <
 
_user_specified_nameinputs
Ў
┬
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6544695

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityѕбAssignNewValueбAssignNewValue_1бFusedBatchNormV3/ReadVariableOpб!FusedBatchNormV3/ReadVariableOp_1бReadVariableOpбReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOpГ
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oЃ:*
exponential_avg_factor%
О#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Ѕ
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           2

Identity▄
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Є
э
E__inference_dense_24_layer_call_and_return_conditional_losses_6545491

inputs1
matmul_readvariableop_resource:	Щ-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Щ*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Щ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Щ
 
_user_specified_nameinputs
х
т
.__inference_sequential_6_layer_call_fn_6545565
input_7!
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:#
	unknown_5:<
	unknown_6:<
	unknown_7:<
	unknown_8:<
	unknown_9:<

unknown_10:<$

unknown_11:<<

unknown_12:<

unknown_13:<

unknown_14:<

unknown_15:<

unknown_16:<$

unknown_17:<

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23:
■У

unknown_24:	У

unknown_25:
УЗ

unknown_26:	З

unknown_27:
ЗЩ

unknown_28:	Щ

unknown_29:	Щ

unknown_30:
identityѕбStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinput_7unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *B
_read_only_resource_inputs$
" 	
 *0
config_proto 

CPU

GPU2*0J 8ѓ *R
fMRK
I__inference_sequential_6_layer_call_and_return_conditional_losses_65454982
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ╚╚
!
_user_specified_name	input_7"еL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*х
serving_defaultА
E
input_7:
serving_default_input_7:0         ╚╚<
dense_240
StatefulPartitionedCall:0         tensorflow/serving/predict:Цѕ
Б
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
layer-10
layer-11
layer_with_weights-7
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer-16
layer_with_weights-10
layer-17
layer_with_weights-11
layer-18
	optimizer
regularization_losses
trainable_variables
	variables
	keras_api

signatures
«__call__
»_default_save_signature
+░&call_and_return_all_conditional_losses"
_tf_keras_sequential
Д
	variables
regularization_losses
trainable_variables
	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses"
_tf_keras_layer
й

kernel
bias
 	variables
!regularization_losses
"trainable_variables
#	keras_api
│__call__
+┤&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
$	variables
%regularization_losses
&trainable_variables
'	keras_api
х__call__
+Х&call_and_return_all_conditional_losses"
_tf_keras_layer
В
(axis
	)gamma
*beta
+moving_mean
,moving_variance
-	variables
.regularization_losses
/trainable_variables
0	keras_api
и__call__
+И&call_and_return_all_conditional_losses"
_tf_keras_layer
й

1kernel
2bias
3	variables
4regularization_losses
5trainable_variables
6	keras_api
╣__call__
+║&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
7	variables
8regularization_losses
9trainable_variables
:	keras_api
╗__call__
+╝&call_and_return_all_conditional_losses"
_tf_keras_layer
В
;axis
	<gamma
=beta
>moving_mean
?moving_variance
@	variables
Aregularization_losses
Btrainable_variables
C	keras_api
й__call__
+Й&call_and_return_all_conditional_losses"
_tf_keras_layer
й

Dkernel
Ebias
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
┐__call__
+└&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses"
_tf_keras_layer
В
Naxis
	Ogamma
Pbeta
Qmoving_mean
Rmoving_variance
S	variables
Tregularization_losses
Utrainable_variables
V	keras_api
├__call__
+─&call_and_return_all_conditional_losses"
_tf_keras_layer
й

Wkernel
Xbias
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
┼__call__
+к&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
]	variables
^regularization_losses
_trainable_variables
`	keras_api
К__call__
+╚&call_and_return_all_conditional_losses"
_tf_keras_layer
В
aaxis
	bgamma
cbeta
dmoving_mean
emoving_variance
f	variables
gregularization_losses
htrainable_variables
i	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
j	variables
kregularization_losses
ltrainable_variables
m	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses"
_tf_keras_layer
й

nkernel
obias
p	variables
qregularization_losses
rtrainable_variables
s	keras_api
═__call__
+╬&call_and_return_all_conditional_losses"
_tf_keras_layer
й

tkernel
ubias
v	variables
wregularization_losses
xtrainable_variables
y	keras_api
¤__call__
+л&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
z	variables
{regularization_losses
|trainable_variables
}	keras_api
Л__call__
+м&call_and_return_all_conditional_losses"
_tf_keras_layer
┴

~kernel
bias
ђ	variables
Ђregularization_losses
ѓtrainable_variables
Ѓ	keras_api
М__call__
+н&call_and_return_all_conditional_losses"
_tf_keras_layer
├
ёkernel
	Ёbias
є	variables
Єregularization_losses
ѕtrainable_variables
Ѕ	keras_api
Н__call__
+о&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
	іiter
Іbeta_1
їbeta_2

Їdecay
јlearning_ratem■m )mђ*mЂ1mѓ2mЃ<mё=mЁDmєEmЄOmѕPmЅWmіXmІbmїcmЇnmјomЈtmљumЉ~mњmЊ	ёmћ	ЁmЋvќvЌ)vў*vЎ1vџ2vЏ<vю=vЮDvъEvЪOvаPvАWvбXvБbvцcvЦnvдovДtvеuvЕ~vфvФ	ёvг	ЁvГ"
	optimizer
 "
trackable_list_wrapper
п
0
1
)2
*3
14
25
<6
=7
D8
E9
O10
P11
W12
X13
b14
c15
n16
o17
t18
u19
~20
21
ё22
Ё23"
trackable_list_wrapper
ў
0
1
)2
*3
+4
,5
16
27
<8
=9
>10
?11
D12
E13
O14
P15
Q16
R17
W18
X19
b20
c21
d22
e23
n24
o25
t26
u27
~28
29
ё30
Ё31"
trackable_list_wrapper
М
Јmetrics
љnon_trainable_variables
regularization_losses
trainable_variables
Љlayers
њlayer_metrics
	variables
 Њlayer_regularization_losses
«__call__
»_default_save_signature
+░&call_and_return_all_conditional_losses
'░"call_and_return_conditional_losses"
_generic_user_object
-
Оserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
ћmetrics
	variables
Ћnon_trainable_variables
regularization_losses
trainable_variables
ќlayer_metrics
Ќlayers
 ўlayer_regularization_losses
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses"
_generic_user_object
*:(2conv2d_24/kernel
:2conv2d_24/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
х
Ўmetrics
 	variables
џnon_trainable_variables
!regularization_losses
"trainable_variables
Џlayer_metrics
юlayers
 Юlayer_regularization_losses
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
ъmetrics
$	variables
Ъnon_trainable_variables
%regularization_losses
&trainable_variables
аlayer_metrics
Аlayers
 бlayer_regularization_losses
х__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_24/gamma
):'2batch_normalization_24/beta
2:0 (2"batch_normalization_24/moving_mean
6:4 (2&batch_normalization_24/moving_variance
<
)0
*1
+2
,3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
х
Бmetrics
-	variables
цnon_trainable_variables
.regularization_losses
/trainable_variables
Цlayer_metrics
дlayers
 Дlayer_regularization_losses
и__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
*:(<2conv2d_25/kernel
:<2conv2d_25/bias
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
х
еmetrics
3	variables
Еnon_trainable_variables
4regularization_losses
5trainable_variables
фlayer_metrics
Фlayers
 гlayer_regularization_losses
╣__call__
+║&call_and_return_all_conditional_losses
'║"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Гmetrics
7	variables
«non_trainable_variables
8regularization_losses
9trainable_variables
»layer_metrics
░layers
 ▒layer_regularization_losses
╗__call__
+╝&call_and_return_all_conditional_losses
'╝"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(<2batch_normalization_25/gamma
):'<2batch_normalization_25/beta
2:0< (2"batch_normalization_25/moving_mean
6:4< (2&batch_normalization_25/moving_variance
<
<0
=1
>2
?3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
х
▓metrics
@	variables
│non_trainable_variables
Aregularization_losses
Btrainable_variables
┤layer_metrics
хlayers
 Хlayer_regularization_losses
й__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
*:(<<2conv2d_26/kernel
:<2conv2d_26/bias
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
х
иmetrics
F	variables
Иnon_trainable_variables
Gregularization_losses
Htrainable_variables
╣layer_metrics
║layers
 ╗layer_regularization_losses
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
╝metrics
J	variables
йnon_trainable_variables
Kregularization_losses
Ltrainable_variables
Йlayer_metrics
┐layers
 └layer_regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(<2batch_normalization_26/gamma
):'<2batch_normalization_26/beta
2:0< (2"batch_normalization_26/moving_mean
6:4< (2&batch_normalization_26/moving_variance
<
O0
P1
Q2
R3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
х
┴metrics
S	variables
┬non_trainable_variables
Tregularization_losses
Utrainable_variables
├layer_metrics
─layers
 ┼layer_regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
*:(<2conv2d_27/kernel
:2conv2d_27/bias
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
х
кmetrics
Y	variables
Кnon_trainable_variables
Zregularization_losses
[trainable_variables
╚layer_metrics
╔layers
 ╩layer_regularization_losses
┼__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
╦metrics
]	variables
╠non_trainable_variables
^regularization_losses
_trainable_variables
═layer_metrics
╬layers
 ¤layer_regularization_losses
К__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_27/gamma
):'2batch_normalization_27/beta
2:0 (2"batch_normalization_27/moving_mean
6:4 (2&batch_normalization_27/moving_variance
<
b0
c1
d2
e3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
х
лmetrics
f	variables
Лnon_trainable_variables
gregularization_losses
htrainable_variables
мlayer_metrics
Мlayers
 нlayer_regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Нmetrics
j	variables
оnon_trainable_variables
kregularization_losses
ltrainable_variables
Оlayer_metrics
пlayers
 ┘layer_regularization_losses
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
#:!
■У2dense_21/kernel
:У2dense_21/bias
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
х
┌metrics
p	variables
█non_trainable_variables
qregularization_losses
rtrainable_variables
▄layer_metrics
Пlayers
 яlayer_regularization_losses
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
#:!
УЗ2dense_22/kernel
:З2dense_22/bias
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
х
▀metrics
v	variables
Яnon_trainable_variables
wregularization_losses
xtrainable_variables
рlayer_metrics
Рlayers
 сlayer_regularization_losses
¤__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Сmetrics
z	variables
тnon_trainable_variables
{regularization_losses
|trainable_variables
Тlayer_metrics
уlayers
 Уlayer_regularization_losses
Л__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
#:!
ЗЩ2dense_23/kernel
:Щ2dense_23/bias
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
И
жmetrics
ђ	variables
Жnon_trainable_variables
Ђregularization_losses
ѓtrainable_variables
вlayer_metrics
Вlayers
 ьlayer_regularization_losses
М__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
": 	Щ2dense_24/kernel
:2dense_24/bias
0
ё0
Ё1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
ё0
Ё1"
trackable_list_wrapper
И
Ьmetrics
є	variables
№non_trainable_variables
Єregularization_losses
ѕtrainable_variables
­layer_metrics
ыlayers
 Ыlayer_regularization_losses
Н__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
з0
З1"
trackable_list_wrapper
X
+0
,1
>2
?3
Q4
R5
d6
e7"
trackable_list_wrapper
«
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18"
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
.
+0
,1"
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
.
>0
?1"
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
.
Q0
R1"
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
.
d0
e1"
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
R

шtotal

Шcount
э	variables
Э	keras_api"
_tf_keras_metric
c

щtotal

Щcount
ч
_fn_kwargs
Ч	variables
§	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
ш0
Ш1"
trackable_list_wrapper
.
э	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
щ0
Щ1"
trackable_list_wrapper
.
Ч	variables"
_generic_user_object
/:-2Adam/conv2d_24/kernel/m
!:2Adam/conv2d_24/bias/m
/:-2#Adam/batch_normalization_24/gamma/m
.:,2"Adam/batch_normalization_24/beta/m
/:-<2Adam/conv2d_25/kernel/m
!:<2Adam/conv2d_25/bias/m
/:-<2#Adam/batch_normalization_25/gamma/m
.:,<2"Adam/batch_normalization_25/beta/m
/:-<<2Adam/conv2d_26/kernel/m
!:<2Adam/conv2d_26/bias/m
/:-<2#Adam/batch_normalization_26/gamma/m
.:,<2"Adam/batch_normalization_26/beta/m
/:-<2Adam/conv2d_27/kernel/m
!:2Adam/conv2d_27/bias/m
/:-2#Adam/batch_normalization_27/gamma/m
.:,2"Adam/batch_normalization_27/beta/m
(:&
■У2Adam/dense_21/kernel/m
!:У2Adam/dense_21/bias/m
(:&
УЗ2Adam/dense_22/kernel/m
!:З2Adam/dense_22/bias/m
(:&
ЗЩ2Adam/dense_23/kernel/m
!:Щ2Adam/dense_23/bias/m
':%	Щ2Adam/dense_24/kernel/m
 :2Adam/dense_24/bias/m
/:-2Adam/conv2d_24/kernel/v
!:2Adam/conv2d_24/bias/v
/:-2#Adam/batch_normalization_24/gamma/v
.:,2"Adam/batch_normalization_24/beta/v
/:-<2Adam/conv2d_25/kernel/v
!:<2Adam/conv2d_25/bias/v
/:-<2#Adam/batch_normalization_25/gamma/v
.:,<2"Adam/batch_normalization_25/beta/v
/:-<<2Adam/conv2d_26/kernel/v
!:<2Adam/conv2d_26/bias/v
/:-<2#Adam/batch_normalization_26/gamma/v
.:,<2"Adam/batch_normalization_26/beta/v
/:-<2Adam/conv2d_27/kernel/v
!:2Adam/conv2d_27/bias/v
/:-2#Adam/batch_normalization_27/gamma/v
.:,2"Adam/batch_normalization_27/beta/v
(:&
■У2Adam/dense_21/kernel/v
!:У2Adam/dense_21/bias/v
(:&
УЗ2Adam/dense_22/kernel/v
!:З2Adam/dense_22/bias/v
(:&
ЗЩ2Adam/dense_23/kernel/v
!:Щ2Adam/dense_23/bias/v
':%	Щ2Adam/dense_24/kernel/v
 :2Adam/dense_24/bias/v
є2Ѓ
.__inference_sequential_6_layer_call_fn_6545565
.__inference_sequential_6_layer_call_fn_6546490
.__inference_sequential_6_layer_call_fn_6546559
.__inference_sequential_6_layer_call_fn_6546170└
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
═B╩
"__inference__wrapped_model_6544607input_7"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ы2№
I__inference_sequential_6_layer_call_and_return_conditional_losses_6546684
I__inference_sequential_6_layer_call_and_return_conditional_losses_6546816
I__inference_sequential_6_layer_call_and_return_conditional_losses_6546257
I__inference_sequential_6_layer_call_and_return_conditional_losses_6546344└
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
о2М
,__inference_resizing_6_layer_call_fn_6546821б
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
ы2Ь
G__inference_resizing_6_layer_call_and_return_conditional_losses_6546827б
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
Н2м
+__inference_conv2d_24_layer_call_fn_6546836б
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
­2ь
F__inference_conv2d_24_layer_call_and_return_conditional_losses_6546847б
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
љ2Ї
2__inference_max_pooling2d_24_layer_call_fn_6546852
2__inference_max_pooling2d_24_layer_call_fn_6546857б
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
к2├
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_6546862
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_6546867б
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
б2Ъ
8__inference_batch_normalization_24_layer_call_fn_6546880
8__inference_batch_normalization_24_layer_call_fn_6546893
8__inference_batch_normalization_24_layer_call_fn_6546906
8__inference_batch_normalization_24_layer_call_fn_6546919┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

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
ј2І
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6546937
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6546955
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6546973
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6546991┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

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
Н2м
+__inference_conv2d_25_layer_call_fn_6547000б
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
­2ь
F__inference_conv2d_25_layer_call_and_return_conditional_losses_6547011б
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
љ2Ї
2__inference_max_pooling2d_25_layer_call_fn_6547016
2__inference_max_pooling2d_25_layer_call_fn_6547021б
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
к2├
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_6547026
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_6547031б
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
б2Ъ
8__inference_batch_normalization_25_layer_call_fn_6547044
8__inference_batch_normalization_25_layer_call_fn_6547057
8__inference_batch_normalization_25_layer_call_fn_6547070
8__inference_batch_normalization_25_layer_call_fn_6547083┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

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
ј2І
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6547101
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6547119
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6547137
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6547155┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

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
Н2м
+__inference_conv2d_26_layer_call_fn_6547164б
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
­2ь
F__inference_conv2d_26_layer_call_and_return_conditional_losses_6547175б
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
љ2Ї
2__inference_max_pooling2d_26_layer_call_fn_6547180
2__inference_max_pooling2d_26_layer_call_fn_6547185б
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
к2├
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_6547190
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_6547195б
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
б2Ъ
8__inference_batch_normalization_26_layer_call_fn_6547208
8__inference_batch_normalization_26_layer_call_fn_6547221
8__inference_batch_normalization_26_layer_call_fn_6547234
8__inference_batch_normalization_26_layer_call_fn_6547247┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

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
ј2І
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6547265
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6547283
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6547301
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6547319┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

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
Н2м
+__inference_conv2d_27_layer_call_fn_6547328б
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
­2ь
F__inference_conv2d_27_layer_call_and_return_conditional_losses_6547339б
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
љ2Ї
2__inference_max_pooling2d_27_layer_call_fn_6547344
2__inference_max_pooling2d_27_layer_call_fn_6547349б
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
к2├
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6547354
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6547359б
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
б2Ъ
8__inference_batch_normalization_27_layer_call_fn_6547372
8__inference_batch_normalization_27_layer_call_fn_6547385
8__inference_batch_normalization_27_layer_call_fn_6547398
8__inference_batch_normalization_27_layer_call_fn_6547411┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

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
ј2І
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6547429
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6547447
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6547465
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6547483┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

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
Н2м
+__inference_flatten_6_layer_call_fn_6547488б
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
­2ь
F__inference_flatten_6_layer_call_and_return_conditional_losses_6547494б
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
н2Л
*__inference_dense_21_layer_call_fn_6547503б
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
№2В
E__inference_dense_21_layer_call_and_return_conditional_losses_6547514б
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
н2Л
*__inference_dense_22_layer_call_fn_6547523б
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
№2В
E__inference_dense_22_layer_call_and_return_conditional_losses_6547534б
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
ћ2Љ
+__inference_dropout_6_layer_call_fn_6547539
+__inference_dropout_6_layer_call_fn_6547544┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

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
╩2К
F__inference_dropout_6_layer_call_and_return_conditional_losses_6547549
F__inference_dropout_6_layer_call_and_return_conditional_losses_6547561┤
Ф▓Д
FullArgSpec)
args!џ
jself
jinputs

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
н2Л
*__inference_dense_23_layer_call_fn_6547570б
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
№2В
E__inference_dense_23_layer_call_and_return_conditional_losses_6547581б
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
н2Л
*__inference_dense_24_layer_call_fn_6547590б
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
№2В
E__inference_dense_24_layer_call_and_return_conditional_losses_6547601б
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
╠B╔
%__inference_signature_wrapper_6546421input_7"ћ
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
 ╝
"__inference__wrapped_model_6544607Ћ")*+,12<=>?DEOPQRWXbcdenotu~ёЁ:б7
0б-
+і(
input_7         ╚╚
ф "3ф0
.
dense_24"і
dense_24         Ь
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6546937ќ)*+,MбJ
Cб@
:і7
inputs+                           
p 
ф "?б<
5і2
0+                           
џ Ь
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6546955ќ)*+,MбJ
Cб@
:і7
inputs+                           
p
ф "?б<
5і2
0+                           
џ ╔
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6546973r)*+,;б8
1б.
(і%
inputs         KK
p 
ф "-б*
#і 
0         KK
џ ╔
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_6546991r)*+,;б8
1б.
(і%
inputs         KK
p
ф "-б*
#і 
0         KK
џ к
8__inference_batch_normalization_24_layer_call_fn_6546880Ѕ)*+,MбJ
Cб@
:і7
inputs+                           
p 
ф "2і/+                           к
8__inference_batch_normalization_24_layer_call_fn_6546893Ѕ)*+,MбJ
Cб@
:і7
inputs+                           
p
ф "2і/+                           А
8__inference_batch_normalization_24_layer_call_fn_6546906e)*+,;б8
1б.
(і%
inputs         KK
p 
ф " і         KKА
8__inference_batch_normalization_24_layer_call_fn_6546919e)*+,;б8
1б.
(і%
inputs         KK
p
ф " і         KKЬ
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6547101ќ<=>?MбJ
Cб@
:і7
inputs+                           <
p 
ф "?б<
5і2
0+                           <
џ Ь
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6547119ќ<=>?MбJ
Cб@
:і7
inputs+                           <
p
ф "?б<
5і2
0+                           <
џ ╔
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6547137r<=>?;б8
1б.
(і%
inputs         %%<
p 
ф "-б*
#і 
0         %%<
џ ╔
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_6547155r<=>?;б8
1б.
(і%
inputs         %%<
p
ф "-б*
#і 
0         %%<
џ к
8__inference_batch_normalization_25_layer_call_fn_6547044Ѕ<=>?MбJ
Cб@
:і7
inputs+                           <
p 
ф "2і/+                           <к
8__inference_batch_normalization_25_layer_call_fn_6547057Ѕ<=>?MбJ
Cб@
:і7
inputs+                           <
p
ф "2і/+                           <А
8__inference_batch_normalization_25_layer_call_fn_6547070e<=>?;б8
1б.
(і%
inputs         %%<
p 
ф " і         %%<А
8__inference_batch_normalization_25_layer_call_fn_6547083e<=>?;б8
1б.
(і%
inputs         %%<
p
ф " і         %%<Ь
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6547265ќOPQRMбJ
Cб@
:і7
inputs+                           <
p 
ф "?б<
5і2
0+                           <
џ Ь
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6547283ќOPQRMбJ
Cб@
:і7
inputs+                           <
p
ф "?б<
5і2
0+                           <
џ ╔
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6547301rOPQR;б8
1б.
(і%
inputs         <
p 
ф "-б*
#і 
0         <
џ ╔
S__inference_batch_normalization_26_layer_call_and_return_conditional_losses_6547319rOPQR;б8
1б.
(і%
inputs         <
p
ф "-б*
#і 
0         <
џ к
8__inference_batch_normalization_26_layer_call_fn_6547208ЅOPQRMбJ
Cб@
:і7
inputs+                           <
p 
ф "2і/+                           <к
8__inference_batch_normalization_26_layer_call_fn_6547221ЅOPQRMбJ
Cб@
:і7
inputs+                           <
p
ф "2і/+                           <А
8__inference_batch_normalization_26_layer_call_fn_6547234eOPQR;б8
1б.
(і%
inputs         <
p 
ф " і         <А
8__inference_batch_normalization_26_layer_call_fn_6547247eOPQR;б8
1б.
(і%
inputs         <
p
ф " і         <Ь
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6547429ќbcdeMбJ
Cб@
:і7
inputs+                           
p 
ф "?б<
5і2
0+                           
џ Ь
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6547447ќbcdeMбJ
Cб@
:і7
inputs+                           
p
ф "?б<
5і2
0+                           
џ ╔
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6547465rbcde;б8
1б.
(і%
inputs         		
p 
ф "-б*
#і 
0         		
џ ╔
S__inference_batch_normalization_27_layer_call_and_return_conditional_losses_6547483rbcde;б8
1б.
(і%
inputs         		
p
ф "-б*
#і 
0         		
џ к
8__inference_batch_normalization_27_layer_call_fn_6547372ЅbcdeMбJ
Cб@
:і7
inputs+                           
p 
ф "2і/+                           к
8__inference_batch_normalization_27_layer_call_fn_6547385ЅbcdeMбJ
Cб@
:і7
inputs+                           
p
ф "2і/+                           А
8__inference_batch_normalization_27_layer_call_fn_6547398ebcde;б8
1б.
(і%
inputs         		
p 
ф " і         		А
8__inference_batch_normalization_27_layer_call_fn_6547411ebcde;б8
1б.
(і%
inputs         		
p
ф " і         		║
F__inference_conv2d_24_layer_call_and_return_conditional_losses_6546847p9б6
/б,
*і'
inputs         ќќ
ф "/б,
%і"
0         ќќ
џ њ
+__inference_conv2d_24_layer_call_fn_6546836c9б6
/б,
*і'
inputs         ќќ
ф ""і         ќќХ
F__inference_conv2d_25_layer_call_and_return_conditional_losses_6547011l127б4
-б*
(і%
inputs         KK
ф "-б*
#і 
0         KK<
џ ј
+__inference_conv2d_25_layer_call_fn_6547000_127б4
-б*
(і%
inputs         KK
ф " і         KK<Х
F__inference_conv2d_26_layer_call_and_return_conditional_losses_6547175lDE7б4
-б*
(і%
inputs         %%<
ф "-б*
#і 
0         %%<
џ ј
+__inference_conv2d_26_layer_call_fn_6547164_DE7б4
-б*
(і%
inputs         %%<
ф " і         %%<Х
F__inference_conv2d_27_layer_call_and_return_conditional_losses_6547339lWX7б4
-б*
(і%
inputs         <
ф "-б*
#і 
0         
џ ј
+__inference_conv2d_27_layer_call_fn_6547328_WX7б4
-б*
(і%
inputs         <
ф " і         Д
E__inference_dense_21_layer_call_and_return_conditional_losses_6547514^no0б-
&б#
!і
inputs         ■
ф "&б#
і
0         У
џ 
*__inference_dense_21_layer_call_fn_6547503Qno0б-
&б#
!і
inputs         ■
ф "і         УД
E__inference_dense_22_layer_call_and_return_conditional_losses_6547534^tu0б-
&б#
!і
inputs         У
ф "&б#
і
0         З
џ 
*__inference_dense_22_layer_call_fn_6547523Qtu0б-
&б#
!і
inputs         У
ф "і         ЗД
E__inference_dense_23_layer_call_and_return_conditional_losses_6547581^~0б-
&б#
!і
inputs         З
ф "&б#
і
0         Щ
џ 
*__inference_dense_23_layer_call_fn_6547570Q~0б-
&б#
!і
inputs         З
ф "і         Ще
E__inference_dense_24_layer_call_and_return_conditional_losses_6547601_ёЁ0б-
&б#
!і
inputs         Щ
ф "%б"
і
0         
џ ђ
*__inference_dense_24_layer_call_fn_6547590RёЁ0б-
&б#
!і
inputs         Щ
ф "і         е
F__inference_dropout_6_layer_call_and_return_conditional_losses_6547549^4б1
*б'
!і
inputs         З
p 
ф "&б#
і
0         З
џ е
F__inference_dropout_6_layer_call_and_return_conditional_losses_6547561^4б1
*б'
!і
inputs         З
p
ф "&б#
і
0         З
џ ђ
+__inference_dropout_6_layer_call_fn_6547539Q4б1
*б'
!і
inputs         З
p 
ф "і         Зђ
+__inference_dropout_6_layer_call_fn_6547544Q4б1
*б'
!і
inputs         З
p
ф "і         ЗФ
F__inference_flatten_6_layer_call_and_return_conditional_losses_6547494a7б4
-б*
(і%
inputs         		
ф "&б#
і
0         ■
џ Ѓ
+__inference_flatten_6_layer_call_fn_6547488T7б4
-б*
(і%
inputs         		
ф "і         ■­
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_6546862ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ╗
M__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_6546867j9б6
/б,
*і'
inputs         ќќ
ф "-б*
#і 
0         KK
џ ╚
2__inference_max_pooling2d_24_layer_call_fn_6546852ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Њ
2__inference_max_pooling2d_24_layer_call_fn_6546857]9б6
/б,
*і'
inputs         ќќ
ф " і         KK­
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_6547026ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ╣
M__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_6547031h7б4
-б*
(і%
inputs         KK<
ф "-б*
#і 
0         %%<
џ ╚
2__inference_max_pooling2d_25_layer_call_fn_6547016ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Љ
2__inference_max_pooling2d_25_layer_call_fn_6547021[7б4
-б*
(і%
inputs         KK<
ф " і         %%<­
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_6547190ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ╣
M__inference_max_pooling2d_26_layer_call_and_return_conditional_losses_6547195h7б4
-б*
(і%
inputs         %%<
ф "-б*
#і 
0         <
џ ╚
2__inference_max_pooling2d_26_layer_call_fn_6547180ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Љ
2__inference_max_pooling2d_26_layer_call_fn_6547185[7б4
-б*
(і%
inputs         %%<
ф " і         <­
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6547354ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ ╣
M__inference_max_pooling2d_27_layer_call_and_return_conditional_losses_6547359h7б4
-б*
(і%
inputs         
ф "-б*
#і 
0         		
џ ╚
2__inference_max_pooling2d_27_layer_call_fn_6547344ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Љ
2__inference_max_pooling2d_27_layer_call_fn_6547349[7б4
-б*
(і%
inputs         
ф " і         		и
G__inference_resizing_6_layer_call_and_return_conditional_losses_6546827l9б6
/б,
*і'
inputs         ╚╚
ф "/б,
%і"
0         ќќ
џ Ј
,__inference_resizing_6_layer_call_fn_6546821_9б6
/б,
*і'
inputs         ╚╚
ф ""і         ќќП
I__inference_sequential_6_layer_call_and_return_conditional_losses_6546257Ј")*+,12<=>?DEOPQRWXbcdenotu~ёЁBб?
8б5
+і(
input_7         ╚╚
p 

 
ф "%б"
і
0         
џ П
I__inference_sequential_6_layer_call_and_return_conditional_losses_6546344Ј")*+,12<=>?DEOPQRWXbcdenotu~ёЁBб?
8б5
+і(
input_7         ╚╚
p

 
ф "%б"
і
0         
џ ▄
I__inference_sequential_6_layer_call_and_return_conditional_losses_6546684ј")*+,12<=>?DEOPQRWXbcdenotu~ёЁAб>
7б4
*і'
inputs         ╚╚
p 

 
ф "%б"
і
0         
џ ▄
I__inference_sequential_6_layer_call_and_return_conditional_losses_6546816ј")*+,12<=>?DEOPQRWXbcdenotu~ёЁAб>
7б4
*і'
inputs         ╚╚
p

 
ф "%б"
і
0         
џ х
.__inference_sequential_6_layer_call_fn_6545565ѓ")*+,12<=>?DEOPQRWXbcdenotu~ёЁBб?
8б5
+і(
input_7         ╚╚
p 

 
ф "і         х
.__inference_sequential_6_layer_call_fn_6546170ѓ")*+,12<=>?DEOPQRWXbcdenotu~ёЁBб?
8б5
+і(
input_7         ╚╚
p

 
ф "і         ┤
.__inference_sequential_6_layer_call_fn_6546490Ђ")*+,12<=>?DEOPQRWXbcdenotu~ёЁAб>
7б4
*і'
inputs         ╚╚
p 

 
ф "і         ┤
.__inference_sequential_6_layer_call_fn_6546559Ђ")*+,12<=>?DEOPQRWXbcdenotu~ёЁAб>
7б4
*і'
inputs         ╚╚
p

 
ф "і         ╩
%__inference_signature_wrapper_6546421а")*+,12<=>?DEOPQRWXbcdenotu~ёЁEбB
б 
;ф8
6
input_7+і(
input_7         ╚╚"3ф0
.
dense_24"і
dense_24         