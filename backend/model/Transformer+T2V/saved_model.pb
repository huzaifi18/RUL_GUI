¦ %
Þ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
,
Sin
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
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
ö
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68¼!
z
time2_vec/wei_perVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nametime2_vec/wei_per
s
%time2_vec/wei_per/Read/ReadVariableOpReadVariableOptime2_vec/wei_per*
_output_shapes
:*
dtype0
|
time2_vec/bias_perVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nametime2_vec/bias_per
u
&time2_vec/bias_per/Read/ReadVariableOpReadVariableOptime2_vec/bias_per*
_output_shapes
:*
dtype0
z
time2_vec/wei_linVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nametime2_vec/wei_lin
s
%time2_vec/wei_lin/Read/ReadVariableOpReadVariableOptime2_vec/wei_lin*
_output_shapes
:*
dtype0
|
time2_vec/bias_linVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nametime2_vec/bias_lin
u
&time2_vec/bias_lin/Read/ReadVariableOpReadVariableOptime2_vec/bias_lin*
_output_shapes
:*
dtype0

layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:!**
shared_namelayer_normalization/gamma

-layer_normalization/gamma/Read/ReadVariableOpReadVariableOplayer_normalization/gamma*
_output_shapes
:!*
dtype0

layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*)
shared_namelayer_normalization/beta

,layer_normalization/beta/Read/ReadVariableOpReadVariableOplayer_normalization/beta*
_output_shapes
:!*
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:!@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@!*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@!*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:!*
dtype0

layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*,
shared_namelayer_normalization_1/gamma

/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma*
_output_shapes
:!*
dtype0

layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*+
shared_namelayer_normalization_1/beta

.layer_normalization_1/beta/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta*
_output_shapes
:!*
dtype0

layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*,
shared_namelayer_normalization_2/gamma

/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma*
_output_shapes
:!*
dtype0

layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*+
shared_namelayer_normalization_2/beta

.layer_normalization_2/beta/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta*
_output_shapes
:!*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!@*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:!@*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@!*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@!*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:!*
dtype0

layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*,
shared_namelayer_normalization_3/gamma

/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma*
_output_shapes
:!*
dtype0

layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*+
shared_namelayer_normalization_3/beta

.layer_normalization_3/beta/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta*
_output_shapes
:!*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:! *
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:! *
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
: *
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

: *
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
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
¢
!multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*2
shared_name#!multi_head_attention/query/kernel

5multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/query/kernel*"
_output_shapes
:!!*
dtype0

multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*0
shared_name!multi_head_attention/query/bias

3multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/query/bias*
_output_shapes

:!*
dtype0

multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*0
shared_name!multi_head_attention/key/kernel

3multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/kernel*"
_output_shapes
:!!*
dtype0

multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*.
shared_namemulti_head_attention/key/bias

1multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/bias*
_output_shapes

:!*
dtype0
¢
!multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*2
shared_name#!multi_head_attention/value/kernel

5multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/value/kernel*"
_output_shapes
:!!*
dtype0

multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*0
shared_name!multi_head_attention/value/bias

3multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/value/bias*
_output_shapes

:!*
dtype0
¸
,multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*=
shared_name.,multi_head_attention/attention_output/kernel
±
@multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp,multi_head_attention/attention_output/kernel*"
_output_shapes
:!!*
dtype0
¬
*multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*;
shared_name,*multi_head_attention/attention_output/bias
¥
>multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp*multi_head_attention/attention_output/bias*
_output_shapes
:!*
dtype0
¦
#multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*4
shared_name%#multi_head_attention_1/query/kernel

7multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/query/kernel*"
_output_shapes
:!!*
dtype0

!multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*2
shared_name#!multi_head_attention_1/query/bias

5multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/query/bias*
_output_shapes

:!*
dtype0
¢
!multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*2
shared_name#!multi_head_attention_1/key/kernel

5multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/key/kernel*"
_output_shapes
:!!*
dtype0

multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*0
shared_name!multi_head_attention_1/key/bias

3multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_1/key/bias*
_output_shapes

:!*
dtype0
¦
#multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*4
shared_name%#multi_head_attention_1/value/kernel

7multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/value/kernel*"
_output_shapes
:!!*
dtype0

!multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*2
shared_name#!multi_head_attention_1/value/bias

5multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/value/bias*
_output_shapes

:!*
dtype0
¼
.multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*?
shared_name0.multi_head_attention_1/attention_output/kernel
µ
Bmulti_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_1/attention_output/kernel*"
_output_shapes
:!!*
dtype0
°
,multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*=
shared_name.,multi_head_attention_1/attention_output/bias
©
@multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_1/attention_output/bias*
_output_shapes
:!*
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

Adam/time2_vec/wei_per/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/time2_vec/wei_per/m

,Adam/time2_vec/wei_per/m/Read/ReadVariableOpReadVariableOpAdam/time2_vec/wei_per/m*
_output_shapes
:*
dtype0

Adam/time2_vec/bias_per/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/time2_vec/bias_per/m

-Adam/time2_vec/bias_per/m/Read/ReadVariableOpReadVariableOpAdam/time2_vec/bias_per/m*
_output_shapes
:*
dtype0

Adam/time2_vec/wei_lin/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/time2_vec/wei_lin/m

,Adam/time2_vec/wei_lin/m/Read/ReadVariableOpReadVariableOpAdam/time2_vec/wei_lin/m*
_output_shapes
:*
dtype0

Adam/time2_vec/bias_lin/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/time2_vec/bias_lin/m

-Adam/time2_vec/bias_lin/m/Read/ReadVariableOpReadVariableOpAdam/time2_vec/bias_lin/m*
_output_shapes
:*
dtype0

 Adam/layer_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*1
shared_name" Adam/layer_normalization/gamma/m

4Adam/layer_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/layer_normalization/gamma/m*
_output_shapes
:!*
dtype0

Adam/layer_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*0
shared_name!Adam/layer_normalization/beta/m

3Adam/layer_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/layer_normalization/beta/m*
_output_shapes
:!*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!@*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:!@*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@!*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:@!*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:!*
dtype0

"Adam/layer_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*3
shared_name$"Adam/layer_normalization_1/gamma/m

6Adam/layer_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_1/gamma/m*
_output_shapes
:!*
dtype0

!Adam/layer_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*2
shared_name#!Adam/layer_normalization_1/beta/m

5Adam/layer_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_1/beta/m*
_output_shapes
:!*
dtype0

"Adam/layer_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*3
shared_name$"Adam/layer_normalization_2/gamma/m

6Adam/layer_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_2/gamma/m*
_output_shapes
:!*
dtype0

!Adam/layer_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*2
shared_name#!Adam/layer_normalization_2/beta/m

5Adam/layer_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_2/beta/m*
_output_shapes
:!*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!@*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

:!@*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@!*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:@!*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:!*
dtype0

"Adam/layer_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*3
shared_name$"Adam/layer_normalization_3/gamma/m

6Adam/layer_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_3/gamma/m*
_output_shapes
:!*
dtype0

!Adam/layer_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*2
shared_name#!Adam/layer_normalization_3/beta/m

5Adam/layer_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_3/beta/m*
_output_shapes
:!*
dtype0

Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:! *&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:! *
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
: *
dtype0

Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0
°
(Adam/multi_head_attention/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*9
shared_name*(Adam/multi_head_attention/query/kernel/m
©
<Adam/multi_head_attention/query/kernel/m/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention/query/kernel/m*"
_output_shapes
:!!*
dtype0
¨
&Adam/multi_head_attention/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*7
shared_name(&Adam/multi_head_attention/query/bias/m
¡
:Adam/multi_head_attention/query/bias/m/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention/query/bias/m*
_output_shapes

:!*
dtype0
¬
&Adam/multi_head_attention/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*7
shared_name(&Adam/multi_head_attention/key/kernel/m
¥
:Adam/multi_head_attention/key/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention/key/kernel/m*"
_output_shapes
:!!*
dtype0
¤
$Adam/multi_head_attention/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*5
shared_name&$Adam/multi_head_attention/key/bias/m

8Adam/multi_head_attention/key/bias/m/Read/ReadVariableOpReadVariableOp$Adam/multi_head_attention/key/bias/m*
_output_shapes

:!*
dtype0
°
(Adam/multi_head_attention/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*9
shared_name*(Adam/multi_head_attention/value/kernel/m
©
<Adam/multi_head_attention/value/kernel/m/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention/value/kernel/m*"
_output_shapes
:!!*
dtype0
¨
&Adam/multi_head_attention/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*7
shared_name(&Adam/multi_head_attention/value/bias/m
¡
:Adam/multi_head_attention/value/bias/m/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention/value/bias/m*
_output_shapes

:!*
dtype0
Æ
3Adam/multi_head_attention/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*D
shared_name53Adam/multi_head_attention/attention_output/kernel/m
¿
GAdam/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpReadVariableOp3Adam/multi_head_attention/attention_output/kernel/m*"
_output_shapes
:!!*
dtype0
º
1Adam/multi_head_attention/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*B
shared_name31Adam/multi_head_attention/attention_output/bias/m
³
EAdam/multi_head_attention/attention_output/bias/m/Read/ReadVariableOpReadVariableOp1Adam/multi_head_attention/attention_output/bias/m*
_output_shapes
:!*
dtype0
´
*Adam/multi_head_attention_1/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*;
shared_name,*Adam/multi_head_attention_1/query/kernel/m
­
>Adam/multi_head_attention_1/query/kernel/m/Read/ReadVariableOpReadVariableOp*Adam/multi_head_attention_1/query/kernel/m*"
_output_shapes
:!!*
dtype0
¬
(Adam/multi_head_attention_1/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*9
shared_name*(Adam/multi_head_attention_1/query/bias/m
¥
<Adam/multi_head_attention_1/query/bias/m/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention_1/query/bias/m*
_output_shapes

:!*
dtype0
°
(Adam/multi_head_attention_1/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*9
shared_name*(Adam/multi_head_attention_1/key/kernel/m
©
<Adam/multi_head_attention_1/key/kernel/m/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention_1/key/kernel/m*"
_output_shapes
:!!*
dtype0
¨
&Adam/multi_head_attention_1/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*7
shared_name(&Adam/multi_head_attention_1/key/bias/m
¡
:Adam/multi_head_attention_1/key/bias/m/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention_1/key/bias/m*
_output_shapes

:!*
dtype0
´
*Adam/multi_head_attention_1/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*;
shared_name,*Adam/multi_head_attention_1/value/kernel/m
­
>Adam/multi_head_attention_1/value/kernel/m/Read/ReadVariableOpReadVariableOp*Adam/multi_head_attention_1/value/kernel/m*"
_output_shapes
:!!*
dtype0
¬
(Adam/multi_head_attention_1/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*9
shared_name*(Adam/multi_head_attention_1/value/bias/m
¥
<Adam/multi_head_attention_1/value/bias/m/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention_1/value/bias/m*
_output_shapes

:!*
dtype0
Ê
5Adam/multi_head_attention_1/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*F
shared_name75Adam/multi_head_attention_1/attention_output/kernel/m
Ã
IAdam/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOpReadVariableOp5Adam/multi_head_attention_1/attention_output/kernel/m*"
_output_shapes
:!!*
dtype0
¾
3Adam/multi_head_attention_1/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*D
shared_name53Adam/multi_head_attention_1/attention_output/bias/m
·
GAdam/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOpReadVariableOp3Adam/multi_head_attention_1/attention_output/bias/m*
_output_shapes
:!*
dtype0

Adam/time2_vec/wei_per/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/time2_vec/wei_per/v

,Adam/time2_vec/wei_per/v/Read/ReadVariableOpReadVariableOpAdam/time2_vec/wei_per/v*
_output_shapes
:*
dtype0

Adam/time2_vec/bias_per/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/time2_vec/bias_per/v

-Adam/time2_vec/bias_per/v/Read/ReadVariableOpReadVariableOpAdam/time2_vec/bias_per/v*
_output_shapes
:*
dtype0

Adam/time2_vec/wei_lin/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/time2_vec/wei_lin/v

,Adam/time2_vec/wei_lin/v/Read/ReadVariableOpReadVariableOpAdam/time2_vec/wei_lin/v*
_output_shapes
:*
dtype0

Adam/time2_vec/bias_lin/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/time2_vec/bias_lin/v

-Adam/time2_vec/bias_lin/v/Read/ReadVariableOpReadVariableOpAdam/time2_vec/bias_lin/v*
_output_shapes
:*
dtype0

 Adam/layer_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*1
shared_name" Adam/layer_normalization/gamma/v

4Adam/layer_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/layer_normalization/gamma/v*
_output_shapes
:!*
dtype0

Adam/layer_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*0
shared_name!Adam/layer_normalization/beta/v

3Adam/layer_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/layer_normalization/beta/v*
_output_shapes
:!*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!@*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:!@*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@!*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:@!*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:!*
dtype0

"Adam/layer_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*3
shared_name$"Adam/layer_normalization_1/gamma/v

6Adam/layer_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_1/gamma/v*
_output_shapes
:!*
dtype0

!Adam/layer_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*2
shared_name#!Adam/layer_normalization_1/beta/v

5Adam/layer_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_1/beta/v*
_output_shapes
:!*
dtype0

"Adam/layer_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*3
shared_name$"Adam/layer_normalization_2/gamma/v

6Adam/layer_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_2/gamma/v*
_output_shapes
:!*
dtype0

!Adam/layer_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*2
shared_name#!Adam/layer_normalization_2/beta/v

5Adam/layer_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_2/beta/v*
_output_shapes
:!*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!@*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

:!@*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@!*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:@!*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:!*
dtype0

"Adam/layer_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*3
shared_name$"Adam/layer_normalization_3/gamma/v

6Adam/layer_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_3/gamma/v*
_output_shapes
:!*
dtype0

!Adam/layer_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*2
shared_name#!Adam/layer_normalization_3/beta/v

5Adam/layer_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp!Adam/layer_normalization_3/beta/v*
_output_shapes
:!*
dtype0

Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:! *&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:! *
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
: *
dtype0

Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0
°
(Adam/multi_head_attention/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*9
shared_name*(Adam/multi_head_attention/query/kernel/v
©
<Adam/multi_head_attention/query/kernel/v/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention/query/kernel/v*"
_output_shapes
:!!*
dtype0
¨
&Adam/multi_head_attention/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*7
shared_name(&Adam/multi_head_attention/query/bias/v
¡
:Adam/multi_head_attention/query/bias/v/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention/query/bias/v*
_output_shapes

:!*
dtype0
¬
&Adam/multi_head_attention/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*7
shared_name(&Adam/multi_head_attention/key/kernel/v
¥
:Adam/multi_head_attention/key/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention/key/kernel/v*"
_output_shapes
:!!*
dtype0
¤
$Adam/multi_head_attention/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*5
shared_name&$Adam/multi_head_attention/key/bias/v

8Adam/multi_head_attention/key/bias/v/Read/ReadVariableOpReadVariableOp$Adam/multi_head_attention/key/bias/v*
_output_shapes

:!*
dtype0
°
(Adam/multi_head_attention/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*9
shared_name*(Adam/multi_head_attention/value/kernel/v
©
<Adam/multi_head_attention/value/kernel/v/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention/value/kernel/v*"
_output_shapes
:!!*
dtype0
¨
&Adam/multi_head_attention/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*7
shared_name(&Adam/multi_head_attention/value/bias/v
¡
:Adam/multi_head_attention/value/bias/v/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention/value/bias/v*
_output_shapes

:!*
dtype0
Æ
3Adam/multi_head_attention/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*D
shared_name53Adam/multi_head_attention/attention_output/kernel/v
¿
GAdam/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpReadVariableOp3Adam/multi_head_attention/attention_output/kernel/v*"
_output_shapes
:!!*
dtype0
º
1Adam/multi_head_attention/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*B
shared_name31Adam/multi_head_attention/attention_output/bias/v
³
EAdam/multi_head_attention/attention_output/bias/v/Read/ReadVariableOpReadVariableOp1Adam/multi_head_attention/attention_output/bias/v*
_output_shapes
:!*
dtype0
´
*Adam/multi_head_attention_1/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*;
shared_name,*Adam/multi_head_attention_1/query/kernel/v
­
>Adam/multi_head_attention_1/query/kernel/v/Read/ReadVariableOpReadVariableOp*Adam/multi_head_attention_1/query/kernel/v*"
_output_shapes
:!!*
dtype0
¬
(Adam/multi_head_attention_1/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*9
shared_name*(Adam/multi_head_attention_1/query/bias/v
¥
<Adam/multi_head_attention_1/query/bias/v/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention_1/query/bias/v*
_output_shapes

:!*
dtype0
°
(Adam/multi_head_attention_1/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*9
shared_name*(Adam/multi_head_attention_1/key/kernel/v
©
<Adam/multi_head_attention_1/key/kernel/v/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention_1/key/kernel/v*"
_output_shapes
:!!*
dtype0
¨
&Adam/multi_head_attention_1/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*7
shared_name(&Adam/multi_head_attention_1/key/bias/v
¡
:Adam/multi_head_attention_1/key/bias/v/Read/ReadVariableOpReadVariableOp&Adam/multi_head_attention_1/key/bias/v*
_output_shapes

:!*
dtype0
´
*Adam/multi_head_attention_1/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*;
shared_name,*Adam/multi_head_attention_1/value/kernel/v
­
>Adam/multi_head_attention_1/value/kernel/v/Read/ReadVariableOpReadVariableOp*Adam/multi_head_attention_1/value/kernel/v*"
_output_shapes
:!!*
dtype0
¬
(Adam/multi_head_attention_1/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:!*9
shared_name*(Adam/multi_head_attention_1/value/bias/v
¥
<Adam/multi_head_attention_1/value/bias/v/Read/ReadVariableOpReadVariableOp(Adam/multi_head_attention_1/value/bias/v*
_output_shapes

:!*
dtype0
Ê
5Adam/multi_head_attention_1/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!!*F
shared_name75Adam/multi_head_attention_1/attention_output/kernel/v
Ã
IAdam/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOpReadVariableOp5Adam/multi_head_attention_1/attention_output/kernel/v*"
_output_shapes
:!!*
dtype0
¾
3Adam/multi_head_attention_1/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:!*D
shared_name53Adam/multi_head_attention_1/attention_output/bias/v
·
GAdam/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOpReadVariableOp3Adam/multi_head_attention_1/attention_output/bias/v*
_output_shapes
:!*
dtype0

NoOpNoOp
£
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ý
valueÒBÎ BÆ
ç
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer-13
layer-14
layer_with_weights-7
layer-15
layer_with_weights-8
layer-16
layer_with_weights-9
layer-17
layer-18
layer-19
layer_with_weights-10
layer-20
layer-21
layer_with_weights-11
layer-22
layer_with_weights-12
layer-23
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _default_save_signature
!
signatures*
* 
æ
"wei_per
"wp
#bias_per
#bp
$wei_lin
$wl
%bias_lin
%bl
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*

,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses* 
ù
2_query_dense
3
_key_dense
4_value_dense
5_softmax
6_dropout_layer
7_output_dense
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses*
¥
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses* 

E	keras_api* 
¯
Faxis
	Ggamma
Hbeta
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses*
¦

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*
¦

Wkernel
Xbias
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses*
¥
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c_random_generator
d__call__
*e&call_and_return_all_conditional_losses* 

f	keras_api* 
¯
gaxis
	hgamma
ibeta
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses*
ù
p_query_dense
q
_key_dense
r_value_dense
s_softmax
t_dropout_layer
u_output_dense
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses*
¨
|	variables
}trainable_variables
~regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses* 

	keras_api* 
¸
	axis

gamma
	beta
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
®
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
®
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¬
	variables
trainable_variables
regularization_losses
 	keras_api
¡_random_generator
¢__call__
+£&call_and_return_all_conditional_losses* 

¤	keras_api* 
¸
	¥axis

¦gamma
	§beta
¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses*

®	variables
¯trainable_variables
°regularization_losses
±	keras_api
²__call__
+³&call_and_return_all_conditional_losses* 
®
´kernel
	µbias
¶	variables
·trainable_variables
¸regularization_losses
¹	keras_api
º__call__
+»&call_and_return_all_conditional_losses*
®
¼kernel
	½bias
¾	variables
¿trainable_variables
Àregularization_losses
Á	keras_api
Â__call__
+Ã&call_and_return_all_conditional_losses*
¡
	Äiter
Åbeta_1
Æbeta_2

Çdecay
Èlearning_rate"mÙ#mÚ$mÛ%mÜGmÝHmÞOmßPmàWmáXmâhmãimä	må	mæ	mç	mè	mé	mê	¦më	§mì	´mí	µmî	¼mï	½mð	Émñ	Êmò	Ëmó	Ìmô	Ímõ	Îmö	Ïm÷	Ðmø	Ñmù	Òmú	Ómû	Ômü	Õmý	Ömþ	×mÿ	Øm"v#v$v%vGvHvOvPvWvXvhviv	v	v	v	v	v	v	¦v	§v	´v	µv	¼v	½v	Év	Êv	Ëv	Ìv	Ív	Îv	Ïv	Ðv 	Ñv¡	Òv¢	Óv£	Ôv¤	Õv¥	Öv¦	×v§	Øv¨*
Ö
"0
#1
$2
%3
É4
Ê5
Ë6
Ì7
Í8
Î9
Ï10
Ð11
G12
H13
O14
P15
W16
X17
h18
i19
Ñ20
Ò21
Ó22
Ô23
Õ24
Ö25
×26
Ø27
28
29
30
31
32
33
¦34
§35
´36
µ37
¼38
½39*
Ö
"0
#1
$2
%3
É4
Ê5
Ë6
Ì7
Í8
Î9
Ï10
Ð11
G12
H13
O14
P15
W16
X17
h18
i19
Ñ20
Ò21
Ó22
Ô23
Õ24
Ö25
×26
Ø27
28
29
30
31
32
33
¦34
§35
´36
µ37
¼38
½39*
* 
µ
Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
 _default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Þserving_default* 
b\
VARIABLE_VALUEtime2_vec/wei_per7layer_with_weights-0/wei_per/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEtime2_vec/bias_per8layer_with_weights-0/bias_per/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEtime2_vec/wei_lin7layer_with_weights-0/wei_lin/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUEtime2_vec/bias_lin8layer_with_weights-0/bias_lin/.ATTRIBUTES/VARIABLE_VALUE*
 
"0
#1
$2
%3*
 
"0
#1
$2
%3*
* 

ßnon_trainable_variables
àlayers
ámetrics
 âlayer_regularization_losses
ãlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

änon_trainable_variables
ålayers
æmetrics
 çlayer_regularization_losses
èlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 
* 
* 
á
épartial_output_shape
êfull_output_shape
Ékernel
	Êbias
ë	variables
ìtrainable_variables
íregularization_losses
î	keras_api
ï__call__
+ð&call_and_return_all_conditional_losses*
á
ñpartial_output_shape
òfull_output_shape
Ëkernel
	Ìbias
ó	variables
ôtrainable_variables
õregularization_losses
ö	keras_api
÷__call__
+ø&call_and_return_all_conditional_losses*
á
ùpartial_output_shape
úfull_output_shape
Íkernel
	Îbias
û	variables
ütrainable_variables
ýregularization_losses
þ	keras_api
ÿ__call__
+&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
¬
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses* 
á
partial_output_shape
full_output_shape
Ïkernel
	Ðbias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
D
É0
Ê1
Ë2
Ì3
Í4
Î5
Ï6
Ð7*
D
É0
Ê1
Ë2
Ì3
Í4
Î5
Ï6
Ð7*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
hb
VARIABLE_VALUElayer_normalization/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUElayer_normalization/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*

G0
H1*

G0
H1*
* 

 non_trainable_variables
¡layers
¢metrics
 £layer_regularization_losses
¤layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

O0
P1*

O0
P1*
* 

¥non_trainable_variables
¦layers
§metrics
 ¨layer_regularization_losses
©layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

W0
X1*

W0
X1*
* 

ªnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
®layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
_	variables
`trainable_variables
aregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
jd
VARIABLE_VALUElayer_normalization_1/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_1/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*

h0
i1*

h0
i1*
* 

´non_trainable_variables
µlayers
¶metrics
 ·layer_regularization_losses
¸layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*
* 
* 
á
¹partial_output_shape
ºfull_output_shape
Ñkernel
	Òbias
»	variables
¼trainable_variables
½regularization_losses
¾	keras_api
¿__call__
+À&call_and_return_all_conditional_losses*
á
Ápartial_output_shape
Âfull_output_shape
Ókernel
	Ôbias
Ã	variables
Ätrainable_variables
Åregularization_losses
Æ	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses*
á
Épartial_output_shape
Êfull_output_shape
Õkernel
	Öbias
Ë	variables
Ìtrainable_variables
Íregularization_losses
Î	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses*

Ñ	variables
Òtrainable_variables
Óregularization_losses
Ô	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses* 
¬
×	variables
Øtrainable_variables
Ùregularization_losses
Ú	keras_api
Û_random_generator
Ü__call__
+Ý&call_and_return_all_conditional_losses* 
á
Þpartial_output_shape
ßfull_output_shape
×kernel
	Øbias
à	variables
átrainable_variables
âregularization_losses
ã	keras_api
ä__call__
+å&call_and_return_all_conditional_losses*
D
Ñ0
Ò1
Ó2
Ô3
Õ4
Ö5
×6
Ø7*
D
Ñ0
Ò1
Ó2
Ô3
Õ4
Ö5
×6
Ø7*
* 

ænon_trainable_variables
çlayers
èmetrics
 élayer_regularization_losses
êlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

ënon_trainable_variables
ìlayers
ímetrics
 îlayer_regularization_losses
ïlayer_metrics
|	variables
}trainable_variables
~regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
jd
VARIABLE_VALUElayer_normalization_2/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_2/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

ðnon_trainable_variables
ñlayers
òmetrics
 ólayer_regularization_losses
ôlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

õnon_trainable_variables
ölayers
÷metrics
 ølayer_regularization_losses
ùlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

únon_trainable_variables
ûlayers
ümetrics
 ýlayer_regularization_losses
þlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

ÿnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
¢__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
ke
VARIABLE_VALUElayer_normalization_3/gamma6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_3/beta5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUE*

¦0
§1*

¦0
§1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¨	variables
©trainable_variables
ªregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
®	variables
¯trainable_variables
°regularization_losses
²__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_4/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_4/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*

´0
µ1*

´0
µ1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¶	variables
·trainable_variables
¸regularization_losses
º__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_5/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_5/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*

¼0
½1*

¼0
½1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¾	variables
¿trainable_variables
Àregularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!multi_head_attention/query/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmulti_head_attention/query/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmulti_head_attention/key/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEmulti_head_attention/key/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!multi_head_attention/value/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmulti_head_attention/value/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention/attention_output/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE*multi_head_attention/attention_output/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_1/query/kernel'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/query/bias'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/key/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention_1/key/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_1/value/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/value/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_1/attention_output/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention_1/attention_output/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
* 
º
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
19
20
21
22
23*

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

É0
Ê1*

É0
Ê1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ë	variables
ìtrainable_variables
íregularization_losses
ï__call__
+ð&call_and_return_all_conditional_losses
'ð"call_and_return_conditional_losses*
* 
* 
* 
* 

Ë0
Ì1*

Ë0
Ì1*
* 

non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
ó	variables
ôtrainable_variables
õregularization_losses
÷__call__
+ø&call_and_return_all_conditional_losses
'ø"call_and_return_conditional_losses*
* 
* 
* 
* 

Í0
Î1*

Í0
Î1*
* 

£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
û	variables
ütrainable_variables
ýregularization_losses
ÿ__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

Ï0
Ð1*

Ï0
Ð1*
* 

²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
.
20
31
42
53
64
75*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Ñ0
Ò1*

Ñ0
Ò1*
* 

·non_trainable_variables
¸layers
¹metrics
 ºlayer_regularization_losses
»layer_metrics
»	variables
¼trainable_variables
½regularization_losses
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses*
* 
* 
* 
* 

Ó0
Ô1*

Ó0
Ô1*
* 

¼non_trainable_variables
½layers
¾metrics
 ¿layer_regularization_losses
Àlayer_metrics
Ã	variables
Ätrainable_variables
Åregularization_losses
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses*
* 
* 
* 
* 

Õ0
Ö1*

Õ0
Ö1*
* 

Ánon_trainable_variables
Âlayers
Ãmetrics
 Älayer_regularization_losses
Ålayer_metrics
Ë	variables
Ìtrainable_variables
Íregularization_losses
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
Ñ	variables
Òtrainable_variables
Óregularization_losses
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

Ënon_trainable_variables
Ìlayers
Ímetrics
 Îlayer_regularization_losses
Ïlayer_metrics
×	variables
Øtrainable_variables
Ùregularization_losses
Ü__call__
+Ý&call_and_return_all_conditional_losses
'Ý"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

×0
Ø1*

×0
Ø1*
* 

Ðnon_trainable_variables
Ñlayers
Òmetrics
 Ólayer_regularization_losses
Ôlayer_metrics
à	variables
átrainable_variables
âregularization_losses
ä__call__
+å&call_and_return_all_conditional_losses
'å"call_and_return_conditional_losses*
* 
* 
* 
.
p0
q1
r2
s3
t4
u5*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

Õtotal

Öcount
×	variables
Ø	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Õ0
Ö1*

×	variables*

VARIABLE_VALUEAdam/time2_vec/wei_per/mSlayer_with_weights-0/wei_per/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/time2_vec/bias_per/mTlayer_with_weights-0/bias_per/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/time2_vec/wei_lin/mSlayer_with_weights-0/wei_lin/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/time2_vec/bias_lin/mTlayer_with_weights-0/bias_lin/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE Adam/layer_normalization/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/layer_normalization/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/layer_normalization_1/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/layer_normalization_1/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/layer_normalization_2/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/layer_normalization_2/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/layer_normalization_3/gamma/mRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/layer_normalization_3/beta/mQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_4/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_4/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_5/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_5/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/multi_head_attention/query/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/multi_head_attention/query/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/multi_head_attention/key/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/multi_head_attention/key/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/multi_head_attention/value/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/multi_head_attention/value/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE3Adam/multi_head_attention/attention_output/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE1Adam/multi_head_attention/attention_output/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/multi_head_attention_1/query/kernel/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE(Adam/multi_head_attention_1/query/bias/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE(Adam/multi_head_attention_1/key/kernel/mCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE&Adam/multi_head_attention_1/key/bias/mCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/multi_head_attention_1/value/kernel/mCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE(Adam/multi_head_attention_1/value/bias/mCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE5Adam/multi_head_attention_1/attention_output/kernel/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE3Adam/multi_head_attention_1/attention_output/bias/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/time2_vec/wei_per/vSlayer_with_weights-0/wei_per/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/time2_vec/bias_per/vTlayer_with_weights-0/bias_per/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/time2_vec/wei_lin/vSlayer_with_weights-0/wei_lin/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/time2_vec/bias_lin/vTlayer_with_weights-0/bias_lin/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE Adam/layer_normalization/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/layer_normalization/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/layer_normalization_1/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/layer_normalization_1/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/layer_normalization_2/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/layer_normalization_2/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/layer_normalization_3/gamma/vRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/layer_normalization_3/beta/vQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_4/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_4/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_5/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_5/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/multi_head_attention/query/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/multi_head_attention/query/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/multi_head_attention/key/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/multi_head_attention/key/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE(Adam/multi_head_attention/value/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/multi_head_attention/value/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE3Adam/multi_head_attention/attention_output/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE1Adam/multi_head_attention/attention_output/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/multi_head_attention_1/query/kernel/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE(Adam/multi_head_attention_1/query/bias/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE(Adam/multi_head_attention_1/key/kernel/vCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUE&Adam/multi_head_attention_1/key/bias/vCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/multi_head_attention_1/value/kernel/vCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE(Adam/multi_head_attention_1/value/bias/vCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE5Adam/multi_head_attention_1/attention_output/kernel/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE3Adam/multi_head_attention_1/attention_output/bias/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_1Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
¶
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1time2_vec/wei_lintime2_vec/bias_lintime2_vec/wei_pertime2_vec/bias_per!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/biaslayer_normalization/gammalayer_normalization/betadense/kernel
dense/biasdense_1/kerneldense_1/biaslayer_normalization_1/gammalayer_normalization_1/beta#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/biaslayer_normalization_2/gammalayer_normalization_2/betadense_2/kerneldense_2/biasdense_3/kerneldense_3/biaslayer_normalization_3/gammalayer_normalization_3/betadense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference_signature_wrapper_11111
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¥5
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%time2_vec/wei_per/Read/ReadVariableOp&time2_vec/bias_per/Read/ReadVariableOp%time2_vec/wei_lin/Read/ReadVariableOp&time2_vec/bias_lin/Read/ReadVariableOp-layer_normalization/gamma/Read/ReadVariableOp,layer_normalization/beta/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp/layer_normalization_1/gamma/Read/ReadVariableOp.layer_normalization_1/beta/Read/ReadVariableOp/layer_normalization_2/gamma/Read/ReadVariableOp.layer_normalization_2/beta/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp/layer_normalization_3/gamma/Read/ReadVariableOp.layer_normalization_3/beta/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp5multi_head_attention/query/kernel/Read/ReadVariableOp3multi_head_attention/query/bias/Read/ReadVariableOp3multi_head_attention/key/kernel/Read/ReadVariableOp1multi_head_attention/key/bias/Read/ReadVariableOp5multi_head_attention/value/kernel/Read/ReadVariableOp3multi_head_attention/value/bias/Read/ReadVariableOp@multi_head_attention/attention_output/kernel/Read/ReadVariableOp>multi_head_attention/attention_output/bias/Read/ReadVariableOp7multi_head_attention_1/query/kernel/Read/ReadVariableOp5multi_head_attention_1/query/bias/Read/ReadVariableOp5multi_head_attention_1/key/kernel/Read/ReadVariableOp3multi_head_attention_1/key/bias/Read/ReadVariableOp7multi_head_attention_1/value/kernel/Read/ReadVariableOp5multi_head_attention_1/value/bias/Read/ReadVariableOpBmulti_head_attention_1/attention_output/kernel/Read/ReadVariableOp@multi_head_attention_1/attention_output/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp,Adam/time2_vec/wei_per/m/Read/ReadVariableOp-Adam/time2_vec/bias_per/m/Read/ReadVariableOp,Adam/time2_vec/wei_lin/m/Read/ReadVariableOp-Adam/time2_vec/bias_lin/m/Read/ReadVariableOp4Adam/layer_normalization/gamma/m/Read/ReadVariableOp3Adam/layer_normalization/beta/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp6Adam/layer_normalization_1/gamma/m/Read/ReadVariableOp5Adam/layer_normalization_1/beta/m/Read/ReadVariableOp6Adam/layer_normalization_2/gamma/m/Read/ReadVariableOp5Adam/layer_normalization_2/beta/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp6Adam/layer_normalization_3/gamma/m/Read/ReadVariableOp5Adam/layer_normalization_3/beta/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp<Adam/multi_head_attention/query/kernel/m/Read/ReadVariableOp:Adam/multi_head_attention/query/bias/m/Read/ReadVariableOp:Adam/multi_head_attention/key/kernel/m/Read/ReadVariableOp8Adam/multi_head_attention/key/bias/m/Read/ReadVariableOp<Adam/multi_head_attention/value/kernel/m/Read/ReadVariableOp:Adam/multi_head_attention/value/bias/m/Read/ReadVariableOpGAdam/multi_head_attention/attention_output/kernel/m/Read/ReadVariableOpEAdam/multi_head_attention/attention_output/bias/m/Read/ReadVariableOp>Adam/multi_head_attention_1/query/kernel/m/Read/ReadVariableOp<Adam/multi_head_attention_1/query/bias/m/Read/ReadVariableOp<Adam/multi_head_attention_1/key/kernel/m/Read/ReadVariableOp:Adam/multi_head_attention_1/key/bias/m/Read/ReadVariableOp>Adam/multi_head_attention_1/value/kernel/m/Read/ReadVariableOp<Adam/multi_head_attention_1/value/bias/m/Read/ReadVariableOpIAdam/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOpGAdam/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOp,Adam/time2_vec/wei_per/v/Read/ReadVariableOp-Adam/time2_vec/bias_per/v/Read/ReadVariableOp,Adam/time2_vec/wei_lin/v/Read/ReadVariableOp-Adam/time2_vec/bias_lin/v/Read/ReadVariableOp4Adam/layer_normalization/gamma/v/Read/ReadVariableOp3Adam/layer_normalization/beta/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp6Adam/layer_normalization_1/gamma/v/Read/ReadVariableOp5Adam/layer_normalization_1/beta/v/Read/ReadVariableOp6Adam/layer_normalization_2/gamma/v/Read/ReadVariableOp5Adam/layer_normalization_2/beta/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp6Adam/layer_normalization_3/gamma/v/Read/ReadVariableOp5Adam/layer_normalization_3/beta/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOp<Adam/multi_head_attention/query/kernel/v/Read/ReadVariableOp:Adam/multi_head_attention/query/bias/v/Read/ReadVariableOp:Adam/multi_head_attention/key/kernel/v/Read/ReadVariableOp8Adam/multi_head_attention/key/bias/v/Read/ReadVariableOp<Adam/multi_head_attention/value/kernel/v/Read/ReadVariableOp:Adam/multi_head_attention/value/bias/v/Read/ReadVariableOpGAdam/multi_head_attention/attention_output/kernel/v/Read/ReadVariableOpEAdam/multi_head_attention/attention_output/bias/v/Read/ReadVariableOp>Adam/multi_head_attention_1/query/kernel/v/Read/ReadVariableOp<Adam/multi_head_attention_1/query/bias/v/Read/ReadVariableOp<Adam/multi_head_attention_1/key/kernel/v/Read/ReadVariableOp:Adam/multi_head_attention_1/key/bias/v/Read/ReadVariableOp>Adam/multi_head_attention_1/value/kernel/v/Read/ReadVariableOp<Adam/multi_head_attention_1/value/bias/v/Read/ReadVariableOpIAdam/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOpGAdam/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOpConst*
Tin
2	*
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
GPU2*0J 8 *'
f"R 
__inference__traced_save_12203
´!
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenametime2_vec/wei_pertime2_vec/bias_pertime2_vec/wei_lintime2_vec/bias_linlayer_normalization/gammalayer_normalization/betadense/kernel
dense/biasdense_1/kerneldense_1/biaslayer_normalization_1/gammalayer_normalization_1/betalayer_normalization_2/gammalayer_normalization_2/betadense_2/kerneldense_2/biasdense_3/kerneldense_3/biaslayer_normalization_3/gammalayer_normalization_3/betadense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/bias#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/biastotalcountAdam/time2_vec/wei_per/mAdam/time2_vec/bias_per/mAdam/time2_vec/wei_lin/mAdam/time2_vec/bias_lin/m Adam/layer_normalization/gamma/mAdam/layer_normalization/beta/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/m"Adam/layer_normalization_1/gamma/m!Adam/layer_normalization_1/beta/m"Adam/layer_normalization_2/gamma/m!Adam/layer_normalization_2/beta/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/m"Adam/layer_normalization_3/gamma/m!Adam/layer_normalization_3/beta/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/m(Adam/multi_head_attention/query/kernel/m&Adam/multi_head_attention/query/bias/m&Adam/multi_head_attention/key/kernel/m$Adam/multi_head_attention/key/bias/m(Adam/multi_head_attention/value/kernel/m&Adam/multi_head_attention/value/bias/m3Adam/multi_head_attention/attention_output/kernel/m1Adam/multi_head_attention/attention_output/bias/m*Adam/multi_head_attention_1/query/kernel/m(Adam/multi_head_attention_1/query/bias/m(Adam/multi_head_attention_1/key/kernel/m&Adam/multi_head_attention_1/key/bias/m*Adam/multi_head_attention_1/value/kernel/m(Adam/multi_head_attention_1/value/bias/m5Adam/multi_head_attention_1/attention_output/kernel/m3Adam/multi_head_attention_1/attention_output/bias/mAdam/time2_vec/wei_per/vAdam/time2_vec/bias_per/vAdam/time2_vec/wei_lin/vAdam/time2_vec/bias_lin/v Adam/layer_normalization/gamma/vAdam/layer_normalization/beta/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v"Adam/layer_normalization_1/gamma/v!Adam/layer_normalization_1/beta/v"Adam/layer_normalization_2/gamma/v!Adam/layer_normalization_2/beta/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v"Adam/layer_normalization_3/gamma/v!Adam/layer_normalization_3/beta/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v(Adam/multi_head_attention/query/kernel/v&Adam/multi_head_attention/query/bias/v&Adam/multi_head_attention/key/kernel/v$Adam/multi_head_attention/key/bias/v(Adam/multi_head_attention/value/kernel/v&Adam/multi_head_attention/value/bias/v3Adam/multi_head_attention/attention_output/kernel/v1Adam/multi_head_attention/attention_output/bias/v*Adam/multi_head_attention_1/query/kernel/v(Adam/multi_head_attention_1/query/bias/v(Adam/multi_head_attention_1/key/kernel/v&Adam/multi_head_attention_1/key/bias/v*Adam/multi_head_attention_1/value/kernel/v(Adam/multi_head_attention_1/value/bias/v5Adam/multi_head_attention_1/attention_output/kernel/v3Adam/multi_head_attention_1/attention_output/bias/v*
Tin
2*
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
GPU2*0J 8 **
f%R#
!__inference__traced_restore_12594»ø
Ð

'__inference_dense_3_layer_call_fn_11670

inputs
unknown:@!
	unknown_0:!
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_9198s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ú
Ñ	
%__inference_model_layer_call_fn_10448

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:!!
	unknown_4:!
	unknown_5:!!
	unknown_6:!
	unknown_7:!!
	unknown_8:!
	unknown_9:!!

unknown_10:!

unknown_11:!

unknown_12:!

unknown_13:!@

unknown_14:@

unknown_15:@!

unknown_16:!

unknown_17:!

unknown_18:! 

unknown_19:!!

unknown_20:! 

unknown_21:!!

unknown_22:! 

unknown_23:!!

unknown_24:! 

unknown_25:!!

unknown_26:!

unknown_27:!

unknown_28:!

unknown_29:!@

unknown_30:@

unknown_31:@!

unknown_32:!

unknown_33:!

unknown_34:!

unknown_35:! 

unknown_36: 

unknown_37: 

unknown_38:
identity¢StatefulPartitionedCallâ
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
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_9890o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý

é
4__inference_multi_head_attention_layer_call_fn_11188	
query	
value
unknown:!!
	unknown_0:!
	unknown_1:!!
	unknown_2:!
	unknown_3:!!
	unknown_4:!
	unknown_5:!!
	unknown_6:!
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_8879s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ!:ÿÿÿÿÿÿÿÿÿ!: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namevalue

`
D__inference_dropout_3_layer_call_and_return_conditional_losses_11719

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
î

O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9234

inputs3
%batchnorm_mul_readvariableop_resource:!/
!batchnorm_readvariableop_resource:!
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
Ð

'__inference_dense_2_layer_call_fn_11630

inputs
unknown:!@
	unknown_0:@
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_9162s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs

o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_11761

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ
_
C__inference_dropout_3_layer_call_and_return_conditional_losses_9399

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs

ë
6__inference_multi_head_attention_1_layer_call_fn_11502	
query	
value
unknown:!!
	unknown_0:!
	unknown_1:!!
	unknown_2:!
	unknown_3:!!
	unknown_4:!
	unknown_5:!!
	unknown_6:!
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_9507s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ!:ÿÿÿÿÿÿÿÿÿ!: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namevalue
ç
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_11423

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
¯
E
)__inference_dropout_1_layer_call_fn_11413

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_9011d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
È
ø
A__inference_dense_1_layer_call_and_return_conditional_losses_9000

inputs3
!tensordot_readvariableop_resource:@!-
biasadd_readvariableop_resource:!
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@!*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ![
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:!Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Î
o
E__inference_concatenate_layer_call_and_return_conditional_losses_8842

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :y
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ![
IdentityIdentityconcat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:SO
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð©
Ã(
__inference__wrapped_model_8776
input_15
'model_time2_vec_readvariableop_resource:9
+model_time2_vec_add_readvariableop_resource:;
-model_time2_vec_mul_1_readvariableop_resource:;
-model_time2_vec_add_1_readvariableop_resource:\
Fmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource:!!N
<model_multi_head_attention_query_add_readvariableop_resource:!Z
Dmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource:!!L
:model_multi_head_attention_key_add_readvariableop_resource:!\
Fmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource:!!N
<model_multi_head_attention_value_add_readvariableop_resource:!g
Qmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource:!!U
Gmodel_multi_head_attention_attention_output_add_readvariableop_resource:!M
?model_layer_normalization_batchnorm_mul_readvariableop_resource:!I
;model_layer_normalization_batchnorm_readvariableop_resource:!?
-model_dense_tensordot_readvariableop_resource:!@9
+model_dense_biasadd_readvariableop_resource:@A
/model_dense_1_tensordot_readvariableop_resource:@!;
-model_dense_1_biasadd_readvariableop_resource:!O
Amodel_layer_normalization_1_batchnorm_mul_readvariableop_resource:!K
=model_layer_normalization_1_batchnorm_readvariableop_resource:!^
Hmodel_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:!!P
>model_multi_head_attention_1_query_add_readvariableop_resource:!\
Fmodel_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:!!N
<model_multi_head_attention_1_key_add_readvariableop_resource:!^
Hmodel_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:!!P
>model_multi_head_attention_1_value_add_readvariableop_resource:!i
Smodel_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:!!W
Imodel_multi_head_attention_1_attention_output_add_readvariableop_resource:!O
Amodel_layer_normalization_2_batchnorm_mul_readvariableop_resource:!K
=model_layer_normalization_2_batchnorm_readvariableop_resource:!A
/model_dense_2_tensordot_readvariableop_resource:!@;
-model_dense_2_biasadd_readvariableop_resource:@A
/model_dense_3_tensordot_readvariableop_resource:@!;
-model_dense_3_biasadd_readvariableop_resource:!O
Amodel_layer_normalization_3_batchnorm_mul_readvariableop_resource:!K
=model_layer_normalization_3_batchnorm_readvariableop_resource:!>
,model_dense_4_matmul_readvariableop_resource:! ;
-model_dense_4_biasadd_readvariableop_resource: >
,model_dense_5_matmul_readvariableop_resource: ;
-model_dense_5_biasadd_readvariableop_resource:
identity¢"model/dense/BiasAdd/ReadVariableOp¢$model/dense/Tensordot/ReadVariableOp¢$model/dense_1/BiasAdd/ReadVariableOp¢&model/dense_1/Tensordot/ReadVariableOp¢$model/dense_2/BiasAdd/ReadVariableOp¢&model/dense_2/Tensordot/ReadVariableOp¢$model/dense_3/BiasAdd/ReadVariableOp¢&model/dense_3/Tensordot/ReadVariableOp¢$model/dense_4/BiasAdd/ReadVariableOp¢#model/dense_4/MatMul/ReadVariableOp¢$model/dense_5/BiasAdd/ReadVariableOp¢#model/dense_5/MatMul/ReadVariableOp¢2model/layer_normalization/batchnorm/ReadVariableOp¢6model/layer_normalization/batchnorm/mul/ReadVariableOp¢4model/layer_normalization_1/batchnorm/ReadVariableOp¢8model/layer_normalization_1/batchnorm/mul/ReadVariableOp¢4model/layer_normalization_2/batchnorm/ReadVariableOp¢8model/layer_normalization_2/batchnorm/mul/ReadVariableOp¢4model/layer_normalization_3/batchnorm/ReadVariableOp¢8model/layer_normalization_3/batchnorm/mul/ReadVariableOp¢>model/multi_head_attention/attention_output/add/ReadVariableOp¢Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp¢1model/multi_head_attention/key/add/ReadVariableOp¢;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp¢3model/multi_head_attention/query/add/ReadVariableOp¢=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp¢3model/multi_head_attention/value/add/ReadVariableOp¢=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp¢@model/multi_head_attention_1/attention_output/add/ReadVariableOp¢Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp¢3model/multi_head_attention_1/key/add/ReadVariableOp¢=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp¢5model/multi_head_attention_1/query/add/ReadVariableOp¢?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp¢5model/multi_head_attention_1/value/add/ReadVariableOp¢?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp¢$model/time2_vec/Mul_1/ReadVariableOp¢model/time2_vec/ReadVariableOp¢"model/time2_vec/add/ReadVariableOp¢$model/time2_vec/add_1/ReadVariableOpx
#model/time2_vec/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            z
%model/time2_vec/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            z
%model/time2_vec/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ©
model/time2_vec/strided_sliceStridedSliceinput_1,model/time2_vec/strided_slice/stack:output:0.model/time2_vec/strided_slice/stack_1:output:0.model/time2_vec/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_maskq
&model/time2_vec/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ§
model/time2_vec/MeanMean&model/time2_vec/strided_slice:output:0/model/time2_vec/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
model/time2_vec/ReadVariableOpReadVariableOp'model_time2_vec_readvariableop_resource*
_output_shapes
:*
dtype0
model/time2_vec/mulMul&model/time2_vec/ReadVariableOp:value:0model/time2_vec/Mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"model/time2_vec/add/ReadVariableOpReadVariableOp+model_time2_vec_add_readvariableop_resource*
_output_shapes
:*
dtype0
model/time2_vec/addAddV2model/time2_vec/mul:z:0*model/time2_vec/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
model/time2_vec/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ 
model/time2_vec/ExpandDims
ExpandDimsmodel/time2_vec/add:z:0'model/time2_vec/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$model/time2_vec/Mul_1/ReadVariableOpReadVariableOp-model_time2_vec_mul_1_readvariableop_resource*
_output_shapes
:*
dtype0
model/time2_vec/Mul_1Mulmodel/time2_vec/Mean:output:0,model/time2_vec/Mul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$model/time2_vec/add_1/ReadVariableOpReadVariableOp-model_time2_vec_add_1_readvariableop_resource*
_output_shapes
:*
dtype0
model/time2_vec/add_1AddV2model/time2_vec/Mul_1:z:0,model/time2_vec/add_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
model/time2_vec/SinSinmodel/time2_vec/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
 model/time2_vec/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¤
model/time2_vec/ExpandDims_1
ExpandDimsmodel/time2_vec/Sin:y:0)model/time2_vec/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
model/time2_vec/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÓ
model/time2_vec/concatConcatV2#model/time2_vec/ExpandDims:output:0%model/time2_vec/ExpandDims_1:output:0$model/time2_vec/concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :µ
model/concatenate/concatConcatV2input_1model/time2_vec/concat:output:0&model/concatenate/concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!È
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0
.model/multi_head_attention/query/einsum/EinsumEinsum!model/concatenate/concat:output:0Emodel/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde°
3model/multi_head_attention/query/add/ReadVariableOpReadVariableOp<model_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:!*
dtype0Ý
$model/multi_head_attention/query/addAddV27model/multi_head_attention/query/einsum/Einsum:output:0;model/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ä
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpDmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0þ
,model/multi_head_attention/key/einsum/EinsumEinsum!model/concatenate/concat:output:0Cmodel/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde¬
1model/multi_head_attention/key/add/ReadVariableOpReadVariableOp:model_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:!*
dtype0×
"model/multi_head_attention/key/addAddV25model/multi_head_attention/key/einsum/Einsum:output:09model/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!È
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0
.model/multi_head_attention/value/einsum/EinsumEinsum!model/concatenate/concat:output:0Emodel/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde°
3model/multi_head_attention/value/add/ReadVariableOpReadVariableOp<model_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:!*
dtype0Ý
$model/multi_head_attention/value/addAddV27model/multi_head_attention/value/einsum/Einsum:output:0;model/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!e
 model/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>´
model/multi_head_attention/MulMul(model/multi_head_attention/query/add:z:0)model/multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!à
(model/multi_head_attention/einsum/EinsumEinsum&model/multi_head_attention/key/add:z:0"model/multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe¢
*model/multi_head_attention/softmax/SoftmaxSoftmax1model/multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
+model/multi_head_attention/dropout/IdentityIdentity4model/multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
*model/multi_head_attention/einsum_1/EinsumEinsum4model/multi_head_attention/dropout/Identity:output:0(model/multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcdÞ
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpQmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0¦
9model/multi_head_attention/attention_output/einsum/EinsumEinsum3model/multi_head_attention/einsum_1/Einsum:output:0Pmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abeÂ
>model/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpGmodel_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0ú
/model/multi_head_attention/attention_output/addAddV2Bmodel/multi_head_attention/attention_output/einsum/Einsum:output:0Fmodel/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
model/dropout/IdentityIdentity3model/multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!£
 model/tf.__operators__.add/AddV2AddV2model/dropout/Identity:output:0!model/concatenate/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
8model/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Þ
&model/layer_normalization/moments/meanMean$model/tf.__operators__.add/AddV2:z:0Amodel/layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(¥
.model/layer_normalization/moments/StopGradientStopGradient/model/layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÝ
3model/layer_normalization/moments/SquaredDifferenceSquaredDifference$model/tf.__operators__.add/AddV2:z:07model/layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
<model/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ù
*model/layer_normalization/moments/varianceMean7model/layer_normalization/moments/SquaredDifference:z:0Emodel/layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(n
)model/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ï
'model/layer_normalization/batchnorm/addAddV23model/layer_normalization/moments/variance:output:02model/layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)model/layer_normalization/batchnorm/RsqrtRsqrt+model/layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ²
6model/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp?model_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0Ó
'model/layer_normalization/batchnorm/mulMul-model/layer_normalization/batchnorm/Rsqrt:y:0>model/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¹
)model/layer_normalization/batchnorm/mul_1Mul$model/tf.__operators__.add/AddV2:z:0+model/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ä
)model/layer_normalization/batchnorm/mul_2Mul/model/layer_normalization/moments/mean:output:0+model/layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!ª
2model/layer_normalization/batchnorm/ReadVariableOpReadVariableOp;model_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0Ï
'model/layer_normalization/batchnorm/subSub:model/layer_normalization/batchnorm/ReadVariableOp:value:0-model/layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ä
)model/layer_normalization/batchnorm/add_1AddV2-model/layer_normalization/batchnorm/mul_1:z:0+model/layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
$model/dense/Tensordot/ReadVariableOpReadVariableOp-model_dense_tensordot_readvariableop_resource*
_output_shapes

:!@*
dtype0d
model/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:k
model/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       x
model/dense/Tensordot/ShapeShape-model/layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:e
#model/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ë
model/dense/Tensordot/GatherV2GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/free:output:0,model/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
%model/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
 model/dense/Tensordot/GatherV2_1GatherV2$model/dense/Tensordot/Shape:output:0#model/dense/Tensordot/axes:output:0.model/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:e
model/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
model/dense/Tensordot/ProdProd'model/dense/Tensordot/GatherV2:output:0$model/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: g
model/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
model/dense/Tensordot/Prod_1Prod)model/dense/Tensordot/GatherV2_1:output:0&model/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: c
!model/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ì
model/dense/Tensordot/concatConcatV2#model/dense/Tensordot/free:output:0#model/dense/Tensordot/axes:output:0*model/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
model/dense/Tensordot/stackPack#model/dense/Tensordot/Prod:output:0%model/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¸
model/dense/Tensordot/transpose	Transpose-model/layer_normalization/batchnorm/add_1:z:0%model/dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!®
model/dense/Tensordot/ReshapeReshape#model/dense/Tensordot/transpose:y:0$model/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ®
model/dense/Tensordot/MatMulMatMul&model/dense/Tensordot/Reshape:output:0,model/dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
model/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@e
#model/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
model/dense/Tensordot/concat_1ConcatV2'model/dense/Tensordot/GatherV2:output:0&model/dense/Tensordot/Const_2:output:0,model/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:§
model/dense/TensordotReshape&model/dense/Tensordot/MatMul:product:0'model/dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0 
model/dense/BiasAddBiasAddmodel/dense/Tensordot:output:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
model/dense/ReluRelumodel/dense/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&model/dense_1/Tensordot/ReadVariableOpReadVariableOp/model_dense_1_tensordot_readvariableop_resource*
_output_shapes

:@!*
dtype0f
model/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       k
model/dense_1/Tensordot/ShapeShapemodel/dense/Relu:activations:0*
T0*
_output_shapes
:g
%model/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
 model/dense_1/Tensordot/GatherV2GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/free:output:0.model/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
"model/dense_1/Tensordot/GatherV2_1GatherV2&model/dense_1/Tensordot/Shape:output:0%model/dense_1/Tensordot/axes:output:00model/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
model/dense_1/Tensordot/ProdProd)model/dense_1/Tensordot/GatherV2:output:0&model/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
model/dense_1/Tensordot/Prod_1Prod+model/dense_1/Tensordot/GatherV2_1:output:0(model/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ô
model/dense_1/Tensordot/concatConcatV2%model/dense_1/Tensordot/free:output:0%model/dense_1/Tensordot/axes:output:0,model/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:£
model/dense_1/Tensordot/stackPack%model/dense_1/Tensordot/Prod:output:0'model/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:­
!model/dense_1/Tensordot/transpose	Transposemodel/dense/Relu:activations:0'model/dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@´
model/dense_1/Tensordot/ReshapeReshape%model/dense_1/Tensordot/transpose:y:0&model/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ´
model/dense_1/Tensordot/MatMulMatMul(model/dense_1/Tensordot/Reshape:output:0.model/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!i
model/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:!g
%model/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
 model/dense_1/Tensordot/concat_1ConcatV2)model/dense_1/Tensordot/GatherV2:output:0(model/dense_1/Tensordot/Const_2:output:0.model/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:­
model/dense_1/TensordotReshape(model/dense_1/Tensordot/MatMul:product:0)model/dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0¦
model/dense_1/BiasAddBiasAdd model/dense_1/Tensordot:output:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!z
model/dropout_1/IdentityIdentitymodel/dense_1/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!³
"model/tf.__operators__.add_1/AddV2AddV2!model/dropout_1/Identity:output:0-model/layer_normalization/batchnorm/add_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
:model/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ä
(model/layer_normalization_1/moments/meanMean&model/tf.__operators__.add_1/AddV2:z:0Cmodel/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(©
0model/layer_normalization_1/moments/StopGradientStopGradient1model/layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
5model/layer_normalization_1/moments/SquaredDifferenceSquaredDifference&model/tf.__operators__.add_1/AddV2:z:09model/layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
>model/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ÿ
,model/layer_normalization_1/moments/varianceMean9model/layer_normalization_1/moments/SquaredDifference:z:0Gmodel/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(p
+model/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Õ
)model/layer_normalization_1/batchnorm/addAddV25model/layer_normalization_1/moments/variance:output:04model/layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+model/layer_normalization_1/batchnorm/RsqrtRsqrt-model/layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
8model/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0Ù
)model/layer_normalization_1/batchnorm/mulMul/model/layer_normalization_1/batchnorm/Rsqrt:y:0@model/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¿
+model/layer_normalization_1/batchnorm/mul_1Mul&model/tf.__operators__.add_1/AddV2:z:0-model/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ê
+model/layer_normalization_1/batchnorm/mul_2Mul1model/layer_normalization_1/moments/mean:output:0-model/layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!®
4model/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0Õ
)model/layer_normalization_1/batchnorm/subSub<model/layer_normalization_1/batchnorm/ReadVariableOp:value:0/model/layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ê
+model/layer_normalization_1/batchnorm/add_1AddV2/model/layer_normalization_1/batchnorm/mul_1:z:0-model/layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ì
?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0
0model/multi_head_attention_1/query/einsum/EinsumEinsum/model/layer_normalization_1/batchnorm/add_1:z:0Gmodel/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde´
5model/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp>model_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:!*
dtype0ã
&model/multi_head_attention_1/query/addAddV29model/multi_head_attention_1/query/einsum/Einsum:output:0=model/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!È
=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0
.model/multi_head_attention_1/key/einsum/EinsumEinsum/model/layer_normalization_1/batchnorm/add_1:z:0Emodel/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde°
3model/multi_head_attention_1/key/add/ReadVariableOpReadVariableOp<model_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:!*
dtype0Ý
$model/multi_head_attention_1/key/addAddV27model/multi_head_attention_1/key/einsum/Einsum:output:0;model/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ì
?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0
0model/multi_head_attention_1/value/einsum/EinsumEinsum/model/layer_normalization_1/batchnorm/add_1:z:0Gmodel/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde´
5model/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp>model_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:!*
dtype0ã
&model/multi_head_attention_1/value/addAddV29model/multi_head_attention_1/value/einsum/Einsum:output:0=model/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!g
"model/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>º
 model/multi_head_attention_1/MulMul*model/multi_head_attention_1/query/add:z:0+model/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!æ
*model/multi_head_attention_1/einsum/EinsumEinsum(model/multi_head_attention_1/key/add:z:0$model/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe¦
,model/multi_head_attention_1/softmax/SoftmaxSoftmax3model/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
-model/multi_head_attention_1/dropout/IdentityIdentity6model/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
,model/multi_head_attention_1/einsum_1/EinsumEinsum6model/multi_head_attention_1/dropout/Identity:output:0*model/multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcdâ
Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpSmodel_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0¬
;model/multi_head_attention_1/attention_output/einsum/EinsumEinsum5model/multi_head_attention_1/einsum_1/Einsum:output:0Rmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abeÆ
@model/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpImodel_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0
1model/multi_head_attention_1/attention_output/addAddV2Dmodel/multi_head_attention_1/attention_output/einsum/Einsum:output:0Hmodel/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
model/dropout_2/IdentityIdentity5model/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!µ
"model/tf.__operators__.add_2/AddV2AddV2!model/dropout_2/Identity:output:0/model/layer_normalization_1/batchnorm/add_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
:model/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ä
(model/layer_normalization_2/moments/meanMean&model/tf.__operators__.add_2/AddV2:z:0Cmodel/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(©
0model/layer_normalization_2/moments/StopGradientStopGradient1model/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
5model/layer_normalization_2/moments/SquaredDifferenceSquaredDifference&model/tf.__operators__.add_2/AddV2:z:09model/layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
>model/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ÿ
,model/layer_normalization_2/moments/varianceMean9model/layer_normalization_2/moments/SquaredDifference:z:0Gmodel/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(p
+model/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Õ
)model/layer_normalization_2/batchnorm/addAddV25model/layer_normalization_2/moments/variance:output:04model/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+model/layer_normalization_2/batchnorm/RsqrtRsqrt-model/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
8model/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0Ù
)model/layer_normalization_2/batchnorm/mulMul/model/layer_normalization_2/batchnorm/Rsqrt:y:0@model/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¿
+model/layer_normalization_2/batchnorm/mul_1Mul&model/tf.__operators__.add_2/AddV2:z:0-model/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ê
+model/layer_normalization_2/batchnorm/mul_2Mul1model/layer_normalization_2/moments/mean:output:0-model/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!®
4model/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0Õ
)model/layer_normalization_2/batchnorm/subSub<model/layer_normalization_2/batchnorm/ReadVariableOp:value:0/model/layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ê
+model/layer_normalization_2/batchnorm/add_1AddV2/model/layer_normalization_2/batchnorm/mul_1:z:0-model/layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
&model/dense_2/Tensordot/ReadVariableOpReadVariableOp/model_dense_2_tensordot_readvariableop_resource*
_output_shapes

:!@*
dtype0f
model/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       |
model/dense_2/Tensordot/ShapeShape/model/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:g
%model/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
 model/dense_2/Tensordot/GatherV2GatherV2&model/dense_2/Tensordot/Shape:output:0%model/dense_2/Tensordot/free:output:0.model/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
"model/dense_2/Tensordot/GatherV2_1GatherV2&model/dense_2/Tensordot/Shape:output:0%model/dense_2/Tensordot/axes:output:00model/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
model/dense_2/Tensordot/ProdProd)model/dense_2/Tensordot/GatherV2:output:0&model/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
model/dense_2/Tensordot/Prod_1Prod+model/dense_2/Tensordot/GatherV2_1:output:0(model/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ô
model/dense_2/Tensordot/concatConcatV2%model/dense_2/Tensordot/free:output:0%model/dense_2/Tensordot/axes:output:0,model/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:£
model/dense_2/Tensordot/stackPack%model/dense_2/Tensordot/Prod:output:0'model/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¾
!model/dense_2/Tensordot/transpose	Transpose/model/layer_normalization_2/batchnorm/add_1:z:0'model/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!´
model/dense_2/Tensordot/ReshapeReshape%model/dense_2/Tensordot/transpose:y:0&model/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ´
model/dense_2/Tensordot/MatMulMatMul(model/dense_2/Tensordot/Reshape:output:0.model/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
model/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@g
%model/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
 model/dense_2/Tensordot/concat_1ConcatV2)model/dense_2/Tensordot/GatherV2:output:0(model/dense_2/Tensordot/Const_2:output:0.model/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:­
model/dense_2/TensordotReshape(model/dense_2/Tensordot/MatMul:product:0)model/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¦
model/dense_2/BiasAddBiasAdd model/dense_2/Tensordot:output:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@p
model/dense_2/ReluRelumodel/dense_2/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&model/dense_3/Tensordot/ReadVariableOpReadVariableOp/model_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@!*
dtype0f
model/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
model/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       m
model/dense_3/Tensordot/ShapeShape model/dense_2/Relu:activations:0*
T0*
_output_shapes
:g
%model/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
 model/dense_3/Tensordot/GatherV2GatherV2&model/dense_3/Tensordot/Shape:output:0%model/dense_3/Tensordot/free:output:0.model/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'model/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
"model/dense_3/Tensordot/GatherV2_1GatherV2&model/dense_3/Tensordot/Shape:output:0%model/dense_3/Tensordot/axes:output:00model/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
model/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
model/dense_3/Tensordot/ProdProd)model/dense_3/Tensordot/GatherV2:output:0&model/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: i
model/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
model/dense_3/Tensordot/Prod_1Prod+model/dense_3/Tensordot/GatherV2_1:output:0(model/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#model/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ô
model/dense_3/Tensordot/concatConcatV2%model/dense_3/Tensordot/free:output:0%model/dense_3/Tensordot/axes:output:0,model/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:£
model/dense_3/Tensordot/stackPack%model/dense_3/Tensordot/Prod:output:0'model/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¯
!model/dense_3/Tensordot/transpose	Transpose model/dense_2/Relu:activations:0'model/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@´
model/dense_3/Tensordot/ReshapeReshape%model/dense_3/Tensordot/transpose:y:0&model/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ´
model/dense_3/Tensordot/MatMulMatMul(model/dense_3/Tensordot/Reshape:output:0.model/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!i
model/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:!g
%model/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
 model/dense_3/Tensordot/concat_1ConcatV2)model/dense_3/Tensordot/GatherV2:output:0(model/dense_3/Tensordot/Const_2:output:0.model/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:­
model/dense_3/TensordotReshape(model/dense_3/Tensordot/MatMul:product:0)model/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0¦
model/dense_3/BiasAddBiasAdd model/dense_3/Tensordot:output:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!z
model/dropout_3/IdentityIdentitymodel/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!µ
"model/tf.__operators__.add_3/AddV2AddV2!model/dropout_3/Identity:output:0/model/layer_normalization_2/batchnorm/add_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
:model/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ä
(model/layer_normalization_3/moments/meanMean&model/tf.__operators__.add_3/AddV2:z:0Cmodel/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(©
0model/layer_normalization_3/moments/StopGradientStopGradient1model/layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
5model/layer_normalization_3/moments/SquaredDifferenceSquaredDifference&model/tf.__operators__.add_3/AddV2:z:09model/layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
>model/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ÿ
,model/layer_normalization_3/moments/varianceMean9model/layer_normalization_3/moments/SquaredDifference:z:0Gmodel/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(p
+model/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Õ
)model/layer_normalization_3/batchnorm/addAddV25model/layer_normalization_3/moments/variance:output:04model/layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+model/layer_normalization_3/batchnorm/RsqrtRsqrt-model/layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
8model/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0Ù
)model/layer_normalization_3/batchnorm/mulMul/model/layer_normalization_3/batchnorm/Rsqrt:y:0@model/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¿
+model/layer_normalization_3/batchnorm/mul_1Mul&model/tf.__operators__.add_3/AddV2:z:0-model/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ê
+model/layer_normalization_3/batchnorm/mul_2Mul1model/layer_normalization_3/moments/mean:output:0-model/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!®
4model/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0Õ
)model/layer_normalization_3/batchnorm/subSub<model/layer_normalization_3/batchnorm/ReadVariableOp:value:0/model/layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ê
+model/layer_normalization_3/batchnorm/add_1AddV2/model/layer_normalization_3/batchnorm/mul_1:z:0-model/layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!w
5model/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :Î
#model/global_average_pooling1d/MeanMean/model/layer_normalization_3/batchnorm/add_1:z:0>model/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
#model/dense_4/MatMul/ReadVariableOpReadVariableOp,model_dense_4_matmul_readvariableop_resource*
_output_shapes

:! *
dtype0«
model/dense_4/MatMulMatMul,model/global_average_pooling1d/Mean:output:0+model/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0 
model/dense_4/BiasAddBiasAddmodel/dense_4/MatMul:product:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
#model/dense_5/MatMul/ReadVariableOpReadVariableOp,model_dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
model/dense_5/MatMulMatMulmodel/dense_4/BiasAdd:output:0+model/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$model/dense_5/BiasAdd/ReadVariableOpReadVariableOp-model_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
model/dense_5/BiasAddBiasAddmodel/dense_5/MatMul:product:0,model/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
IdentityIdentitymodel/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp#^model/dense/BiasAdd/ReadVariableOp%^model/dense/Tensordot/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp'^model/dense_1/Tensordot/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp'^model/dense_2/Tensordot/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp'^model/dense_3/Tensordot/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp%^model/dense_5/BiasAdd/ReadVariableOp$^model/dense_5/MatMul/ReadVariableOp3^model/layer_normalization/batchnorm/ReadVariableOp7^model/layer_normalization/batchnorm/mul/ReadVariableOp5^model/layer_normalization_1/batchnorm/ReadVariableOp9^model/layer_normalization_1/batchnorm/mul/ReadVariableOp5^model/layer_normalization_2/batchnorm/ReadVariableOp9^model/layer_normalization_2/batchnorm/mul/ReadVariableOp5^model/layer_normalization_3/batchnorm/ReadVariableOp9^model/layer_normalization_3/batchnorm/mul/ReadVariableOp?^model/multi_head_attention/attention_output/add/ReadVariableOpI^model/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2^model/multi_head_attention/key/add/ReadVariableOp<^model/multi_head_attention/key/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/query/add/ReadVariableOp>^model/multi_head_attention/query/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/value/add/ReadVariableOp>^model/multi_head_attention/value/einsum/Einsum/ReadVariableOpA^model/multi_head_attention_1/attention_output/add/ReadVariableOpK^model/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp4^model/multi_head_attention_1/key/add/ReadVariableOp>^model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_1/query/add/ReadVariableOp@^model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_1/value/add/ReadVariableOp@^model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp%^model/time2_vec/Mul_1/ReadVariableOp^model/time2_vec/ReadVariableOp#^model/time2_vec/add/ReadVariableOp%^model/time2_vec/add_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2L
$model/dense/Tensordot/ReadVariableOp$model/dense/Tensordot/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2P
&model/dense_1/Tensordot/ReadVariableOp&model/dense_1/Tensordot/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2P
&model/dense_2/Tensordot/ReadVariableOp&model/dense_2/Tensordot/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2P
&model/dense_3/Tensordot/ReadVariableOp&model/dense_3/Tensordot/ReadVariableOp2L
$model/dense_4/BiasAdd/ReadVariableOp$model/dense_4/BiasAdd/ReadVariableOp2J
#model/dense_4/MatMul/ReadVariableOp#model/dense_4/MatMul/ReadVariableOp2L
$model/dense_5/BiasAdd/ReadVariableOp$model/dense_5/BiasAdd/ReadVariableOp2J
#model/dense_5/MatMul/ReadVariableOp#model/dense_5/MatMul/ReadVariableOp2h
2model/layer_normalization/batchnorm/ReadVariableOp2model/layer_normalization/batchnorm/ReadVariableOp2p
6model/layer_normalization/batchnorm/mul/ReadVariableOp6model/layer_normalization/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_1/batchnorm/ReadVariableOp4model/layer_normalization_1/batchnorm/ReadVariableOp2t
8model/layer_normalization_1/batchnorm/mul/ReadVariableOp8model/layer_normalization_1/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_2/batchnorm/ReadVariableOp4model/layer_normalization_2/batchnorm/ReadVariableOp2t
8model/layer_normalization_2/batchnorm/mul/ReadVariableOp8model/layer_normalization_2/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_3/batchnorm/ReadVariableOp4model/layer_normalization_3/batchnorm/ReadVariableOp2t
8model/layer_normalization_3/batchnorm/mul/ReadVariableOp8model/layer_normalization_3/batchnorm/mul/ReadVariableOp2
>model/multi_head_attention/attention_output/add/ReadVariableOp>model/multi_head_attention/attention_output/add/ReadVariableOp2
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpHmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2f
1model/multi_head_attention/key/add/ReadVariableOp1model/multi_head_attention/key/add/ReadVariableOp2z
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/query/add/ReadVariableOp3model/multi_head_attention/query/add/ReadVariableOp2~
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/value/add/ReadVariableOp3model/multi_head_attention/value/add/ReadVariableOp2~
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp2
@model/multi_head_attention_1/attention_output/add/ReadVariableOp@model/multi_head_attention_1/attention_output/add/ReadVariableOp2
Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpJmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention_1/key/add/ReadVariableOp3model/multi_head_attention_1/key/add/ReadVariableOp2~
=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_1/query/add/ReadVariableOp5model/multi_head_attention_1/query/add/ReadVariableOp2
?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_1/value/add/ReadVariableOp5model/multi_head_attention_1/value/add/ReadVariableOp2
?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2L
$model/time2_vec/Mul_1/ReadVariableOp$model/time2_vec/Mul_1/ReadVariableOp2@
model/time2_vec/ReadVariableOpmodel/time2_vec/ReadVariableOp2H
"model/time2_vec/add/ReadVariableOp"model/time2_vec/add/ReadVariableOp2L
$model/time2_vec/add_1/ReadVariableOp$model/time2_vec/add_1/ReadVariableOp:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Ð

'__inference_dense_1_layer_call_fn_11378

inputs
unknown:@!
	unknown_0:!
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_9000s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
©)
ø
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_11279	
query	
valueA
+query_einsum_einsum_readvariableop_resource:!!3
!query_add_readvariableop_resource:!?
)key_einsum_einsum_readvariableop_resource:!!1
key_add_readvariableop_resource:!A
+value_einsum_einsum_readvariableop_resource:!!3
!value_add_readvariableop_resource:!L
6attention_output_einsum_einsum_readvariableop_resource:!!:
,attention_output_add_readvariableop_resource:!
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0¬
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:!*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
einsum_1/EinsumEinsumsoftmax/Softmax:softmax:0value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcd¨
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ø
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ!:ÿÿÿÿÿÿÿÿÿ!: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namevalue
Ü
Ñ	
$__inference_model_layer_call_fn_9357
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:!!
	unknown_4:!
	unknown_5:!!
	unknown_6:!
	unknown_7:!!
	unknown_8:!
	unknown_9:!!

unknown_10:!

unknown_11:!

unknown_12:!

unknown_13:!@

unknown_14:@

unknown_15:@!

unknown_16:!

unknown_17:!

unknown_18:! 

unknown_19:!!

unknown_20:! 

unknown_21:!!

unknown_22:! 

unknown_23:!!

unknown_24:! 

unknown_25:!!

unknown_26:!

unknown_27:!

unknown_28:!

unknown_29:!@

unknown_30:@

unknown_31:@!

unknown_32:!

unknown_33:!

unknown_34:!

unknown_35:! 

unknown_36: 

unknown_37: 

unknown_38:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_9274o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
*
÷
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_8879	
query	
valueA
+query_einsum_einsum_readvariableop_resource:!!3
!query_add_readvariableop_resource:!?
)key_einsum_einsum_readvariableop_resource:!!1
key_add_readvariableop_resource:!A
+value_einsum_einsum_readvariableop_resource:!!3
!value_add_readvariableop_resource:!L
6attention_output_einsum_einsum_readvariableop_resource:!!:
,attention_output_add_readvariableop_resource:!
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0¬
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:!*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcd¨
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ø
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ!:ÿÿÿÿÿÿÿÿÿ!: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namevalue
×
r
F__inference_concatenate_layer_call_and_return_conditional_losses_11166
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :{
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ![
IdentityIdentityconcat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1
*
ù
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_9077	
query	
valueA
+query_einsum_einsum_readvariableop_resource:!!3
!query_add_readvariableop_resource:!?
)key_einsum_einsum_readvariableop_resource:!!1
key_add_readvariableop_resource:!A
+value_einsum_einsum_readvariableop_resource:!!3
!value_add_readvariableop_resource:!L
6attention_output_einsum_einsum_readvariableop_resource:!!:
,attention_output_add_readvariableop_resource:!
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0¬
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:!*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcd¨
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ø
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ!:ÿÿÿÿÿÿÿÿÿ!: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namevalue
Å	
ó
B__inference_dense_5_layer_call_and_return_conditional_losses_11799

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

üX
!__inference__traced_restore_12594
file_prefix0
"assignvariableop_time2_vec_wei_per:3
%assignvariableop_1_time2_vec_bias_per:2
$assignvariableop_2_time2_vec_wei_lin:3
%assignvariableop_3_time2_vec_bias_lin::
,assignvariableop_4_layer_normalization_gamma:!9
+assignvariableop_5_layer_normalization_beta:!1
assignvariableop_6_dense_kernel:!@+
assignvariableop_7_dense_bias:@3
!assignvariableop_8_dense_1_kernel:@!-
assignvariableop_9_dense_1_bias:!=
/assignvariableop_10_layer_normalization_1_gamma:!<
.assignvariableop_11_layer_normalization_1_beta:!=
/assignvariableop_12_layer_normalization_2_gamma:!<
.assignvariableop_13_layer_normalization_2_beta:!4
"assignvariableop_14_dense_2_kernel:!@.
 assignvariableop_15_dense_2_bias:@4
"assignvariableop_16_dense_3_kernel:@!.
 assignvariableop_17_dense_3_bias:!=
/assignvariableop_18_layer_normalization_3_gamma:!<
.assignvariableop_19_layer_normalization_3_beta:!4
"assignvariableop_20_dense_4_kernel:! .
 assignvariableop_21_dense_4_bias: 4
"assignvariableop_22_dense_5_kernel: .
 assignvariableop_23_dense_5_bias:'
assignvariableop_24_adam_iter:	 )
assignvariableop_25_adam_beta_1: )
assignvariableop_26_adam_beta_2: (
assignvariableop_27_adam_decay: 0
&assignvariableop_28_adam_learning_rate: K
5assignvariableop_29_multi_head_attention_query_kernel:!!E
3assignvariableop_30_multi_head_attention_query_bias:!I
3assignvariableop_31_multi_head_attention_key_kernel:!!C
1assignvariableop_32_multi_head_attention_key_bias:!K
5assignvariableop_33_multi_head_attention_value_kernel:!!E
3assignvariableop_34_multi_head_attention_value_bias:!V
@assignvariableop_35_multi_head_attention_attention_output_kernel:!!L
>assignvariableop_36_multi_head_attention_attention_output_bias:!M
7assignvariableop_37_multi_head_attention_1_query_kernel:!!G
5assignvariableop_38_multi_head_attention_1_query_bias:!K
5assignvariableop_39_multi_head_attention_1_key_kernel:!!E
3assignvariableop_40_multi_head_attention_1_key_bias:!M
7assignvariableop_41_multi_head_attention_1_value_kernel:!!G
5assignvariableop_42_multi_head_attention_1_value_bias:!X
Bassignvariableop_43_multi_head_attention_1_attention_output_kernel:!!N
@assignvariableop_44_multi_head_attention_1_attention_output_bias:!#
assignvariableop_45_total: #
assignvariableop_46_count: :
,assignvariableop_47_adam_time2_vec_wei_per_m:;
-assignvariableop_48_adam_time2_vec_bias_per_m::
,assignvariableop_49_adam_time2_vec_wei_lin_m:;
-assignvariableop_50_adam_time2_vec_bias_lin_m:B
4assignvariableop_51_adam_layer_normalization_gamma_m:!A
3assignvariableop_52_adam_layer_normalization_beta_m:!9
'assignvariableop_53_adam_dense_kernel_m:!@3
%assignvariableop_54_adam_dense_bias_m:@;
)assignvariableop_55_adam_dense_1_kernel_m:@!5
'assignvariableop_56_adam_dense_1_bias_m:!D
6assignvariableop_57_adam_layer_normalization_1_gamma_m:!C
5assignvariableop_58_adam_layer_normalization_1_beta_m:!D
6assignvariableop_59_adam_layer_normalization_2_gamma_m:!C
5assignvariableop_60_adam_layer_normalization_2_beta_m:!;
)assignvariableop_61_adam_dense_2_kernel_m:!@5
'assignvariableop_62_adam_dense_2_bias_m:@;
)assignvariableop_63_adam_dense_3_kernel_m:@!5
'assignvariableop_64_adam_dense_3_bias_m:!D
6assignvariableop_65_adam_layer_normalization_3_gamma_m:!C
5assignvariableop_66_adam_layer_normalization_3_beta_m:!;
)assignvariableop_67_adam_dense_4_kernel_m:! 5
'assignvariableop_68_adam_dense_4_bias_m: ;
)assignvariableop_69_adam_dense_5_kernel_m: 5
'assignvariableop_70_adam_dense_5_bias_m:R
<assignvariableop_71_adam_multi_head_attention_query_kernel_m:!!L
:assignvariableop_72_adam_multi_head_attention_query_bias_m:!P
:assignvariableop_73_adam_multi_head_attention_key_kernel_m:!!J
8assignvariableop_74_adam_multi_head_attention_key_bias_m:!R
<assignvariableop_75_adam_multi_head_attention_value_kernel_m:!!L
:assignvariableop_76_adam_multi_head_attention_value_bias_m:!]
Gassignvariableop_77_adam_multi_head_attention_attention_output_kernel_m:!!S
Eassignvariableop_78_adam_multi_head_attention_attention_output_bias_m:!T
>assignvariableop_79_adam_multi_head_attention_1_query_kernel_m:!!N
<assignvariableop_80_adam_multi_head_attention_1_query_bias_m:!R
<assignvariableop_81_adam_multi_head_attention_1_key_kernel_m:!!L
:assignvariableop_82_adam_multi_head_attention_1_key_bias_m:!T
>assignvariableop_83_adam_multi_head_attention_1_value_kernel_m:!!N
<assignvariableop_84_adam_multi_head_attention_1_value_bias_m:!_
Iassignvariableop_85_adam_multi_head_attention_1_attention_output_kernel_m:!!U
Gassignvariableop_86_adam_multi_head_attention_1_attention_output_bias_m:!:
,assignvariableop_87_adam_time2_vec_wei_per_v:;
-assignvariableop_88_adam_time2_vec_bias_per_v::
,assignvariableop_89_adam_time2_vec_wei_lin_v:;
-assignvariableop_90_adam_time2_vec_bias_lin_v:B
4assignvariableop_91_adam_layer_normalization_gamma_v:!A
3assignvariableop_92_adam_layer_normalization_beta_v:!9
'assignvariableop_93_adam_dense_kernel_v:!@3
%assignvariableop_94_adam_dense_bias_v:@;
)assignvariableop_95_adam_dense_1_kernel_v:@!5
'assignvariableop_96_adam_dense_1_bias_v:!D
6assignvariableop_97_adam_layer_normalization_1_gamma_v:!C
5assignvariableop_98_adam_layer_normalization_1_beta_v:!D
6assignvariableop_99_adam_layer_normalization_2_gamma_v:!D
6assignvariableop_100_adam_layer_normalization_2_beta_v:!<
*assignvariableop_101_adam_dense_2_kernel_v:!@6
(assignvariableop_102_adam_dense_2_bias_v:@<
*assignvariableop_103_adam_dense_3_kernel_v:@!6
(assignvariableop_104_adam_dense_3_bias_v:!E
7assignvariableop_105_adam_layer_normalization_3_gamma_v:!D
6assignvariableop_106_adam_layer_normalization_3_beta_v:!<
*assignvariableop_107_adam_dense_4_kernel_v:! 6
(assignvariableop_108_adam_dense_4_bias_v: <
*assignvariableop_109_adam_dense_5_kernel_v: 6
(assignvariableop_110_adam_dense_5_bias_v:S
=assignvariableop_111_adam_multi_head_attention_query_kernel_v:!!M
;assignvariableop_112_adam_multi_head_attention_query_bias_v:!Q
;assignvariableop_113_adam_multi_head_attention_key_kernel_v:!!K
9assignvariableop_114_adam_multi_head_attention_key_bias_v:!S
=assignvariableop_115_adam_multi_head_attention_value_kernel_v:!!M
;assignvariableop_116_adam_multi_head_attention_value_bias_v:!^
Hassignvariableop_117_adam_multi_head_attention_attention_output_kernel_v:!!T
Fassignvariableop_118_adam_multi_head_attention_attention_output_bias_v:!U
?assignvariableop_119_adam_multi_head_attention_1_query_kernel_v:!!O
=assignvariableop_120_adam_multi_head_attention_1_query_bias_v:!S
=assignvariableop_121_adam_multi_head_attention_1_key_kernel_v:!!M
;assignvariableop_122_adam_multi_head_attention_1_key_bias_v:!U
?assignvariableop_123_adam_multi_head_attention_1_value_kernel_v:!!O
=assignvariableop_124_adam_multi_head_attention_1_value_bias_v:!`
Jassignvariableop_125_adam_multi_head_attention_1_attention_output_kernel_v:!!V
Hassignvariableop_126_adam_multi_head_attention_1_attention_output_bias_v:!
identity_128¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_100¢AssignVariableOp_101¢AssignVariableOp_102¢AssignVariableOp_103¢AssignVariableOp_104¢AssignVariableOp_105¢AssignVariableOp_106¢AssignVariableOp_107¢AssignVariableOp_108¢AssignVariableOp_109¢AssignVariableOp_11¢AssignVariableOp_110¢AssignVariableOp_111¢AssignVariableOp_112¢AssignVariableOp_113¢AssignVariableOp_114¢AssignVariableOp_115¢AssignVariableOp_116¢AssignVariableOp_117¢AssignVariableOp_118¢AssignVariableOp_119¢AssignVariableOp_12¢AssignVariableOp_120¢AssignVariableOp_121¢AssignVariableOp_122¢AssignVariableOp_123¢AssignVariableOp_124¢AssignVariableOp_125¢AssignVariableOp_126¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_83¢AssignVariableOp_84¢AssignVariableOp_85¢AssignVariableOp_86¢AssignVariableOp_87¢AssignVariableOp_88¢AssignVariableOp_89¢AssignVariableOp_9¢AssignVariableOp_90¢AssignVariableOp_91¢AssignVariableOp_92¢AssignVariableOp_93¢AssignVariableOp_94¢AssignVariableOp_95¢AssignVariableOp_96¢AssignVariableOp_97¢AssignVariableOp_98¢AssignVariableOp_99ÚC
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*ÿB
valueõBBòBB7layer_with_weights-0/wei_per/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/bias_per/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-0/wei_lin/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/bias_lin/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/wei_per/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/bias_per/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/wei_lin/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/bias_lin/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/wei_per/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/bias_per/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/wei_lin/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/bias_lin/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHõ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¥
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp"assignvariableop_time2_vec_wei_perIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp%assignvariableop_1_time2_vec_bias_perIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_time2_vec_wei_linIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp%assignvariableop_3_time2_vec_bias_linIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp,assignvariableop_4_layer_normalization_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp+assignvariableop_5_layer_normalization_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_10AssignVariableOp/assignvariableop_10_layer_normalization_1_gammaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp.assignvariableop_11_layer_normalization_1_betaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_12AssignVariableOp/assignvariableop_12_layer_normalization_2_gammaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp.assignvariableop_13_layer_normalization_2_betaIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_2_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_2_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_3_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_3_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_18AssignVariableOp/assignvariableop_18_layer_normalization_3_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp.assignvariableop_19_layer_normalization_3_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_4_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_4_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp"assignvariableop_22_dense_5_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp assignvariableop_23_dense_5_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_adam_iterIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_adam_beta_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_beta_2Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_decayIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_learning_rateIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_29AssignVariableOp5assignvariableop_29_multi_head_attention_query_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_30AssignVariableOp3assignvariableop_30_multi_head_attention_query_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_31AssignVariableOp3assignvariableop_31_multi_head_attention_key_kernelIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_32AssignVariableOp1assignvariableop_32_multi_head_attention_key_biasIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_33AssignVariableOp5assignvariableop_33_multi_head_attention_value_kernelIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_34AssignVariableOp3assignvariableop_34_multi_head_attention_value_biasIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_35AssignVariableOp@assignvariableop_35_multi_head_attention_attention_output_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_36AssignVariableOp>assignvariableop_36_multi_head_attention_attention_output_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_37AssignVariableOp7assignvariableop_37_multi_head_attention_1_query_kernelIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_38AssignVariableOp5assignvariableop_38_multi_head_attention_1_query_biasIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_39AssignVariableOp5assignvariableop_39_multi_head_attention_1_key_kernelIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_40AssignVariableOp3assignvariableop_40_multi_head_attention_1_key_biasIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_41AssignVariableOp7assignvariableop_41_multi_head_attention_1_value_kernelIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_42AssignVariableOp5assignvariableop_42_multi_head_attention_1_value_biasIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_43AssignVariableOpBassignvariableop_43_multi_head_attention_1_attention_output_kernelIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_44AssignVariableOp@assignvariableop_44_multi_head_attention_1_attention_output_biasIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOpassignvariableop_45_totalIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOpassignvariableop_46_countIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp,assignvariableop_47_adam_time2_vec_wei_per_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp-assignvariableop_48_adam_time2_vec_bias_per_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp,assignvariableop_49_adam_time2_vec_wei_lin_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp-assignvariableop_50_adam_time2_vec_bias_lin_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_51AssignVariableOp4assignvariableop_51_adam_layer_normalization_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_52AssignVariableOp3assignvariableop_52_adam_layer_normalization_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp'assignvariableop_53_adam_dense_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp%assignvariableop_54_adam_dense_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_1_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp'assignvariableop_56_adam_dense_1_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_57AssignVariableOp6assignvariableop_57_adam_layer_normalization_1_gamma_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_58AssignVariableOp5assignvariableop_58_adam_layer_normalization_1_beta_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_59AssignVariableOp6assignvariableop_59_adam_layer_normalization_2_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_60AssignVariableOp5assignvariableop_60_adam_layer_normalization_2_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_dense_2_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_dense_2_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp)assignvariableop_63_adam_dense_3_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp'assignvariableop_64_adam_dense_3_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_65AssignVariableOp6assignvariableop_65_adam_layer_normalization_3_gamma_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_66AssignVariableOp5assignvariableop_66_adam_layer_normalization_3_beta_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_dense_4_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp'assignvariableop_68_adam_dense_4_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp)assignvariableop_69_adam_dense_5_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp'assignvariableop_70_adam_dense_5_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_71AssignVariableOp<assignvariableop_71_adam_multi_head_attention_query_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_72AssignVariableOp:assignvariableop_72_adam_multi_head_attention_query_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_73AssignVariableOp:assignvariableop_73_adam_multi_head_attention_key_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_74AssignVariableOp8assignvariableop_74_adam_multi_head_attention_key_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_75AssignVariableOp<assignvariableop_75_adam_multi_head_attention_value_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_76AssignVariableOp:assignvariableop_76_adam_multi_head_attention_value_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_77AssignVariableOpGassignvariableop_77_adam_multi_head_attention_attention_output_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_78AssignVariableOpEassignvariableop_78_adam_multi_head_attention_attention_output_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_79AssignVariableOp>assignvariableop_79_adam_multi_head_attention_1_query_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_80AssignVariableOp<assignvariableop_80_adam_multi_head_attention_1_query_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_81AssignVariableOp<assignvariableop_81_adam_multi_head_attention_1_key_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_82AssignVariableOp:assignvariableop_82_adam_multi_head_attention_1_key_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_83AssignVariableOp>assignvariableop_83_adam_multi_head_attention_1_value_kernel_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_84AssignVariableOp<assignvariableop_84_adam_multi_head_attention_1_value_bias_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:º
AssignVariableOp_85AssignVariableOpIassignvariableop_85_adam_multi_head_attention_1_attention_output_kernel_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:¸
AssignVariableOp_86AssignVariableOpGassignvariableop_86_adam_multi_head_attention_1_attention_output_bias_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_87AssignVariableOp,assignvariableop_87_adam_time2_vec_wei_per_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_88AssignVariableOp-assignvariableop_88_adam_time2_vec_bias_per_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_89AssignVariableOp,assignvariableop_89_adam_time2_vec_wei_lin_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_90AssignVariableOp-assignvariableop_90_adam_time2_vec_bias_lin_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_91AssignVariableOp4assignvariableop_91_adam_layer_normalization_gamma_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_92AssignVariableOp3assignvariableop_92_adam_layer_normalization_beta_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_93AssignVariableOp'assignvariableop_93_adam_dense_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_94AssignVariableOp%assignvariableop_94_adam_dense_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_95AssignVariableOp)assignvariableop_95_adam_dense_1_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_96AssignVariableOp'assignvariableop_96_adam_dense_1_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_97AssignVariableOp6assignvariableop_97_adam_layer_normalization_1_gamma_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_98AssignVariableOp5assignvariableop_98_adam_layer_normalization_1_beta_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_99AssignVariableOp6assignvariableop_99_adam_layer_normalization_2_gamma_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_100AssignVariableOp6assignvariableop_100_adam_layer_normalization_2_beta_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_101AssignVariableOp*assignvariableop_101_adam_dense_2_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_102AssignVariableOp(assignvariableop_102_adam_dense_2_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_103AssignVariableOp*assignvariableop_103_adam_dense_3_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_104AssignVariableOp(assignvariableop_104_adam_dense_3_bias_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_105AssignVariableOp7assignvariableop_105_adam_layer_normalization_3_gamma_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_106AssignVariableOp6assignvariableop_106_adam_layer_normalization_3_beta_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_107AssignVariableOp*assignvariableop_107_adam_dense_4_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_108AssignVariableOp(assignvariableop_108_adam_dense_4_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_109AssignVariableOp*assignvariableop_109_adam_dense_5_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_110AssignVariableOp(assignvariableop_110_adam_dense_5_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_111AssignVariableOp=assignvariableop_111_adam_multi_head_attention_query_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_112AssignVariableOp;assignvariableop_112_adam_multi_head_attention_query_bias_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_113AssignVariableOp;assignvariableop_113_adam_multi_head_attention_key_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_114AssignVariableOp9assignvariableop_114_adam_multi_head_attention_key_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_115AssignVariableOp=assignvariableop_115_adam_multi_head_attention_value_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_116AssignVariableOp;assignvariableop_116_adam_multi_head_attention_value_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_117AssignVariableOpHassignvariableop_117_adam_multi_head_attention_attention_output_kernel_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_118AssignVariableOpFassignvariableop_118_adam_multi_head_attention_attention_output_bias_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_119AssignVariableOp?assignvariableop_119_adam_multi_head_attention_1_query_kernel_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_120AssignVariableOp=assignvariableop_120_adam_multi_head_attention_1_query_bias_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_121AssignVariableOp=assignvariableop_121_adam_multi_head_attention_1_key_kernel_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_122AssignVariableOp;assignvariableop_122_adam_multi_head_attention_1_key_bias_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_123AssignVariableOp?assignvariableop_123_adam_multi_head_attention_1_value_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_124AssignVariableOp=assignvariableop_124_adam_multi_head_attention_1_value_bias_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_125AssignVariableOpJassignvariableop_125_adam_multi_head_attention_1_attention_output_kernel_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_126AssignVariableOpHassignvariableop_126_adam_multi_head_attention_1_attention_output_bias_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Õ
Identity_127Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_128IdentityIdentity_127:output:0^NoOp_1*
T0*
_output_shapes
: Á
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_128Identity_128:output:0*
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262*
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
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
þ
^
B__inference_dropout_layer_call_and_return_conditional_losses_11298

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs

ë
6__inference_multi_head_attention_1_layer_call_fn_11480	
query	
value
unknown:!!
	unknown_0:!
	unknown_1:!!
	unknown_2:!
	unknown_3:!!
	unknown_4:!
	unknown_5:!!
	unknown_6:!
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_9077s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ!:ÿÿÿÿÿÿÿÿÿ!: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namevalue
À
W
+__inference_concatenate_layer_call_fn_11159
inputs_0
inputs_1
identityÄ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_8842d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/1

Ý
C__inference_time2_vec_layer_call_and_return_conditional_losses_8825
x%
readvariableop_resource:)
add_readvariableop_resource:+
mul_1_readvariableop_resource:+
add_1_readvariableop_resource:
identity¢Mul_1/ReadVariableOp¢ReadVariableOp¢add/ReadVariableOp¢add_1/ReadVariableOph
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ã
strided_sliceStridedSlicexstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_maska
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿw
MeanMeanstrided_slice:output:0Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0c
mulMulReadVariableOp:value:0Mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0c
addAddV2mul:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿp

ExpandDims
ExpandDimsadd:z:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
Mul_1/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
:*
dtype0k
Mul_1MulMean:output:0Mul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype0i
add_1AddV2	Mul_1:z:0add_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
SinSin	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿt
ExpandDims_1
ExpandDimsSin:y:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
concatConcatV2ExpandDims:output:0ExpandDims_1:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityconcat:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^Mul_1/ReadVariableOp^ReadVariableOp^add/ReadVariableOp^add_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : 2,
Mul_1/ReadVariableOpMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp:N J
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex
î

O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_9125

inputs3
%batchnorm_mul_readvariableop_resource:!/
!batchnorm_readvariableop_resource:!
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
»
Ð	
#__inference_signature_wrapper_11111
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:!!
	unknown_4:!
	unknown_5:!!
	unknown_6:!
	unknown_7:!!
	unknown_8:!
	unknown_9:!!

unknown_10:!

unknown_11:!

unknown_12:!

unknown_13:!@

unknown_14:@

unknown_15:@!

unknown_16:!

unknown_17:!

unknown_18:! 

unknown_19:!!

unknown_20:! 

unknown_21:!!

unknown_22:! 

unknown_23:!!

unknown_24:! 

unknown_25:!!

unknown_26:!

unknown_27:!

unknown_28:!

unknown_29:!@

unknown_30:@

unknown_31:@!

unknown_32:!

unknown_33:!

unknown_34:!

unknown_35:! 

unknown_36: 

unknown_37: 

unknown_38:
identity¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__wrapped_model_8776o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
ÿ
_
C__inference_dropout_1_layer_call_and_return_conditional_losses_9548

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
À

'__inference_dense_5_layer_call_fn_11789

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_9267o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
*
ú
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_11537	
query	
valueA
+query_einsum_einsum_readvariableop_resource:!!3
!query_add_readvariableop_resource:!?
)key_einsum_einsum_readvariableop_resource:!!1
key_add_readvariableop_resource:!A
+value_einsum_einsum_readvariableop_resource:!!3
!value_add_readvariableop_resource:!L
6attention_output_einsum_einsum_readvariableop_resource:!!:
,attention_output_add_readvariableop_resource:!
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0¬
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:!*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcd¨
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ø
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ!:ÿÿÿÿÿÿÿÿÿ!: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namevalue
g

?__inference_model_layer_call_and_return_conditional_losses_9274

inputs
time2_vec_8826:
time2_vec_8828:
time2_vec_8830:
time2_vec_8832:/
multi_head_attention_8880:!!+
multi_head_attention_8882:!/
multi_head_attention_8884:!!+
multi_head_attention_8886:!/
multi_head_attention_8888:!!+
multi_head_attention_8890:!/
multi_head_attention_8892:!!'
multi_head_attention_8894:!&
layer_normalization_8928:!&
layer_normalization_8930:!

dense_8965:!@

dense_8967:@
dense_1_9001:@!
dense_1_9003:!(
layer_normalization_1_9037:!(
layer_normalization_1_9039:!1
multi_head_attention_1_9078:!!-
multi_head_attention_1_9080:!1
multi_head_attention_1_9082:!!-
multi_head_attention_1_9084:!1
multi_head_attention_1_9086:!!-
multi_head_attention_1_9088:!1
multi_head_attention_1_9090:!!)
multi_head_attention_1_9092:!(
layer_normalization_2_9126:!(
layer_normalization_2_9128:!
dense_2_9163:!@
dense_2_9165:@
dense_3_9199:@!
dense_3_9201:!(
layer_normalization_3_9235:!(
layer_normalization_3_9237:!
dense_4_9252:! 
dense_4_9254: 
dense_5_9268: 
dense_5_9270:
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCall¢dense_5/StatefulPartitionedCall¢+layer_normalization/StatefulPartitionedCall¢-layer_normalization_1/StatefulPartitionedCall¢-layer_normalization_2/StatefulPartitionedCall¢-layer_normalization_3/StatefulPartitionedCall¢,multi_head_attention/StatefulPartitionedCall¢.multi_head_attention_1/StatefulPartitionedCall¢!time2_vec/StatefulPartitionedCall
!time2_vec/StatefulPartitionedCallStatefulPartitionedCallinputstime2_vec_8826time2_vec_8828time2_vec_8830time2_vec_8832*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_time2_vec_layer_call_and_return_conditional_losses_8825ð
concatenate/PartitionedCallPartitionedCallinputs*time2_vec/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_8842
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0$concatenate/PartitionedCall:output:0multi_head_attention_8880multi_head_attention_8882multi_head_attention_8884multi_head_attention_8886multi_head_attention_8888multi_head_attention_8890multi_head_attention_8892multi_head_attention_8894*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_8879ê
dropout/PartitionedCallPartitionedCall5multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8902¡
tf.__operators__.add/AddV2AddV2 dropout/PartitionedCall:output:0$concatenate/PartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!µ
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0layer_normalization_8928layer_normalization_8930*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_layer_normalization_layer_call_and_return_conditional_losses_8927
dense/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0
dense_8965
dense_8967*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8964
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_9001dense_1_9003*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_9000á
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_9011µ
tf.__operators__.add_1/AddV2AddV2"dropout_1/PartitionedCall:output:04layer_normalization/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¿
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_1/AddV2:z:0layer_normalization_1_9037layer_normalization_1_9039*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_9036Ì
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0multi_head_attention_1_9078multi_head_attention_1_9080multi_head_attention_1_9082multi_head_attention_1_9084multi_head_attention_1_9086multi_head_attention_1_9088multi_head_attention_1_9090multi_head_attention_1_9092*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_9077ð
dropout_2/PartitionedCallPartitionedCall7multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_9100·
tf.__operators__.add_2/AddV2AddV2"dropout_2/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¿
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_2/AddV2:z:0layer_normalization_2_9126layer_normalization_2_9128*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_9125
dense_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0dense_2_9163dense_2_9165*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_9162
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_9199dense_3_9201*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_9198á
dropout_3/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_9209·
tf.__operators__.add_3/AddV2AddV2"dropout_3/PartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¿
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_3/AddV2:z:0layer_normalization_3_9235layer_normalization_3_9237*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9234
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_8786
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_9252dense_4_9254*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_9251
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_9268dense_5_9270*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_9267w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall"^time2_vec/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2F
!time2_vec/StatefulPartitionedCall!time2_vec/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï

P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_11750

inputs3
%batchnorm_mul_readvariableop_resource:!/
!batchnorm_readvariableop_resource:!
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
È
ø
A__inference_dense_3_layer_call_and_return_conditional_losses_9198

inputs3
!tensordot_readvariableop_resource:@!-
biasadd_readvariableop_resource:!
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@!*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ![
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:!Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ª)
ù
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_9507	
query	
valueA
+query_einsum_einsum_readvariableop_resource:!!3
!query_add_readvariableop_resource:!?
)key_einsum_einsum_readvariableop_resource:!!1
key_add_readvariableop_resource:!A
+value_einsum_einsum_readvariableop_resource:!!3
!value_add_readvariableop_resource:!L
6attention_output_einsum_einsum_readvariableop_resource:!!:
,attention_output_add_readvariableop_resource:!
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0¬
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:!*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
einsum_1/EinsumEinsumsoftmax/Softmax:softmax:0value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcd¨
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ø
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ!:ÿÿÿÿÿÿÿÿÿ!: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namevalue

`
D__inference_dropout_1_layer_call_and_return_conditional_losses_11427

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
æ
a
C__inference_dropout_3_layer_call_and_return_conditional_losses_9209

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
æ
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_9100

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
Ä	
ò
A__inference_dense_4_layer_call_and_return_conditional_losses_9251

inputs0
matmul_readvariableop_resource:! -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:! *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
í

N__inference_layer_normalization_layer_call_and_return_conditional_losses_11329

inputs3
%batchnorm_mul_readvariableop_resource:!/
!batchnorm_readvariableop_resource:!
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
Ög
´
@__inference_model_layer_call_and_return_conditional_losses_10165
input_1
time2_vec_10061:
time2_vec_10063:
time2_vec_10065:
time2_vec_10067:0
multi_head_attention_10071:!!,
multi_head_attention_10073:!0
multi_head_attention_10075:!!,
multi_head_attention_10077:!0
multi_head_attention_10079:!!,
multi_head_attention_10081:!0
multi_head_attention_10083:!!(
multi_head_attention_10085:!'
layer_normalization_10090:!'
layer_normalization_10092:!
dense_10095:!@
dense_10097:@
dense_1_10100:@!
dense_1_10102:!)
layer_normalization_1_10107:!)
layer_normalization_1_10109:!2
multi_head_attention_1_10112:!!.
multi_head_attention_1_10114:!2
multi_head_attention_1_10116:!!.
multi_head_attention_1_10118:!2
multi_head_attention_1_10120:!!.
multi_head_attention_1_10122:!2
multi_head_attention_1_10124:!!*
multi_head_attention_1_10126:!)
layer_normalization_2_10131:!)
layer_normalization_2_10133:!
dense_2_10136:!@
dense_2_10138:@
dense_3_10141:@!
dense_3_10143:!)
layer_normalization_3_10148:!)
layer_normalization_3_10150:!
dense_4_10154:! 
dense_4_10156: 
dense_5_10159: 
dense_5_10161:
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCall¢dense_5/StatefulPartitionedCall¢+layer_normalization/StatefulPartitionedCall¢-layer_normalization_1/StatefulPartitionedCall¢-layer_normalization_2/StatefulPartitionedCall¢-layer_normalization_3/StatefulPartitionedCall¢,multi_head_attention/StatefulPartitionedCall¢.multi_head_attention_1/StatefulPartitionedCall¢!time2_vec/StatefulPartitionedCall
!time2_vec/StatefulPartitionedCallStatefulPartitionedCallinput_1time2_vec_10061time2_vec_10063time2_vec_10065time2_vec_10067*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_time2_vec_layer_call_and_return_conditional_losses_8825ñ
concatenate/PartitionedCallPartitionedCallinput_1*time2_vec/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_8842
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0$concatenate/PartitionedCall:output:0multi_head_attention_10071multi_head_attention_10073multi_head_attention_10075multi_head_attention_10077multi_head_attention_10079multi_head_attention_10081multi_head_attention_10083multi_head_attention_10085*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_8879ê
dropout/PartitionedCallPartitionedCall5multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8902¡
tf.__operators__.add/AddV2AddV2 dropout/PartitionedCall:output:0$concatenate/PartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!·
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0layer_normalization_10090layer_normalization_10092*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_layer_normalization_layer_call_and_return_conditional_losses_8927
dense/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0dense_10095dense_10097*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8964
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_10100dense_1_10102*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_9000á
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_9011µ
tf.__operators__.add_1/AddV2AddV2"dropout_1/PartitionedCall:output:04layer_normalization/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Á
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_1/AddV2:z:0layer_normalization_1_10107layer_normalization_1_10109*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_9036Ô
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0multi_head_attention_1_10112multi_head_attention_1_10114multi_head_attention_1_10116multi_head_attention_1_10118multi_head_attention_1_10120multi_head_attention_1_10122multi_head_attention_1_10124multi_head_attention_1_10126*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_9077ð
dropout_2/PartitionedCallPartitionedCall7multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_9100·
tf.__operators__.add_2/AddV2AddV2"dropout_2/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Á
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_2/AddV2:z:0layer_normalization_2_10131layer_normalization_2_10133*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_9125
dense_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0dense_2_10136dense_2_10138*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_9162
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_10141dense_3_10143*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_9198á
dropout_3/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_9209·
tf.__operators__.add_3/AddV2AddV2"dropout_3/PartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Á
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_3/AddV2:z:0layer_normalization_3_10148layer_normalization_3_10150*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9234
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_8786
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_10154dense_4_10156*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_9251
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_10159dense_5_10161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_9267w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall"^time2_vec/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2F
!time2_vec/StatefulPartitionedCall!time2_vec/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
«
C
'__inference_dropout_layer_call_fn_11289

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_9593d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
î

O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_9036

inputs3
%batchnorm_mul_readvariableop_resource:!/
!batchnorm_readvariableop_resource:!
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
É
ù
B__inference_dense_1_layer_call_and_return_conditional_losses_11408

inputs3
!tensordot_readvariableop_resource:@!-
biasadd_readvariableop_resource:!
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@!*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ![
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:!Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
*
ø
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_11245	
query	
valueA
+query_einsum_einsum_readvariableop_resource:!!3
!query_add_readvariableop_resource:!?
)key_einsum_einsum_readvariableop_resource:!!1
key_add_readvariableop_resource:!A
+value_einsum_einsum_readvariableop_resource:!!3
!value_add_readvariableop_resource:!L
6attention_output_einsum_einsum_readvariableop_resource:!!:
,attention_output_add_readvariableop_resource:!
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0¬
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:!*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcd¨
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ø
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ!:ÿÿÿÿÿÿÿÿÿ!: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namevalue
¯
E
)__inference_dropout_2_layer_call_fn_11581

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_9444d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
û
T
8__inference_global_average_pooling1d_layer_call_fn_11755

inputs
identityÉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_8786i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À

'__inference_dense_4_layer_call_fn_11770

inputs
unknown:! 
	unknown_0: 
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_9251o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
æ
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_9011

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
ì

M__inference_layer_normalization_layer_call_and_return_conditional_losses_8927

inputs3
%batchnorm_mul_readvariableop_resource:!/
!batchnorm_readvariableop_resource:!
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
Å	
ó
B__inference_dense_4_layer_call_and_return_conditional_losses_11780

inputs0
matmul_readvariableop_resource:! -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:! *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs

÷
@__inference_dense_layer_call_and_return_conditional_losses_11369

inputs3
!tensordot_readvariableop_resource:!@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:!@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
«)
ú
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_11571	
query	
valueA
+query_einsum_einsum_readvariableop_resource:!!3
!query_add_readvariableop_resource:!?
)key_einsum_einsum_readvariableop_resource:!!1
key_add_readvariableop_resource:!A
+value_einsum_einsum_readvariableop_resource:!!3
!value_add_readvariableop_resource:!L
6attention_output_einsum_einsum_readvariableop_resource:!!:
,attention_output_add_readvariableop_resource:!
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0¬
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:!*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
einsum_1/EinsumEinsumsoftmax/Softmax:softmax:0value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcd¨
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ø
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ!:ÿÿÿÿÿÿÿÿÿ!: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namevalue

Þ
D__inference_time2_vec_layer_call_and_return_conditional_losses_11153
x%
readvariableop_resource:)
add_readvariableop_resource:+
mul_1_readvariableop_resource:+
add_1_readvariableop_resource:
identity¢Mul_1/ReadVariableOp¢ReadVariableOp¢add/ReadVariableOp¢add_1/ReadVariableOph
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ã
strided_sliceStridedSlicexstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_maska
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿw
MeanMeanstrided_slice:output:0Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0c
mulMulReadVariableOp:value:0Mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype0c
addAddV2mul:z:0add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿp

ExpandDims
ExpandDimsadd:z:0ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
Mul_1/ReadVariableOpReadVariableOpmul_1_readvariableop_resource*
_output_shapes
:*
dtype0k
Mul_1MulMean:output:0Mul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype0i
add_1AddV2	Mul_1:z:0add_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
SinSin	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿt
ExpandDims_1
ExpandDimsSin:y:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
concatConcatV2ExpandDims:output:0ExpandDims_1:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityconcat:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^Mul_1/ReadVariableOp^ReadVariableOp^add/ReadVariableOp^add_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : 2,
Mul_1/ReadVariableOpMul_1/ReadVariableOp2 
ReadVariableOpReadVariableOp2(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp:N J
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex
¯
E
)__inference_dropout_1_layer_call_fn_11418

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_9548d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
è

5__inference_layer_normalization_2_layer_call_fn_11599

inputs
unknown:!
	unknown_0:!
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_9125s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
¡
ù
B__inference_dense_2_layer_call_and_return_conditional_losses_11661

inputs3
!tensordot_readvariableop_resource:!@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:!@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs

n
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_8786

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_11715

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
É
ù
B__inference_dense_3_layer_call_and_return_conditional_losses_11700

inputs3
!tensordot_readvariableop_resource:@!-
biasadd_readvariableop_resource:!
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@!*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ![
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:!Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:!*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!c
IdentityIdentityBiasAdd:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ý

é
4__inference_multi_head_attention_layer_call_fn_11210	
query	
value
unknown:!!
	unknown_0:!
	unknown_1:!!
	unknown_2:!
	unknown_3:!!
	unknown_4:!
	unknown_5:!!
	unknown_6:!
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_9656s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ!:ÿÿÿÿÿÿÿÿÿ!: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namevalue

`
D__inference_dropout_2_layer_call_and_return_conditional_losses_11590

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
Ú
Ñ	
%__inference_model_layer_call_fn_10363

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:!!
	unknown_4:!
	unknown_5:!!
	unknown_6:!
	unknown_7:!!
	unknown_8:!
	unknown_9:!!

unknown_10:!

unknown_11:!

unknown_12:!

unknown_13:!@

unknown_14:@

unknown_15:@!

unknown_16:!

unknown_17:!

unknown_18:! 

unknown_19:!!

unknown_20:! 

unknown_21:!!

unknown_22:! 

unknown_23:!!

unknown_24:! 

unknown_25:!!

unknown_26:!

unknown_27:!

unknown_28:!

unknown_29:!@

unknown_30:@

unknown_31:@!

unknown_32:!

unknown_33:!

unknown_34:!

unknown_35:! 

unknown_36: 

unknown_37: 

unknown_38:
identity¢StatefulPartitionedCallâ
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
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_9274o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ
_
C__inference_dropout_2_layer_call_and_return_conditional_losses_9444

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
¡ù
å=
__inference__traced_save_12203
file_prefix0
,savev2_time2_vec_wei_per_read_readvariableop1
-savev2_time2_vec_bias_per_read_readvariableop0
,savev2_time2_vec_wei_lin_read_readvariableop1
-savev2_time2_vec_bias_lin_read_readvariableop8
4savev2_layer_normalization_gamma_read_readvariableop7
3savev2_layer_normalization_beta_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop:
6savev2_layer_normalization_1_gamma_read_readvariableop9
5savev2_layer_normalization_1_beta_read_readvariableop:
6savev2_layer_normalization_2_gamma_read_readvariableop9
5savev2_layer_normalization_2_beta_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop:
6savev2_layer_normalization_3_gamma_read_readvariableop9
5savev2_layer_normalization_3_beta_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop@
<savev2_multi_head_attention_query_kernel_read_readvariableop>
:savev2_multi_head_attention_query_bias_read_readvariableop>
:savev2_multi_head_attention_key_kernel_read_readvariableop<
8savev2_multi_head_attention_key_bias_read_readvariableop@
<savev2_multi_head_attention_value_kernel_read_readvariableop>
:savev2_multi_head_attention_value_bias_read_readvariableopK
Gsavev2_multi_head_attention_attention_output_kernel_read_readvariableopI
Esavev2_multi_head_attention_attention_output_bias_read_readvariableopB
>savev2_multi_head_attention_1_query_kernel_read_readvariableop@
<savev2_multi_head_attention_1_query_bias_read_readvariableop@
<savev2_multi_head_attention_1_key_kernel_read_readvariableop>
:savev2_multi_head_attention_1_key_bias_read_readvariableopB
>savev2_multi_head_attention_1_value_kernel_read_readvariableop@
<savev2_multi_head_attention_1_value_bias_read_readvariableopM
Isavev2_multi_head_attention_1_attention_output_kernel_read_readvariableopK
Gsavev2_multi_head_attention_1_attention_output_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop7
3savev2_adam_time2_vec_wei_per_m_read_readvariableop8
4savev2_adam_time2_vec_bias_per_m_read_readvariableop7
3savev2_adam_time2_vec_wei_lin_m_read_readvariableop8
4savev2_adam_time2_vec_bias_lin_m_read_readvariableop?
;savev2_adam_layer_normalization_gamma_m_read_readvariableop>
:savev2_adam_layer_normalization_beta_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableopA
=savev2_adam_layer_normalization_1_gamma_m_read_readvariableop@
<savev2_adam_layer_normalization_1_beta_m_read_readvariableopA
=savev2_adam_layer_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_layer_normalization_2_beta_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopA
=savev2_adam_layer_normalization_3_gamma_m_read_readvariableop@
<savev2_adam_layer_normalization_3_beta_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableopG
Csavev2_adam_multi_head_attention_query_kernel_m_read_readvariableopE
Asavev2_adam_multi_head_attention_query_bias_m_read_readvariableopE
Asavev2_adam_multi_head_attention_key_kernel_m_read_readvariableopC
?savev2_adam_multi_head_attention_key_bias_m_read_readvariableopG
Csavev2_adam_multi_head_attention_value_kernel_m_read_readvariableopE
Asavev2_adam_multi_head_attention_value_bias_m_read_readvariableopR
Nsavev2_adam_multi_head_attention_attention_output_kernel_m_read_readvariableopP
Lsavev2_adam_multi_head_attention_attention_output_bias_m_read_readvariableopI
Esavev2_adam_multi_head_attention_1_query_kernel_m_read_readvariableopG
Csavev2_adam_multi_head_attention_1_query_bias_m_read_readvariableopG
Csavev2_adam_multi_head_attention_1_key_kernel_m_read_readvariableopE
Asavev2_adam_multi_head_attention_1_key_bias_m_read_readvariableopI
Esavev2_adam_multi_head_attention_1_value_kernel_m_read_readvariableopG
Csavev2_adam_multi_head_attention_1_value_bias_m_read_readvariableopT
Psavev2_adam_multi_head_attention_1_attention_output_kernel_m_read_readvariableopR
Nsavev2_adam_multi_head_attention_1_attention_output_bias_m_read_readvariableop7
3savev2_adam_time2_vec_wei_per_v_read_readvariableop8
4savev2_adam_time2_vec_bias_per_v_read_readvariableop7
3savev2_adam_time2_vec_wei_lin_v_read_readvariableop8
4savev2_adam_time2_vec_bias_lin_v_read_readvariableop?
;savev2_adam_layer_normalization_gamma_v_read_readvariableop>
:savev2_adam_layer_normalization_beta_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableopA
=savev2_adam_layer_normalization_1_gamma_v_read_readvariableop@
<savev2_adam_layer_normalization_1_beta_v_read_readvariableopA
=savev2_adam_layer_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_layer_normalization_2_beta_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableopA
=savev2_adam_layer_normalization_3_gamma_v_read_readvariableop@
<savev2_adam_layer_normalization_3_beta_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableopG
Csavev2_adam_multi_head_attention_query_kernel_v_read_readvariableopE
Asavev2_adam_multi_head_attention_query_bias_v_read_readvariableopE
Asavev2_adam_multi_head_attention_key_kernel_v_read_readvariableopC
?savev2_adam_multi_head_attention_key_bias_v_read_readvariableopG
Csavev2_adam_multi_head_attention_value_kernel_v_read_readvariableopE
Asavev2_adam_multi_head_attention_value_bias_v_read_readvariableopR
Nsavev2_adam_multi_head_attention_attention_output_kernel_v_read_readvariableopP
Lsavev2_adam_multi_head_attention_attention_output_bias_v_read_readvariableopI
Esavev2_adam_multi_head_attention_1_query_kernel_v_read_readvariableopG
Csavev2_adam_multi_head_attention_1_query_bias_v_read_readvariableopG
Csavev2_adam_multi_head_attention_1_key_kernel_v_read_readvariableopE
Asavev2_adam_multi_head_attention_1_key_bias_v_read_readvariableopI
Esavev2_adam_multi_head_attention_1_value_kernel_v_read_readvariableopG
Csavev2_adam_multi_head_attention_1_value_bias_v_read_readvariableopT
Psavev2_adam_multi_head_attention_1_attention_output_kernel_v_read_readvariableopR
Nsavev2_adam_multi_head_attention_1_attention_output_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ×C
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*ÿB
valueõBBòBB7layer_with_weights-0/wei_per/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/bias_per/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-0/wei_lin/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/bias_lin/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/wei_per/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/bias_per/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/wei_lin/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/bias_lin/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/wei_per/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/bias_per/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/wei_lin/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/bias_lin/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-10/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHò
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:*
dtype0*
valueBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ±;
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_time2_vec_wei_per_read_readvariableop-savev2_time2_vec_bias_per_read_readvariableop,savev2_time2_vec_wei_lin_read_readvariableop-savev2_time2_vec_bias_lin_read_readvariableop4savev2_layer_normalization_gamma_read_readvariableop3savev2_layer_normalization_beta_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop6savev2_layer_normalization_1_gamma_read_readvariableop5savev2_layer_normalization_1_beta_read_readvariableop6savev2_layer_normalization_2_gamma_read_readvariableop5savev2_layer_normalization_2_beta_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop6savev2_layer_normalization_3_gamma_read_readvariableop5savev2_layer_normalization_3_beta_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop<savev2_multi_head_attention_query_kernel_read_readvariableop:savev2_multi_head_attention_query_bias_read_readvariableop:savev2_multi_head_attention_key_kernel_read_readvariableop8savev2_multi_head_attention_key_bias_read_readvariableop<savev2_multi_head_attention_value_kernel_read_readvariableop:savev2_multi_head_attention_value_bias_read_readvariableopGsavev2_multi_head_attention_attention_output_kernel_read_readvariableopEsavev2_multi_head_attention_attention_output_bias_read_readvariableop>savev2_multi_head_attention_1_query_kernel_read_readvariableop<savev2_multi_head_attention_1_query_bias_read_readvariableop<savev2_multi_head_attention_1_key_kernel_read_readvariableop:savev2_multi_head_attention_1_key_bias_read_readvariableop>savev2_multi_head_attention_1_value_kernel_read_readvariableop<savev2_multi_head_attention_1_value_bias_read_readvariableopIsavev2_multi_head_attention_1_attention_output_kernel_read_readvariableopGsavev2_multi_head_attention_1_attention_output_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop3savev2_adam_time2_vec_wei_per_m_read_readvariableop4savev2_adam_time2_vec_bias_per_m_read_readvariableop3savev2_adam_time2_vec_wei_lin_m_read_readvariableop4savev2_adam_time2_vec_bias_lin_m_read_readvariableop;savev2_adam_layer_normalization_gamma_m_read_readvariableop:savev2_adam_layer_normalization_beta_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop=savev2_adam_layer_normalization_1_gamma_m_read_readvariableop<savev2_adam_layer_normalization_1_beta_m_read_readvariableop=savev2_adam_layer_normalization_2_gamma_m_read_readvariableop<savev2_adam_layer_normalization_2_beta_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop=savev2_adam_layer_normalization_3_gamma_m_read_readvariableop<savev2_adam_layer_normalization_3_beta_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableopCsavev2_adam_multi_head_attention_query_kernel_m_read_readvariableopAsavev2_adam_multi_head_attention_query_bias_m_read_readvariableopAsavev2_adam_multi_head_attention_key_kernel_m_read_readvariableop?savev2_adam_multi_head_attention_key_bias_m_read_readvariableopCsavev2_adam_multi_head_attention_value_kernel_m_read_readvariableopAsavev2_adam_multi_head_attention_value_bias_m_read_readvariableopNsavev2_adam_multi_head_attention_attention_output_kernel_m_read_readvariableopLsavev2_adam_multi_head_attention_attention_output_bias_m_read_readvariableopEsavev2_adam_multi_head_attention_1_query_kernel_m_read_readvariableopCsavev2_adam_multi_head_attention_1_query_bias_m_read_readvariableopCsavev2_adam_multi_head_attention_1_key_kernel_m_read_readvariableopAsavev2_adam_multi_head_attention_1_key_bias_m_read_readvariableopEsavev2_adam_multi_head_attention_1_value_kernel_m_read_readvariableopCsavev2_adam_multi_head_attention_1_value_bias_m_read_readvariableopPsavev2_adam_multi_head_attention_1_attention_output_kernel_m_read_readvariableopNsavev2_adam_multi_head_attention_1_attention_output_bias_m_read_readvariableop3savev2_adam_time2_vec_wei_per_v_read_readvariableop4savev2_adam_time2_vec_bias_per_v_read_readvariableop3savev2_adam_time2_vec_wei_lin_v_read_readvariableop4savev2_adam_time2_vec_bias_lin_v_read_readvariableop;savev2_adam_layer_normalization_gamma_v_read_readvariableop:savev2_adam_layer_normalization_beta_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop=savev2_adam_layer_normalization_1_gamma_v_read_readvariableop<savev2_adam_layer_normalization_1_beta_v_read_readvariableop=savev2_adam_layer_normalization_2_gamma_v_read_readvariableop<savev2_adam_layer_normalization_2_beta_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop=savev2_adam_layer_normalization_3_gamma_v_read_readvariableop<savev2_adam_layer_normalization_3_beta_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopCsavev2_adam_multi_head_attention_query_kernel_v_read_readvariableopAsavev2_adam_multi_head_attention_query_bias_v_read_readvariableopAsavev2_adam_multi_head_attention_key_kernel_v_read_readvariableop?savev2_adam_multi_head_attention_key_bias_v_read_readvariableopCsavev2_adam_multi_head_attention_value_kernel_v_read_readvariableopAsavev2_adam_multi_head_attention_value_bias_v_read_readvariableopNsavev2_adam_multi_head_attention_attention_output_kernel_v_read_readvariableopLsavev2_adam_multi_head_attention_attention_output_bias_v_read_readvariableopEsavev2_adam_multi_head_attention_1_query_kernel_v_read_readvariableopCsavev2_adam_multi_head_attention_1_query_bias_v_read_readvariableopCsavev2_adam_multi_head_attention_1_key_kernel_v_read_readvariableopAsavev2_adam_multi_head_attention_1_key_bias_v_read_readvariableopEsavev2_adam_multi_head_attention_1_value_kernel_v_read_readvariableopCsavev2_adam_multi_head_attention_1_value_bias_v_read_readvariableopPsavev2_adam_multi_head_attention_1_attention_output_kernel_v_read_readvariableopNsavev2_adam_multi_head_attention_1_attention_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ç
_input_shapesµ
²: :::::!:!:!@:@:@!:!:!:!:!:!:!@:@:@!:!:!:!:! : : :: : : : : :!!:!:!!:!:!!:!:!!:!:!!:!:!!:!:!!:!:!!:!: : :::::!:!:!@:@:@!:!:!:!:!:!:!@:@:@!:!:!:!:! : : ::!!:!:!!:!:!!:!:!!:!:!!:!:!!:!:!!:!:!!:!:::::!:!:!@:@:@!:!:!:!:!:!:!@:@:@!:!:!:!:! : : ::!!:!:!!:!:!!:!:!!:!:!!:!:!!:!:!!:!:!!:!: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:!: 

_output_shapes
:!:$ 

_output_shapes

:!@: 

_output_shapes
:@:$	 

_output_shapes

:@!: 


_output_shapes
:!: 

_output_shapes
:!: 

_output_shapes
:!: 

_output_shapes
:!: 

_output_shapes
:!:$ 

_output_shapes

:!@: 

_output_shapes
:@:$ 

_output_shapes

:@!: 

_output_shapes
:!: 

_output_shapes
:!: 

_output_shapes
:!:$ 

_output_shapes

:! : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :
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
: :($
"
_output_shapes
:!!:$ 

_output_shapes

:!:( $
"
_output_shapes
:!!:$! 

_output_shapes

:!:("$
"
_output_shapes
:!!:$# 

_output_shapes

:!:($$
"
_output_shapes
:!!: %

_output_shapes
:!:(&$
"
_output_shapes
:!!:$' 

_output_shapes

:!:(($
"
_output_shapes
:!!:$) 

_output_shapes

:!:(*$
"
_output_shapes
:!!:$+ 

_output_shapes

:!:(,$
"
_output_shapes
:!!: -

_output_shapes
:!:.

_output_shapes
: :/

_output_shapes
: : 0

_output_shapes
:: 1

_output_shapes
:: 2

_output_shapes
:: 3

_output_shapes
:: 4

_output_shapes
:!: 5

_output_shapes
:!:$6 

_output_shapes

:!@: 7

_output_shapes
:@:$8 

_output_shapes

:@!: 9

_output_shapes
:!: :

_output_shapes
:!: ;

_output_shapes
:!: <

_output_shapes
:!: =

_output_shapes
:!:$> 

_output_shapes

:!@: ?

_output_shapes
:@:$@ 

_output_shapes

:@!: A

_output_shapes
:!: B

_output_shapes
:!: C

_output_shapes
:!:$D 

_output_shapes

:! : E

_output_shapes
: :$F 

_output_shapes

: : G

_output_shapes
::(H$
"
_output_shapes
:!!:$I 

_output_shapes

:!:(J$
"
_output_shapes
:!!:$K 

_output_shapes

:!:(L$
"
_output_shapes
:!!:$M 

_output_shapes

:!:(N$
"
_output_shapes
:!!: O

_output_shapes
:!:(P$
"
_output_shapes
:!!:$Q 

_output_shapes

:!:(R$
"
_output_shapes
:!!:$S 

_output_shapes

:!:(T$
"
_output_shapes
:!!:$U 

_output_shapes

:!:(V$
"
_output_shapes
:!!: W

_output_shapes
:!: X

_output_shapes
:: Y

_output_shapes
:: Z

_output_shapes
:: [

_output_shapes
:: \

_output_shapes
:!: ]

_output_shapes
:!:$^ 

_output_shapes

:!@: _

_output_shapes
:@:$` 

_output_shapes

:@!: a

_output_shapes
:!: b

_output_shapes
:!: c

_output_shapes
:!: d

_output_shapes
:!: e

_output_shapes
:!:$f 

_output_shapes

:!@: g

_output_shapes
:@:$h 

_output_shapes

:@!: i

_output_shapes
:!: j

_output_shapes
:!: k

_output_shapes
:!:$l 

_output_shapes

:! : m

_output_shapes
: :$n 

_output_shapes

: : o

_output_shapes
::(p$
"
_output_shapes
:!!:$q 

_output_shapes

:!:(r$
"
_output_shapes
:!!:$s 

_output_shapes

:!:(t$
"
_output_shapes
:!!:$u 

_output_shapes

:!:(v$
"
_output_shapes
:!!: w

_output_shapes
:!:(x$
"
_output_shapes
:!!:$y 

_output_shapes

:!:(z$
"
_output_shapes
:!!:${ 

_output_shapes

:!:(|$
"
_output_shapes
:!!:$} 

_output_shapes

:!:(~$
"
_output_shapes
:!!: 

_output_shapes
:!:

_output_shapes
: 
è

5__inference_layer_normalization_1_layer_call_fn_11436

inputs
unknown:!
	unknown_0:!
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_9036s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
è

5__inference_layer_normalization_3_layer_call_fn_11728

inputs
unknown:!
	unknown_0:!
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9234s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
¯
E
)__inference_dropout_3_layer_call_fn_11710

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_9399d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs

ö
?__inference_dense_layer_call_and_return_conditional_losses_8964

inputs3
!tensordot_readvariableop_resource:!@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:!@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
g

?__inference_model_layer_call_and_return_conditional_losses_9890

inputs
time2_vec_9786:
time2_vec_9788:
time2_vec_9790:
time2_vec_9792:/
multi_head_attention_9796:!!+
multi_head_attention_9798:!/
multi_head_attention_9800:!!+
multi_head_attention_9802:!/
multi_head_attention_9804:!!+
multi_head_attention_9806:!/
multi_head_attention_9808:!!'
multi_head_attention_9810:!&
layer_normalization_9815:!&
layer_normalization_9817:!

dense_9820:!@

dense_9822:@
dense_1_9825:@!
dense_1_9827:!(
layer_normalization_1_9832:!(
layer_normalization_1_9834:!1
multi_head_attention_1_9837:!!-
multi_head_attention_1_9839:!1
multi_head_attention_1_9841:!!-
multi_head_attention_1_9843:!1
multi_head_attention_1_9845:!!-
multi_head_attention_1_9847:!1
multi_head_attention_1_9849:!!)
multi_head_attention_1_9851:!(
layer_normalization_2_9856:!(
layer_normalization_2_9858:!
dense_2_9861:!@
dense_2_9863:@
dense_3_9866:@!
dense_3_9868:!(
layer_normalization_3_9873:!(
layer_normalization_3_9875:!
dense_4_9879:! 
dense_4_9881: 
dense_5_9884: 
dense_5_9886:
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCall¢dense_5/StatefulPartitionedCall¢+layer_normalization/StatefulPartitionedCall¢-layer_normalization_1/StatefulPartitionedCall¢-layer_normalization_2/StatefulPartitionedCall¢-layer_normalization_3/StatefulPartitionedCall¢,multi_head_attention/StatefulPartitionedCall¢.multi_head_attention_1/StatefulPartitionedCall¢!time2_vec/StatefulPartitionedCall
!time2_vec/StatefulPartitionedCallStatefulPartitionedCallinputstime2_vec_9786time2_vec_9788time2_vec_9790time2_vec_9792*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_time2_vec_layer_call_and_return_conditional_losses_8825ð
concatenate/PartitionedCallPartitionedCallinputs*time2_vec/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_8842
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0$concatenate/PartitionedCall:output:0multi_head_attention_9796multi_head_attention_9798multi_head_attention_9800multi_head_attention_9802multi_head_attention_9804multi_head_attention_9806multi_head_attention_9808multi_head_attention_9810*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_9656ê
dropout/PartitionedCallPartitionedCall5multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_9593¡
tf.__operators__.add/AddV2AddV2 dropout/PartitionedCall:output:0$concatenate/PartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!µ
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0layer_normalization_9815layer_normalization_9817*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_layer_normalization_layer_call_and_return_conditional_losses_8927
dense/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0
dense_9820
dense_9822*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8964
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_9825dense_1_9827*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_9000á
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_9548µ
tf.__operators__.add_1/AddV2AddV2"dropout_1/PartitionedCall:output:04layer_normalization/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¿
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_1/AddV2:z:0layer_normalization_1_9832layer_normalization_1_9834*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_9036Ì
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0multi_head_attention_1_9837multi_head_attention_1_9839multi_head_attention_1_9841multi_head_attention_1_9843multi_head_attention_1_9845multi_head_attention_1_9847multi_head_attention_1_9849multi_head_attention_1_9851*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_9507ð
dropout_2/PartitionedCallPartitionedCall7multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_9444·
tf.__operators__.add_2/AddV2AddV2"dropout_2/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¿
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_2/AddV2:z:0layer_normalization_2_9856layer_normalization_2_9858*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_9125
dense_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0dense_2_9861dense_2_9863*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_9162
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_9866dense_3_9868*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_9198á
dropout_3/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_9399·
tf.__operators__.add_3/AddV2AddV2"dropout_3/PartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¿
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_3/AddV2:z:0layer_normalization_3_9873layer_normalization_3_9875*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9234
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_8786
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_9879dense_4_9881*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_9251
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_9884dense_5_9886*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_9267w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall"^time2_vec/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2F
!time2_vec/StatefulPartitionedCall!time2_vec/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý
Ò	
%__inference_model_layer_call_fn_10058
input_1
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:!!
	unknown_4:!
	unknown_5:!!
	unknown_6:!
	unknown_7:!!
	unknown_8:!
	unknown_9:!!

unknown_10:!

unknown_11:!

unknown_12:!

unknown_13:!@

unknown_14:@

unknown_15:@!

unknown_16:!

unknown_17:!

unknown_18:! 

unknown_19:!!

unknown_20:! 

unknown_21:!!

unknown_22:! 

unknown_23:!!

unknown_24:! 

unknown_25:!!

unknown_26:!

unknown_27:!

unknown_28:!

unknown_29:!@

unknown_30:@

unknown_31:@!

unknown_32:!

unknown_33:!

unknown_34:!

unknown_35:! 

unknown_36: 

unknown_37: 

unknown_38:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*J
_read_only_resource_inputs,
*(	
 !"#$%&'(*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_9890o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
ï

P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_11621

inputs3
%batchnorm_mul_readvariableop_resource:!/
!batchnorm_readvariableop_resource:!
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
 
ø
A__inference_dense_2_layer_call_and_return_conditional_losses_9162

inputs3
!tensordot_readvariableop_resource:!@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:!@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
À
%
@__inference_model_layer_call_and_return_conditional_losses_10739

inputs/
!time2_vec_readvariableop_resource:3
%time2_vec_add_readvariableop_resource:5
'time2_vec_mul_1_readvariableop_resource:5
'time2_vec_add_1_readvariableop_resource:V
@multi_head_attention_query_einsum_einsum_readvariableop_resource:!!H
6multi_head_attention_query_add_readvariableop_resource:!T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:!!F
4multi_head_attention_key_add_readvariableop_resource:!V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:!!H
6multi_head_attention_value_add_readvariableop_resource:!a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:!!O
Amulti_head_attention_attention_output_add_readvariableop_resource:!G
9layer_normalization_batchnorm_mul_readvariableop_resource:!C
5layer_normalization_batchnorm_readvariableop_resource:!9
'dense_tensordot_readvariableop_resource:!@3
%dense_biasadd_readvariableop_resource:@;
)dense_1_tensordot_readvariableop_resource:@!5
'dense_1_biasadd_readvariableop_resource:!I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:!E
7layer_normalization_1_batchnorm_readvariableop_resource:!X
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:!!J
8multi_head_attention_1_query_add_readvariableop_resource:!V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:!!H
6multi_head_attention_1_key_add_readvariableop_resource:!X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:!!J
8multi_head_attention_1_value_add_readvariableop_resource:!c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:!!Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:!I
;layer_normalization_2_batchnorm_mul_readvariableop_resource:!E
7layer_normalization_2_batchnorm_readvariableop_resource:!;
)dense_2_tensordot_readvariableop_resource:!@5
'dense_2_biasadd_readvariableop_resource:@;
)dense_3_tensordot_readvariableop_resource:@!5
'dense_3_biasadd_readvariableop_resource:!I
;layer_normalization_3_batchnorm_mul_readvariableop_resource:!E
7layer_normalization_3_batchnorm_readvariableop_resource:!8
&dense_4_matmul_readvariableop_resource:! 5
'dense_4_biasadd_readvariableop_resource: 8
&dense_5_matmul_readvariableop_resource: 5
'dense_5_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/Tensordot/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢ dense_1/Tensordot/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢ dense_2/Tensordot/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢ dense_3/Tensordot/ReadVariableOp¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOp¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOp¢,layer_normalization/batchnorm/ReadVariableOp¢0layer_normalization/batchnorm/mul/ReadVariableOp¢.layer_normalization_1/batchnorm/ReadVariableOp¢2layer_normalization_1/batchnorm/mul/ReadVariableOp¢.layer_normalization_2/batchnorm/ReadVariableOp¢2layer_normalization_2/batchnorm/mul/ReadVariableOp¢.layer_normalization_3/batchnorm/ReadVariableOp¢2layer_normalization_3/batchnorm/mul/ReadVariableOp¢8multi_head_attention/attention_output/add/ReadVariableOp¢Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp¢+multi_head_attention/key/add/ReadVariableOp¢5multi_head_attention/key/einsum/Einsum/ReadVariableOp¢-multi_head_attention/query/add/ReadVariableOp¢7multi_head_attention/query/einsum/Einsum/ReadVariableOp¢-multi_head_attention/value/add/ReadVariableOp¢7multi_head_attention/value/einsum/Einsum/ReadVariableOp¢:multi_head_attention_1/attention_output/add/ReadVariableOp¢Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_1/key/add/ReadVariableOp¢7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_1/query/add/ReadVariableOp¢9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_1/value/add/ReadVariableOp¢9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp¢time2_vec/Mul_1/ReadVariableOp¢time2_vec/ReadVariableOp¢time2_vec/add/ReadVariableOp¢time2_vec/add_1/ReadVariableOpr
time2_vec/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            t
time2_vec/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            t
time2_vec/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
time2_vec/strided_sliceStridedSliceinputs&time2_vec/strided_slice/stack:output:0(time2_vec/strided_slice/stack_1:output:0(time2_vec/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_maskk
 time2_vec/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
time2_vec/MeanMean time2_vec/strided_slice:output:0)time2_vec/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
time2_vec/ReadVariableOpReadVariableOp!time2_vec_readvariableop_resource*
_output_shapes
:*
dtype0
time2_vec/mulMul time2_vec/ReadVariableOp:value:0time2_vec/Mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
time2_vec/add/ReadVariableOpReadVariableOp%time2_vec_add_readvariableop_resource*
_output_shapes
:*
dtype0
time2_vec/addAddV2time2_vec/mul:z:0$time2_vec/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
time2_vec/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
time2_vec/ExpandDims
ExpandDimstime2_vec/add:z:0!time2_vec/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
time2_vec/Mul_1/ReadVariableOpReadVariableOp'time2_vec_mul_1_readvariableop_resource*
_output_shapes
:*
dtype0
time2_vec/Mul_1Multime2_vec/Mean:output:0&time2_vec/Mul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
time2_vec/add_1/ReadVariableOpReadVariableOp'time2_vec_add_1_readvariableop_resource*
_output_shapes
:*
dtype0
time2_vec/add_1AddV2time2_vec/Mul_1:z:0&time2_vec/add_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
time2_vec/SinSintime2_vec/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
time2_vec/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
time2_vec/ExpandDims_1
ExpandDimstime2_vec/Sin:y:0#time2_vec/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
time2_vec/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ»
time2_vec/concatConcatV2time2_vec/ExpandDims:output:0time2_vec/ExpandDims_1:output:0time2_vec/concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¢
concatenate/concatConcatV2inputstime2_vec/concat:output:0 concatenate/concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¼
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0ð
(multi_head_attention/query/einsum/EinsumEinsumconcatenate/concat:output:0?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde¤
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:!*
dtype0Ë
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0ì
&multi_head_attention/key/einsum/EinsumEinsumconcatenate/concat:output:0=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde 
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:!*
dtype0Å
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¼
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0ð
(multi_head_attention/value/einsum/EinsumEinsumconcatenate/concat:output:0?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde¤
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:!*
dtype0Ë
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>¢
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Î
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%multi_head_attention/dropout/IdentityIdentity.multi_head_attention/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/dropout/Identity:output:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcdÒ
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abe¶
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0è
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dropout/IdentityIdentity-multi_head_attention/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
tf.__operators__.add/AddV2AddV2dropout/Identity:output:0concatenate/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ì
 layer_normalization/moments/meanMeantf.__operators__.add/AddV2:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿË
-layer_normalization/moments/SquaredDifferenceSquaredDifferencetf.__operators__.add/AddV2:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ç
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75½
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0Á
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!§
#layer_normalization/batchnorm/mul_1Multf.__operators__.add/AddV2:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!²
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0½
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!²
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:!@*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ´
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¦
dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`

dense/ReluReludense/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:@!*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:!a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!n
dropout_1/IdentityIdentitydense_1/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¡
tf.__operators__.add_1/AddV2AddV2dropout_1/Identity:output:0'layer_normalization/batchnorm/add_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ò
"layer_normalization_1/moments/meanMean tf.__operators__.add_1/AddV2:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference tf.__operators__.add_1/AddV2:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0Ç
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!­
%layer_normalization_1/batchnorm/mul_1Mul tf.__operators__.add_1/AddV2:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¢
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0Ã
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!À
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0
*multi_head_attention_1/query/einsum/EinsumEinsum)layer_normalization_1/batchnorm/add_1:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde¨
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:!*
dtype0Ñ
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¼
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0þ
(multi_head_attention_1/key/einsum/EinsumEinsum)layer_normalization_1/batchnorm/add_1:z:0?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde¤
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:!*
dtype0Ë
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!À
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0
*multi_head_attention_1/value/einsum/EinsumEinsum)layer_normalization_1/batchnorm/add_1:z:0Amulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde¨
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:!*
dtype0Ñ
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>¨
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ô
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abeº
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0î
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dropout_2/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!£
tf.__operators__.add_2/AddV2AddV2dropout_2/Identity:output:0)layer_normalization_1/batchnorm/add_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ò
"layer_normalization_2/moments/meanMean tf.__operators__.add_2/AddV2:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
/layer_normalization_2/moments/SquaredDifferenceSquaredDifference tf.__operators__.add_2/AddV2:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0Ç
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!­
%layer_normalization_2/batchnorm/mul_1Mul tf.__operators__.add_2/AddV2:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¢
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0Ã
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

:!@*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_2/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¬
dense_2/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¢
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:@!*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_3/Tensordot/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/transpose	Transposedense_2/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!c
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:!a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!n
dropout_3/IdentityIdentitydense_3/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!£
tf.__operators__.add_3/AddV2AddV2dropout_3/Identity:output:0)layer_normalization_2/batchnorm/add_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ò
"layer_normalization_3/moments/meanMean tf.__operators__.add_3/AddV2:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference tf.__operators__.add_3/AddV2:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0Ç
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!­
%layer_normalization_3/batchnorm/mul_1Mul tf.__operators__.add_3/AddV2:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¢
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0Ã
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :¼
global_average_pooling1d/MeanMean)layer_normalization_3/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:! *
dtype0
dense_4/MatMulMatMul&global_average_pooling1d/Mean:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_5/MatMulMatMuldense_4/BiasAdd:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp^time2_vec/Mul_1/ReadVariableOp^time2_vec/ReadVariableOp^time2_vec/add/ReadVariableOp^time2_vec/add_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2@
time2_vec/Mul_1/ReadVariableOptime2_vec/Mul_1/ReadVariableOp24
time2_vec/ReadVariableOptime2_vec/ReadVariableOp2<
time2_vec/add/ReadVariableOptime2_vec/add/ReadVariableOp2@
time2_vec/add_1/ReadVariableOptime2_vec/add_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä	
ò
A__inference_dense_5_layer_call_and_return_conditional_losses_9267

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ög
´
@__inference_model_layer_call_and_return_conditional_losses_10272
input_1
time2_vec_10168:
time2_vec_10170:
time2_vec_10172:
time2_vec_10174:0
multi_head_attention_10178:!!,
multi_head_attention_10180:!0
multi_head_attention_10182:!!,
multi_head_attention_10184:!0
multi_head_attention_10186:!!,
multi_head_attention_10188:!0
multi_head_attention_10190:!!(
multi_head_attention_10192:!'
layer_normalization_10197:!'
layer_normalization_10199:!
dense_10202:!@
dense_10204:@
dense_1_10207:@!
dense_1_10209:!)
layer_normalization_1_10214:!)
layer_normalization_1_10216:!2
multi_head_attention_1_10219:!!.
multi_head_attention_1_10221:!2
multi_head_attention_1_10223:!!.
multi_head_attention_1_10225:!2
multi_head_attention_1_10227:!!.
multi_head_attention_1_10229:!2
multi_head_attention_1_10231:!!*
multi_head_attention_1_10233:!)
layer_normalization_2_10238:!)
layer_normalization_2_10240:!
dense_2_10243:!@
dense_2_10245:@
dense_3_10248:@!
dense_3_10250:!)
layer_normalization_3_10255:!)
layer_normalization_3_10257:!
dense_4_10261:! 
dense_4_10263: 
dense_5_10266: 
dense_5_10268:
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dense_4/StatefulPartitionedCall¢dense_5/StatefulPartitionedCall¢+layer_normalization/StatefulPartitionedCall¢-layer_normalization_1/StatefulPartitionedCall¢-layer_normalization_2/StatefulPartitionedCall¢-layer_normalization_3/StatefulPartitionedCall¢,multi_head_attention/StatefulPartitionedCall¢.multi_head_attention_1/StatefulPartitionedCall¢!time2_vec/StatefulPartitionedCall
!time2_vec/StatefulPartitionedCallStatefulPartitionedCallinput_1time2_vec_10168time2_vec_10170time2_vec_10172time2_vec_10174*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_time2_vec_layer_call_and_return_conditional_losses_8825ñ
concatenate/PartitionedCallPartitionedCallinput_1*time2_vec/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_concatenate_layer_call_and_return_conditional_losses_8842
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0$concatenate/PartitionedCall:output:0multi_head_attention_10178multi_head_attention_10180multi_head_attention_10182multi_head_attention_10184multi_head_attention_10186multi_head_attention_10188multi_head_attention_10190multi_head_attention_10192*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *W
fRRP
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_9656ê
dropout/PartitionedCallPartitionedCall5multi_head_attention/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_9593¡
tf.__operators__.add/AddV2AddV2 dropout/PartitionedCall:output:0$concatenate/PartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!·
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCalltf.__operators__.add/AddV2:z:0layer_normalization_10197layer_normalization_10199*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_layer_normalization_layer_call_and_return_conditional_losses_8927
dense/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:0dense_10202dense_10204*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8964
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_10207dense_1_10209*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_9000á
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_9548µ
tf.__operators__.add_1/AddV2AddV2"dropout_1/PartitionedCall:output:04layer_normalization/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Á
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_1/AddV2:z:0layer_normalization_1_10214layer_normalization_1_10216*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_1_layer_call_and_return_conditional_losses_9036Ô
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0multi_head_attention_1_10219multi_head_attention_1_10221multi_head_attention_1_10223multi_head_attention_1_10225multi_head_attention_1_10227multi_head_attention_1_10229multi_head_attention_1_10231multi_head_attention_1_10233*
Tin
2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!**
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *Y
fTRR
P__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_9507ð
dropout_2/PartitionedCallPartitionedCall7multi_head_attention_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_9444·
tf.__operators__.add_2/AddV2AddV2"dropout_2/PartitionedCall:output:06layer_normalization_1/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Á
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_2/AddV2:z:0layer_normalization_2_10238layer_normalization_2_10240*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_2_layer_call_and_return_conditional_losses_9125
dense_2/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:0dense_2_10243dense_2_10245*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_9162
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_10248dense_3_10250*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_9198á
dropout_3/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_9399·
tf.__operators__.add_3/AddV2AddV2"dropout_3/PartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Á
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCall tf.__operators__.add_3/AddV2:z:0layer_normalization_3_10255layer_normalization_3_10257*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *X
fSRQ
O__inference_layer_normalization_3_layer_call_and_return_conditional_losses_9234
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *[
fVRT
R__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_8786
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_10261dense_4_10263*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_4_layer_call_and_return_conditional_losses_9251
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_10266dense_5_10268*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_5_layer_call_and_return_conditional_losses_9267w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÒ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall"^time2_vec/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2F
!time2_vec/StatefulPartitionedCall!time2_vec/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¶ÿ
%
@__inference_model_layer_call_and_return_conditional_losses_11024

inputs/
!time2_vec_readvariableop_resource:3
%time2_vec_add_readvariableop_resource:5
'time2_vec_mul_1_readvariableop_resource:5
'time2_vec_add_1_readvariableop_resource:V
@multi_head_attention_query_einsum_einsum_readvariableop_resource:!!H
6multi_head_attention_query_add_readvariableop_resource:!T
>multi_head_attention_key_einsum_einsum_readvariableop_resource:!!F
4multi_head_attention_key_add_readvariableop_resource:!V
@multi_head_attention_value_einsum_einsum_readvariableop_resource:!!H
6multi_head_attention_value_add_readvariableop_resource:!a
Kmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource:!!O
Amulti_head_attention_attention_output_add_readvariableop_resource:!G
9layer_normalization_batchnorm_mul_readvariableop_resource:!C
5layer_normalization_batchnorm_readvariableop_resource:!9
'dense_tensordot_readvariableop_resource:!@3
%dense_biasadd_readvariableop_resource:@;
)dense_1_tensordot_readvariableop_resource:@!5
'dense_1_biasadd_readvariableop_resource:!I
;layer_normalization_1_batchnorm_mul_readvariableop_resource:!E
7layer_normalization_1_batchnorm_readvariableop_resource:!X
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:!!J
8multi_head_attention_1_query_add_readvariableop_resource:!V
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:!!H
6multi_head_attention_1_key_add_readvariableop_resource:!X
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:!!J
8multi_head_attention_1_value_add_readvariableop_resource:!c
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:!!Q
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:!I
;layer_normalization_2_batchnorm_mul_readvariableop_resource:!E
7layer_normalization_2_batchnorm_readvariableop_resource:!;
)dense_2_tensordot_readvariableop_resource:!@5
'dense_2_biasadd_readvariableop_resource:@;
)dense_3_tensordot_readvariableop_resource:@!5
'dense_3_biasadd_readvariableop_resource:!I
;layer_normalization_3_batchnorm_mul_readvariableop_resource:!E
7layer_normalization_3_batchnorm_readvariableop_resource:!8
&dense_4_matmul_readvariableop_resource:! 5
'dense_4_biasadd_readvariableop_resource: 8
&dense_5_matmul_readvariableop_resource: 5
'dense_5_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/Tensordot/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢ dense_1/Tensordot/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢ dense_2/Tensordot/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢ dense_3/Tensordot/ReadVariableOp¢dense_4/BiasAdd/ReadVariableOp¢dense_4/MatMul/ReadVariableOp¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOp¢,layer_normalization/batchnorm/ReadVariableOp¢0layer_normalization/batchnorm/mul/ReadVariableOp¢.layer_normalization_1/batchnorm/ReadVariableOp¢2layer_normalization_1/batchnorm/mul/ReadVariableOp¢.layer_normalization_2/batchnorm/ReadVariableOp¢2layer_normalization_2/batchnorm/mul/ReadVariableOp¢.layer_normalization_3/batchnorm/ReadVariableOp¢2layer_normalization_3/batchnorm/mul/ReadVariableOp¢8multi_head_attention/attention_output/add/ReadVariableOp¢Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp¢+multi_head_attention/key/add/ReadVariableOp¢5multi_head_attention/key/einsum/Einsum/ReadVariableOp¢-multi_head_attention/query/add/ReadVariableOp¢7multi_head_attention/query/einsum/Einsum/ReadVariableOp¢-multi_head_attention/value/add/ReadVariableOp¢7multi_head_attention/value/einsum/Einsum/ReadVariableOp¢:multi_head_attention_1/attention_output/add/ReadVariableOp¢Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp¢-multi_head_attention_1/key/add/ReadVariableOp¢7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp¢/multi_head_attention_1/query/add/ReadVariableOp¢9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp¢/multi_head_attention_1/value/add/ReadVariableOp¢9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp¢time2_vec/Mul_1/ReadVariableOp¢time2_vec/ReadVariableOp¢time2_vec/add/ReadVariableOp¢time2_vec/add_1/ReadVariableOpr
time2_vec/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            t
time2_vec/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            t
time2_vec/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
time2_vec/strided_sliceStridedSliceinputs&time2_vec/strided_slice/stack:output:0(time2_vec/strided_slice/stack_1:output:0(time2_vec/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_maskk
 time2_vec/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
time2_vec/MeanMean time2_vec/strided_slice:output:0)time2_vec/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
time2_vec/ReadVariableOpReadVariableOp!time2_vec_readvariableop_resource*
_output_shapes
:*
dtype0
time2_vec/mulMul time2_vec/ReadVariableOp:value:0time2_vec/Mean:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
time2_vec/add/ReadVariableOpReadVariableOp%time2_vec_add_readvariableop_resource*
_output_shapes
:*
dtype0
time2_vec/addAddV2time2_vec/mul:z:0$time2_vec/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
time2_vec/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
time2_vec/ExpandDims
ExpandDimstime2_vec/add:z:0!time2_vec/ExpandDims/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
time2_vec/Mul_1/ReadVariableOpReadVariableOp'time2_vec_mul_1_readvariableop_resource*
_output_shapes
:*
dtype0
time2_vec/Mul_1Multime2_vec/Mean:output:0&time2_vec/Mul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
time2_vec/add_1/ReadVariableOpReadVariableOp'time2_vec_add_1_readvariableop_resource*
_output_shapes
:*
dtype0
time2_vec/add_1AddV2time2_vec/Mul_1:z:0&time2_vec/add_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
time2_vec/SinSintime2_vec/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
time2_vec/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
time2_vec/ExpandDims_1
ExpandDimstime2_vec/Sin:y:0#time2_vec/ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
time2_vec/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ»
time2_vec/concatConcatV2time2_vec/ExpandDims:output:0time2_vec/ExpandDims_1:output:0time2_vec/concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¢
concatenate/concatConcatV2inputstime2_vec/concat:output:0 concatenate/concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¼
7multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0ð
(multi_head_attention/query/einsum/EinsumEinsumconcatenate/concat:output:0?multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde¤
-multi_head_attention/query/add/ReadVariableOpReadVariableOp6multi_head_attention_query_add_readvariableop_resource*
_output_shapes

:!*
dtype0Ë
multi_head_attention/query/addAddV21multi_head_attention/query/einsum/Einsum:output:05multi_head_attention/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
5multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOp>multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0ì
&multi_head_attention/key/einsum/EinsumEinsumconcatenate/concat:output:0=multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde 
+multi_head_attention/key/add/ReadVariableOpReadVariableOp4multi_head_attention_key_add_readvariableop_resource*
_output_shapes

:!*
dtype0Å
multi_head_attention/key/addAddV2/multi_head_attention/key/einsum/Einsum:output:03multi_head_attention/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¼
7multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0ð
(multi_head_attention/value/einsum/EinsumEinsumconcatenate/concat:output:0?multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde¤
-multi_head_attention/value/add/ReadVariableOpReadVariableOp6multi_head_attention_value_add_readvariableop_resource*
_output_shapes

:!*
dtype0Ë
multi_head_attention/value/addAddV21multi_head_attention/value/einsum/Einsum:output:05multi_head_attention/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!_
multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>¢
multi_head_attention/MulMul"multi_head_attention/query/add:z:0#multi_head_attention/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Î
"multi_head_attention/einsum/EinsumEinsum multi_head_attention/key/add:z:0multi_head_attention/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe
$multi_head_attention/softmax/SoftmaxSoftmax+multi_head_attention/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿä
$multi_head_attention/einsum_1/EinsumEinsum.multi_head_attention/softmax/Softmax:softmax:0"multi_head_attention/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcdÒ
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpKmulti_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0
3multi_head_attention/attention_output/einsum/EinsumEinsum-multi_head_attention/einsum_1/Einsum:output:0Jmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abe¶
8multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpAmulti_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0è
)multi_head_attention/attention_output/addAddV2<multi_head_attention/attention_output/einsum/Einsum:output:0@multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¥
tf.__operators__.add/AddV2AddV2-multi_head_attention/attention_output/add:z:0concatenate/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!|
2layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ì
 layer_normalization/moments/meanMeantf.__operators__.add/AddV2:z:0;layer_normalization/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(
(layer_normalization/moments/StopGradientStopGradient)layer_normalization/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿË
-layer_normalization/moments/SquaredDifferenceSquaredDifferencetf.__operators__.add/AddV2:z:01layer_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
6layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ç
$layer_normalization/moments/varianceMean1layer_normalization/moments/SquaredDifference:z:0?layer_normalization/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(h
#layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75½
!layer_normalization/batchnorm/addAddV2-layer_normalization/moments/variance:output:0,layer_normalization/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#layer_normalization/batchnorm/RsqrtRsqrt%layer_normalization/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0Á
!layer_normalization/batchnorm/mulMul'layer_normalization/batchnorm/Rsqrt:y:08layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!§
#layer_normalization/batchnorm/mul_1Multf.__operators__.add/AddV2:z:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!²
#layer_normalization/batchnorm/mul_2Mul)layer_normalization/moments/mean:output:0%layer_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
,layer_normalization/batchnorm/ReadVariableOpReadVariableOp5layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0½
!layer_normalization/batchnorm/subSub4layer_normalization/batchnorm/ReadVariableOp:value:0'layer_normalization/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!²
#layer_normalization/batchnorm/add_1AddV2'layer_normalization/batchnorm/mul_1:z:0%layer_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource*
_output_shapes

:!@*
dtype0^
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:e
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       l
dense/Tensordot/ShapeShape'layer_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:_
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ×
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:_
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: a
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ]
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ´
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¦
dense/Tensordot/transpose	Transpose'layer_normalization/batchnorm/add_1:z:0dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@_
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`

dense/ReluReludense/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_1/Tensordot/ReadVariableOpReadVariableOp)dense_1_tensordot_readvariableop_resource*
_output_shapes

:@!*
dtype0`
dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       _
dense_1/Tensordot/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:a
dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_1/Tensordot/GatherV2GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/free:output:0(dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_1/Tensordot/GatherV2_1GatherV2 dense_1/Tensordot/Shape:output:0dense_1/Tensordot/axes:output:0*dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/ProdProd#dense_1/Tensordot/GatherV2:output:0 dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_1/Tensordot/Prod_1Prod%dense_1/Tensordot/GatherV2_1:output:0"dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_1/Tensordot/concatConcatV2dense_1/Tensordot/free:output:0dense_1/Tensordot/axes:output:0&dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/stackPackdense_1/Tensordot/Prod:output:0!dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_1/Tensordot/transpose	Transposedense/Relu:activations:0!dense_1/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
dense_1/Tensordot/ReshapeReshapedense_1/Tensordot/transpose:y:0 dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_1/Tensordot/MatMulMatMul"dense_1/Tensordot/Reshape:output:0(dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!c
dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:!a
dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_1/Tensordot/concat_1ConcatV2#dense_1/Tensordot/GatherV2:output:0"dense_1/Tensordot/Const_2:output:0(dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_1/TensordotReshape"dense_1/Tensordot/MatMul:product:0#dense_1/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0
dense_1/BiasAddBiasAdddense_1/Tensordot:output:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
tf.__operators__.add_1/AddV2AddV2dense_1/BiasAdd:output:0'layer_normalization/batchnorm/add_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!~
4layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ò
"layer_normalization_1/moments/meanMean tf.__operators__.add_1/AddV2:z:0=layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(
*layer_normalization_1/moments/StopGradientStopGradient+layer_normalization_1/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
/layer_normalization_1/moments/SquaredDifferenceSquaredDifference tf.__operators__.add_1/AddV2:z:03layer_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
8layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_1/moments/varianceMean3layer_normalization_1/moments/SquaredDifference:z:0Alayer_normalization_1/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(j
%layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_1/batchnorm/addAddV2/layer_normalization_1/moments/variance:output:0.layer_normalization_1/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%layer_normalization_1/batchnorm/RsqrtRsqrt'layer_normalization_1/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
2layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0Ç
#layer_normalization_1/batchnorm/mulMul)layer_normalization_1/batchnorm/Rsqrt:y:0:layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!­
%layer_normalization_1/batchnorm/mul_1Mul tf.__operators__.add_1/AddV2:z:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
%layer_normalization_1/batchnorm/mul_2Mul+layer_normalization_1/moments/mean:output:0'layer_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¢
.layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0Ã
#layer_normalization_1/batchnorm/subSub6layer_normalization_1/batchnorm/ReadVariableOp:value:0)layer_normalization_1/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
%layer_normalization_1/batchnorm/add_1AddV2)layer_normalization_1/batchnorm/mul_1:z:0'layer_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!À
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0
*multi_head_attention_1/query/einsum/EinsumEinsum)layer_normalization_1/batchnorm/add_1:z:0Amulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde¨
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

:!*
dtype0Ñ
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¼
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0þ
(multi_head_attention_1/key/einsum/EinsumEinsum)layer_normalization_1/batchnorm/add_1:z:0?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde¤
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

:!*
dtype0Ë
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!À
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0
*multi_head_attention_1/value/einsum/EinsumEinsum)layer_normalization_1/batchnorm/add_1:z:0Amulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abde¨
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

:!*
dtype0Ñ
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>¨
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ô
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbe
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/softmax/Softmax:softmax:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcdÖ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abeº
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0î
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!·
tf.__operators__.add_2/AddV2AddV2/multi_head_attention_1/attention_output/add:z:0)layer_normalization_1/batchnorm/add_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!~
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ò
"layer_normalization_2/moments/meanMean tf.__operators__.add_2/AddV2:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
/layer_normalization_2/moments/SquaredDifferenceSquaredDifference tf.__operators__.add_2/AddV2:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(j
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0Ç
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!­
%layer_normalization_2/batchnorm/mul_1Mul tf.__operators__.add_2/AddV2:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¢
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0Ã
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

:!@*
dtype0`
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       p
dense_2/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:a
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:¬
dense_2/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¢
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@a
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:@!*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       a
dense_3/Tensordot/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ¼
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_3/Tensordot/transpose	Transposedense_2/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¢
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!c
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:!a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ç
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:!*
dtype0
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ! 
tf.__operators__.add_3/AddV2AddV2dense_3/BiasAdd:output:0)layer_normalization_2/batchnorm/add_1:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!~
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ò
"layer_normalization_3/moments/meanMean tf.__operators__.add_3/AddV2:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference tf.__operators__.add_3/AddV2:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:í
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(j
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Ã
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0Ç
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!­
%layer_normalization_3/batchnorm/mul_1Mul tf.__operators__.add_3/AddV2:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¢
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0Ã
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!¸
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!q
/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :¼
global_average_pooling1d/MeanMean)layer_normalization_3/batchnorm/add_1:z:08global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:! *
dtype0
dense_4/MatMulMatMul&global_average_pooling1d/Mean:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_5/MatMulMatMuldense_4/BiasAdd:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp!^dense_1/Tensordot/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp-^layer_normalization/batchnorm/ReadVariableOp1^layer_normalization/batchnorm/mul/ReadVariableOp/^layer_normalization_1/batchnorm/ReadVariableOp3^layer_normalization_1/batchnorm/mul/ReadVariableOp/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp9^multi_head_attention/attention_output/add/ReadVariableOpC^multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp,^multi_head_attention/key/add/ReadVariableOp6^multi_head_attention/key/einsum/Einsum/ReadVariableOp.^multi_head_attention/query/add/ReadVariableOp8^multi_head_attention/query/einsum/Einsum/ReadVariableOp.^multi_head_attention/value/add/ReadVariableOp8^multi_head_attention/value/einsum/Einsum/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp^time2_vec/Mul_1/ReadVariableOp^time2_vec/ReadVariableOp^time2_vec/add/ReadVariableOp^time2_vec/add_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*z
_input_shapesi
g:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2D
 dense_1/Tensordot/ReadVariableOp dense_1/Tensordot/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2\
,layer_normalization/batchnorm/ReadVariableOp,layer_normalization/batchnorm/ReadVariableOp2d
0layer_normalization/batchnorm/mul/ReadVariableOp0layer_normalization/batchnorm/mul/ReadVariableOp2`
.layer_normalization_1/batchnorm/ReadVariableOp.layer_normalization_1/batchnorm/ReadVariableOp2h
2layer_normalization_1/batchnorm/mul/ReadVariableOp2layer_normalization_1/batchnorm/mul/ReadVariableOp2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2t
8multi_head_attention/attention_output/add/ReadVariableOp8multi_head_attention/attention_output/add/ReadVariableOp2
Bmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOpBmulti_head_attention/attention_output/einsum/Einsum/ReadVariableOp2Z
+multi_head_attention/key/add/ReadVariableOp+multi_head_attention/key/add/ReadVariableOp2n
5multi_head_attention/key/einsum/Einsum/ReadVariableOp5multi_head_attention/key/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/query/add/ReadVariableOp-multi_head_attention/query/add/ReadVariableOp2r
7multi_head_attention/query/einsum/Einsum/ReadVariableOp7multi_head_attention/query/einsum/Einsum/ReadVariableOp2^
-multi_head_attention/value/add/ReadVariableOp-multi_head_attention/value/add/ReadVariableOp2r
7multi_head_attention/value/einsum/Einsum/ReadVariableOp7multi_head_attention/value/einsum/Einsum/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2@
time2_vec/Mul_1/ReadVariableOptime2_vec/Mul_1/ReadVariableOp24
time2_vec/ReadVariableOptime2_vec/ReadVariableOp2<
time2_vec/add/ReadVariableOptime2_vec/add/ReadVariableOp2@
time2_vec/add_1/ReadVariableOptime2_vec/add_1/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý
]
A__inference_dropout_layer_call_and_return_conditional_losses_9593

inputs
identityR
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
ï

P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_11458

inputs3
%batchnorm_mul_readvariableop_resource:!/
!batchnorm_readvariableop_resource:!
identity¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(q
moments/StopGradientStopGradientmoments/mean:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:«
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!g
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:!*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!v
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!f
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs

¿
)__inference_time2_vec_layer_call_fn_11124
x
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_time2_vec_layer_call_and_return_conditional_losses_8825s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

_user_specified_namex
¯
E
)__inference_dropout_2_layer_call_fn_11576

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_9100d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
ç
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_11586

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
¯
E
)__inference_dropout_3_layer_call_fn_11705

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_dropout_3_layer_call_and_return_conditional_losses_9209d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
¨)
÷
N__inference_multi_head_attention_layer_call_and_return_conditional_losses_9656	
query	
valueA
+query_einsum_einsum_readvariableop_resource:!!3
!query_add_readvariableop_resource:!?
)key_einsum_einsum_readvariableop_resource:!!1
key_add_readvariableop_resource:!A
+value_einsum_einsum_readvariableop_resource:!!3
!value_add_readvariableop_resource:!L
6attention_output_einsum_einsum_readvariableop_resource:!!:
,attention_output_add_readvariableop_resource:!
identity¢#attention_output/add/ReadVariableOp¢-attention_output/einsum/Einsum/ReadVariableOp¢key/add/ReadVariableOp¢ key/einsum/Einsum/ReadVariableOp¢query/add/ReadVariableOp¢"query/einsum/Einsum/ReadVariableOp¢value/add/ReadVariableOp¢"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0¬
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

:!*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0°
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

:!*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *jA2>c
MulMulquery/add:z:0Mul/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
equationaecd,abcd->acbel
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
einsum_1/EinsumEinsumsoftmax/Softmax:softmax:0value/add:z:0*
N*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationacbe,aecd->abcd¨
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:!!*
dtype0Õ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:!*
dtype0©
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!k
IdentityIdentityattention_output/add:z:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!Ø
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:ÿÿÿÿÿÿÿÿÿ!:ÿÿÿÿÿÿÿÿÿ!: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:R N
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namequery:RN
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!

_user_specified_namevalue
Ì

%__inference_dense_layer_call_fn_11338

inputs
unknown:!@
	unknown_0:@
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_8964s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
«
C
'__inference_dropout_layer_call_fn_11284

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_8902d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
ä
_
A__inference_dropout_layer_call_and_return_conditional_losses_8902

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
ä

3__inference_layer_normalization_layer_call_fn_11307

inputs
unknown:!
	unknown_0:!
identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_layer_normalization_layer_call_and_return_conditional_losses_8927s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs
å
`
B__inference_dropout_layer_call_and_return_conditional_losses_11294

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ!:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ!
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*®
serving_default
?
input_14
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ;
dense_50
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:òè
þ
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer-13
layer-14
layer_with_weights-7
layer-15
layer_with_weights-8
layer-16
layer_with_weights-9
layer-17
layer-18
layer-19
layer_with_weights-10
layer-20
layer-21
layer_with_weights-11
layer-22
layer_with_weights-12
layer-23
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _default_save_signature
!
signatures"
_tf_keras_network
"
_tf_keras_input_layer
û
"wei_per
"wp
#bias_per
#bp
$wei_lin
$wl
%bias_lin
%bl
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer

2_query_dense
3
_key_dense
4_value_dense
5_softmax
6_dropout_layer
7_output_dense
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
(
E	keras_api"
_tf_keras_layer
Ä
Faxis
	Ggamma
Hbeta
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Okernel
Pbias
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Wkernel
Xbias
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c_random_generator
d__call__
*e&call_and_return_all_conditional_losses"
_tf_keras_layer
(
f	keras_api"
_tf_keras_layer
Ä
gaxis
	hgamma
ibeta
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_layer

p_query_dense
q
_key_dense
r_value_dense
s_softmax
t_dropout_layer
u_output_dense
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
¿
|	variables
}trainable_variables
~regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
)
	keras_api"
_tf_keras_layer
Í
	axis

gamma
	beta
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
 	keras_api
¡_random_generator
¢__call__
+£&call_and_return_all_conditional_losses"
_tf_keras_layer
)
¤	keras_api"
_tf_keras_layer
Í
	¥axis

¦gamma
	§beta
¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses"
_tf_keras_layer
«
®	variables
¯trainable_variables
°regularization_losses
±	keras_api
²__call__
+³&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
´kernel
	µbias
¶	variables
·trainable_variables
¸regularization_losses
¹	keras_api
º__call__
+»&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
¼kernel
	½bias
¾	variables
¿trainable_variables
Àregularization_losses
Á	keras_api
Â__call__
+Ã&call_and_return_all_conditional_losses"
_tf_keras_layer
°
	Äiter
Åbeta_1
Æbeta_2

Çdecay
Èlearning_rate"mÙ#mÚ$mÛ%mÜGmÝHmÞOmßPmàWmáXmâhmãimä	må	mæ	mç	mè	mé	mê	¦më	§mì	´mí	µmî	¼mï	½mð	Émñ	Êmò	Ëmó	Ìmô	Ímõ	Îmö	Ïm÷	Ðmø	Ñmù	Òmú	Ómû	Ômü	Õmý	Ömþ	×mÿ	Øm"v#v$v%vGvHvOvPvWvXvhviv	v	v	v	v	v	v	¦v	§v	´v	µv	¼v	½v	Év	Êv	Ëv	Ìv	Ív	Îv	Ïv	Ðv 	Ñv¡	Òv¢	Óv£	Ôv¤	Õv¥	Öv¦	×v§	Øv¨"
	optimizer
ò
"0
#1
$2
%3
É4
Ê5
Ë6
Ì7
Í8
Î9
Ï10
Ð11
G12
H13
O14
P15
W16
X17
h18
i19
Ñ20
Ò21
Ó22
Ô23
Õ24
Ö25
×26
Ø27
28
29
30
31
32
33
¦34
§35
´36
µ37
¼38
½39"
trackable_list_wrapper
ò
"0
#1
$2
%3
É4
Ê5
Ë6
Ì7
Í8
Î9
Ï10
Ð11
G12
H13
O14
P15
W16
X17
h18
i19
Ñ20
Ò21
Ó22
Ô23
Õ24
Ö25
×26
Ø27
28
29
30
31
32
33
¦34
§35
´36
µ37
¼38
½39"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
Ùnon_trainable_variables
Úlayers
Ûmetrics
 Ülayer_regularization_losses
Ýlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
 _default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
á2Þ
$__inference_model_layer_call_fn_9357
%__inference_model_layer_call_fn_10363
%__inference_model_layer_call_fn_10448
%__inference_model_layer_call_fn_10058À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
@__inference_model_layer_call_and_return_conditional_losses_10739
@__inference_model_layer_call_and_return_conditional_losses_11024
@__inference_model_layer_call_and_return_conditional_losses_10165
@__inference_model_layer_call_and_return_conditional_losses_10272À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÊBÇ
__inference__wrapped_model_8776input_1"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
-
Þserving_default"
signature_map
:2time2_vec/wei_per
 :2time2_vec/bias_per
:2time2_vec/wei_lin
 :2time2_vec/bias_lin
<
"0
#1
$2
%3"
trackable_list_wrapper
<
"0
#1
$2
%3"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ßnon_trainable_variables
àlayers
ámetrics
 âlayer_regularization_losses
ãlayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
Î2Ë
)__inference_time2_vec_layer_call_fn_11124
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
é2æ
D__inference_time2_vec_layer_call_and_return_conditional_losses_11153
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
änon_trainable_variables
ålayers
æmetrics
 çlayer_regularization_losses
èlayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_concatenate_layer_call_fn_11159¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_concatenate_layer_call_and_return_conditional_losses_11166¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ö
épartial_output_shape
êfull_output_shape
Ékernel
	Êbias
ë	variables
ìtrainable_variables
íregularization_losses
î	keras_api
ï__call__
+ð&call_and_return_all_conditional_losses"
_tf_keras_layer
ö
ñpartial_output_shape
òfull_output_shape
Ëkernel
	Ìbias
ó	variables
ôtrainable_variables
õregularization_losses
ö	keras_api
÷__call__
+ø&call_and_return_all_conditional_losses"
_tf_keras_layer
ö
ùpartial_output_shape
úfull_output_shape
Íkernel
	Îbias
û	variables
ütrainable_variables
ýregularization_losses
þ	keras_api
ÿ__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ö
partial_output_shape
full_output_shape
Ïkernel
	Ðbias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
`
É0
Ê1
Ë2
Ì3
Í4
Î5
Ï6
Ð7"
trackable_list_wrapper
`
É0
Ê1
Ë2
Ì3
Í4
Î5
Ï6
Ð7"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
î2ë
4__inference_multi_head_attention_layer_call_fn_11188
4__inference_multi_head_attention_layer_call_fn_11210ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¤2¡
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_11245
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_11279ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
'__inference_dropout_layer_call_fn_11284
'__inference_dropout_layer_call_fn_11289´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Â2¿
B__inference_dropout_layer_call_and_return_conditional_losses_11294
B__inference_dropout_layer_call_and_return_conditional_losses_11298´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
 "
trackable_list_wrapper
':%!2layer_normalization/gamma
&:$!2layer_normalization/beta
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
 non_trainable_variables
¡layers
¢metrics
 £layer_regularization_losses
¤layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
Ý2Ú
3__inference_layer_normalization_layer_call_fn_11307¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ø2õ
N__inference_layer_normalization_layer_call_and_return_conditional_losses_11329¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:!@2dense/kernel
:@2
dense/bias
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¥non_trainable_variables
¦layers
§metrics
 ¨layer_regularization_losses
©layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
Ï2Ì
%__inference_dense_layer_call_fn_11338¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_dense_layer_call_and_return_conditional_losses_11369¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 :@!2dense_1/kernel
:!2dense_1/bias
.
W0
X1"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ªnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
®layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_1_layer_call_fn_11378¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_1_layer_call_and_return_conditional_losses_11408¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¯non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
_	variables
`trainable_variables
aregularization_losses
d__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
)__inference_dropout_1_layer_call_fn_11413
)__inference_dropout_1_layer_call_fn_11418´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_dropout_1_layer_call_and_return_conditional_losses_11423
D__inference_dropout_1_layer_call_and_return_conditional_losses_11427´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
 "
trackable_list_wrapper
):'!2layer_normalization_1/gamma
(:&!2layer_normalization_1/beta
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
´non_trainable_variables
µlayers
¶metrics
 ·layer_regularization_losses
¸layer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
ß2Ü
5__inference_layer_normalization_1_layer_call_fn_11436¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ú2÷
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_11458¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ö
¹partial_output_shape
ºfull_output_shape
Ñkernel
	Òbias
»	variables
¼trainable_variables
½regularization_losses
¾	keras_api
¿__call__
+À&call_and_return_all_conditional_losses"
_tf_keras_layer
ö
Ápartial_output_shape
Âfull_output_shape
Ókernel
	Ôbias
Ã	variables
Ätrainable_variables
Åregularization_losses
Æ	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses"
_tf_keras_layer
ö
Épartial_output_shape
Êfull_output_shape
Õkernel
	Öbias
Ë	variables
Ìtrainable_variables
Íregularization_losses
Î	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses"
_tf_keras_layer
«
Ñ	variables
Òtrainable_variables
Óregularization_losses
Ô	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
×	variables
Øtrainable_variables
Ùregularization_losses
Ú	keras_api
Û_random_generator
Ü__call__
+Ý&call_and_return_all_conditional_losses"
_tf_keras_layer
ö
Þpartial_output_shape
ßfull_output_shape
×kernel
	Øbias
à	variables
átrainable_variables
âregularization_losses
ã	keras_api
ä__call__
+å&call_and_return_all_conditional_losses"
_tf_keras_layer
`
Ñ0
Ò1
Ó2
Ô3
Õ4
Ö5
×6
Ø7"
trackable_list_wrapper
`
Ñ0
Ò1
Ó2
Ô3
Õ4
Ö5
×6
Ø7"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ænon_trainable_variables
çlayers
èmetrics
 élayer_regularization_losses
êlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
ò2ï
6__inference_multi_head_attention_1_layer_call_fn_11480
6__inference_multi_head_attention_1_layer_call_fn_11502ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
¨2¥
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_11537
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_11571ü
ó²ï
FullArgSpece
args]Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ënon_trainable_variables
ìlayers
ímetrics
 îlayer_regularization_losses
ïlayer_metrics
|	variables
}trainable_variables
~regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
)__inference_dropout_2_layer_call_fn_11576
)__inference_dropout_2_layer_call_fn_11581´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_dropout_2_layer_call_and_return_conditional_losses_11586
D__inference_dropout_2_layer_call_and_return_conditional_losses_11590´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
 "
trackable_list_wrapper
):'!2layer_normalization_2/gamma
(:&!2layer_normalization_2/beta
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ðnon_trainable_variables
ñlayers
òmetrics
 ólayer_regularization_losses
ôlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ß2Ü
5__inference_layer_normalization_2_layer_call_fn_11599¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ú2÷
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_11621¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 :!@2dense_2/kernel
:@2dense_2/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
õnon_trainable_variables
ölayers
÷metrics
 ølayer_regularization_losses
ùlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_2_layer_call_fn_11630¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_2_layer_call_and_return_conditional_losses_11661¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 :@!2dense_3/kernel
:!2dense_3/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
únon_trainable_variables
ûlayers
ümetrics
 ýlayer_regularization_losses
þlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_3_layer_call_fn_11670¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_3_layer_call_and_return_conditional_losses_11700¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ÿnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
¢__call__
+£&call_and_return_all_conditional_losses
'£"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
)__inference_dropout_3_layer_call_fn_11705
)__inference_dropout_3_layer_call_fn_11710´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_dropout_3_layer_call_and_return_conditional_losses_11715
D__inference_dropout_3_layer_call_and_return_conditional_losses_11719´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
"
_generic_user_object
 "
trackable_list_wrapper
):'!2layer_normalization_3/gamma
(:&!2layer_normalization_3/beta
0
¦0
§1"
trackable_list_wrapper
0
¦0
§1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¨	variables
©trainable_variables
ªregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
ß2Ü
5__inference_layer_normalization_3_layer_call_fn_11728¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ú2÷
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_11750¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
®	variables
¯trainable_variables
°regularization_losses
²__call__
+³&call_and_return_all_conditional_losses
'³"call_and_return_conditional_losses"
_generic_user_object
ï2ì
8__inference_global_average_pooling1d_layer_call_fn_11755¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_11761¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 :! 2dense_4/kernel
: 2dense_4/bias
0
´0
µ1"
trackable_list_wrapper
0
´0
µ1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¶	variables
·trainable_variables
¸regularization_losses
º__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_4_layer_call_fn_11770¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_4_layer_call_and_return_conditional_losses_11780¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 : 2dense_5/kernel
:2dense_5/bias
0
¼0
½1"
trackable_list_wrapper
0
¼0
½1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
¾	variables
¿trainable_variables
Àregularization_losses
Â__call__
+Ã&call_and_return_all_conditional_losses
'Ã"call_and_return_conditional_losses"
_generic_user_object
Ñ2Î
'__inference_dense_5_layer_call_fn_11789¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_5_layer_call_and_return_conditional_losses_11799¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
7:5!!2!multi_head_attention/query/kernel
1:/!2multi_head_attention/query/bias
5:3!!2multi_head_attention/key/kernel
/:-!2multi_head_attention/key/bias
7:5!!2!multi_head_attention/value/kernel
1:/!2multi_head_attention/value/bias
B:@!!2,multi_head_attention/attention_output/kernel
8:6!2*multi_head_attention/attention_output/bias
9:7!!2#multi_head_attention_1/query/kernel
3:1!2!multi_head_attention_1/query/bias
7:5!!2!multi_head_attention_1/key/kernel
1:/!2multi_head_attention_1/key/bias
9:7!!2#multi_head_attention_1/value/kernel
3:1!2!multi_head_attention_1/value/bias
D:B!!2.multi_head_attention_1/attention_output/kernel
::8!2,multi_head_attention_1/attention_output/bias
 "
trackable_list_wrapper
Ö
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
19
20
21
22
23"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÊBÇ
#__inference_signature_wrapper_11111input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
0
É0
Ê1"
trackable_list_wrapper
0
É0
Ê1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ë	variables
ìtrainable_variables
íregularization_losses
ï__call__
+ð&call_and_return_all_conditional_losses
'ð"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ë0
Ì1"
trackable_list_wrapper
0
Ë0
Ì1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
ó	variables
ôtrainable_variables
õregularization_losses
÷__call__
+ø&call_and_return_all_conditional_losses
'ø"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Í0
Î1"
trackable_list_wrapper
0
Í0
Î1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
û	variables
ütrainable_variables
ýregularization_losses
ÿ__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ï0
Ð1"
trackable_list_wrapper
0
Ï0
Ð1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
J
20
31
42
53
64
75"
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
0
Ñ0
Ò1"
trackable_list_wrapper
0
Ñ0
Ò1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
·non_trainable_variables
¸layers
¹metrics
 ºlayer_regularization_losses
»layer_metrics
»	variables
¼trainable_variables
½regularization_losses
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ó0
Ô1"
trackable_list_wrapper
0
Ó0
Ô1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¼non_trainable_variables
½layers
¾metrics
 ¿layer_regularization_losses
Àlayer_metrics
Ã	variables
Ätrainable_variables
Åregularization_losses
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Õ0
Ö1"
trackable_list_wrapper
0
Õ0
Ö1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ánon_trainable_variables
Âlayers
Ãmetrics
 Älayer_regularization_losses
Ålayer_metrics
Ë	variables
Ìtrainable_variables
Íregularization_losses
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
Ñ	variables
Òtrainable_variables
Óregularization_losses
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses"
_generic_user_object
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
µ2²¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ënon_trainable_variables
Ìlayers
Ímetrics
 Îlayer_regularization_losses
Ïlayer_metrics
×	variables
Øtrainable_variables
Ùregularization_losses
Ü__call__
+Ý&call_and_return_all_conditional_losses
'Ý"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
º2·´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
×0
Ø1"
trackable_list_wrapper
0
×0
Ø1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ðnon_trainable_variables
Ñlayers
Òmetrics
 Ólayer_regularization_losses
Ôlayer_metrics
à	variables
átrainable_variables
âregularization_losses
ä__call__
+å&call_and_return_all_conditional_losses
'å"call_and_return_conditional_losses"
_generic_user_object
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
J
p0
q1
r2
s3
t4
u5"
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
R

Õtotal

Öcount
×	variables
Ø	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
Õ0
Ö1"
trackable_list_wrapper
.
×	variables"
_generic_user_object
$:"2Adam/time2_vec/wei_per/m
%:#2Adam/time2_vec/bias_per/m
$:"2Adam/time2_vec/wei_lin/m
%:#2Adam/time2_vec/bias_lin/m
,:*!2 Adam/layer_normalization/gamma/m
+:)!2Adam/layer_normalization/beta/m
#:!!@2Adam/dense/kernel/m
:@2Adam/dense/bias/m
%:#@!2Adam/dense_1/kernel/m
:!2Adam/dense_1/bias/m
.:,!2"Adam/layer_normalization_1/gamma/m
-:+!2!Adam/layer_normalization_1/beta/m
.:,!2"Adam/layer_normalization_2/gamma/m
-:+!2!Adam/layer_normalization_2/beta/m
%:#!@2Adam/dense_2/kernel/m
:@2Adam/dense_2/bias/m
%:#@!2Adam/dense_3/kernel/m
:!2Adam/dense_3/bias/m
.:,!2"Adam/layer_normalization_3/gamma/m
-:+!2!Adam/layer_normalization_3/beta/m
%:#! 2Adam/dense_4/kernel/m
: 2Adam/dense_4/bias/m
%:# 2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
<::!!2(Adam/multi_head_attention/query/kernel/m
6:4!2&Adam/multi_head_attention/query/bias/m
::8!!2&Adam/multi_head_attention/key/kernel/m
4:2!2$Adam/multi_head_attention/key/bias/m
<::!!2(Adam/multi_head_attention/value/kernel/m
6:4!2&Adam/multi_head_attention/value/bias/m
G:E!!23Adam/multi_head_attention/attention_output/kernel/m
=:;!21Adam/multi_head_attention/attention_output/bias/m
>:<!!2*Adam/multi_head_attention_1/query/kernel/m
8:6!2(Adam/multi_head_attention_1/query/bias/m
<::!!2(Adam/multi_head_attention_1/key/kernel/m
6:4!2&Adam/multi_head_attention_1/key/bias/m
>:<!!2*Adam/multi_head_attention_1/value/kernel/m
8:6!2(Adam/multi_head_attention_1/value/bias/m
I:G!!25Adam/multi_head_attention_1/attention_output/kernel/m
?:=!23Adam/multi_head_attention_1/attention_output/bias/m
$:"2Adam/time2_vec/wei_per/v
%:#2Adam/time2_vec/bias_per/v
$:"2Adam/time2_vec/wei_lin/v
%:#2Adam/time2_vec/bias_lin/v
,:*!2 Adam/layer_normalization/gamma/v
+:)!2Adam/layer_normalization/beta/v
#:!!@2Adam/dense/kernel/v
:@2Adam/dense/bias/v
%:#@!2Adam/dense_1/kernel/v
:!2Adam/dense_1/bias/v
.:,!2"Adam/layer_normalization_1/gamma/v
-:+!2!Adam/layer_normalization_1/beta/v
.:,!2"Adam/layer_normalization_2/gamma/v
-:+!2!Adam/layer_normalization_2/beta/v
%:#!@2Adam/dense_2/kernel/v
:@2Adam/dense_2/bias/v
%:#@!2Adam/dense_3/kernel/v
:!2Adam/dense_3/bias/v
.:,!2"Adam/layer_normalization_3/gamma/v
-:+!2!Adam/layer_normalization_3/beta/v
%:#! 2Adam/dense_4/kernel/v
: 2Adam/dense_4/bias/v
%:# 2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
<::!!2(Adam/multi_head_attention/query/kernel/v
6:4!2&Adam/multi_head_attention/query/bias/v
::8!!2&Adam/multi_head_attention/key/kernel/v
4:2!2$Adam/multi_head_attention/key/bias/v
<::!!2(Adam/multi_head_attention/value/kernel/v
6:4!2&Adam/multi_head_attention/value/bias/v
G:E!!23Adam/multi_head_attention/attention_output/kernel/v
=:;!21Adam/multi_head_attention/attention_output/bias/v
>:<!!2*Adam/multi_head_attention_1/query/kernel/v
8:6!2(Adam/multi_head_attention_1/query/bias/v
<::!!2(Adam/multi_head_attention_1/key/kernel/v
6:4!2&Adam/multi_head_attention_1/key/bias/v
>:<!!2*Adam/multi_head_attention_1/value/kernel/v
8:6!2(Adam/multi_head_attention_1/value/bias/v
I:G!!25Adam/multi_head_attention_1/attention_output/kernel/v
?:=!23Adam/multi_head_attention_1/attention_output/bias/vÓ
__inference__wrapped_model_8776¯D$%"#ÉÊËÌÍÎÏÐGHOPWXhiÑÒÓÔÕÖ×Ø¦§´µ¼½4¢1
*¢'
%"
input_1ÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_5!
dense_5ÿÿÿÿÿÿÿÿÿÚ
F__inference_concatenate_layer_call_and_return_conditional_losses_11166b¢_
X¢U
SP
&#
inputs/0ÿÿÿÿÿÿÿÿÿ
&#
inputs/1ÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 ²
+__inference_concatenate_layer_call_fn_11159b¢_
X¢U
SP
&#
inputs/0ÿÿÿÿÿÿÿÿÿ
&#
inputs/1ÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ!ª
B__inference_dense_1_layer_call_and_return_conditional_losses_11408dWX3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 
'__inference_dense_1_layer_call_fn_11378WWX3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ!¬
B__inference_dense_2_layer_call_and_return_conditional_losses_11661f3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ!
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 
'__inference_dense_2_layer_call_fn_11630Y3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ!
ª "ÿÿÿÿÿÿÿÿÿ@¬
B__inference_dense_3_layer_call_and_return_conditional_losses_11700f3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 
'__inference_dense_3_layer_call_fn_11670Y3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ!¤
B__inference_dense_4_layer_call_and_return_conditional_losses_11780^´µ/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ!
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 |
'__inference_dense_4_layer_call_fn_11770Q´µ/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ!
ª "ÿÿÿÿÿÿÿÿÿ ¤
B__inference_dense_5_layer_call_and_return_conditional_losses_11799^¼½/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_dense_5_layer_call_fn_11789Q¼½/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ¨
@__inference_dense_layer_call_and_return_conditional_losses_11369dOP3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ!
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 
%__inference_dense_layer_call_fn_11338WOP3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ!
ª "ÿÿÿÿÿÿÿÿÿ@¬
D__inference_dropout_1_layer_call_and_return_conditional_losses_11423d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 ¬
D__inference_dropout_1_layer_call_and_return_conditional_losses_11427d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 
)__inference_dropout_1_layer_call_fn_11413W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p 
ª "ÿÿÿÿÿÿÿÿÿ!
)__inference_dropout_1_layer_call_fn_11418W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p
ª "ÿÿÿÿÿÿÿÿÿ!¬
D__inference_dropout_2_layer_call_and_return_conditional_losses_11586d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 ¬
D__inference_dropout_2_layer_call_and_return_conditional_losses_11590d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 
)__inference_dropout_2_layer_call_fn_11576W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p 
ª "ÿÿÿÿÿÿÿÿÿ!
)__inference_dropout_2_layer_call_fn_11581W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p
ª "ÿÿÿÿÿÿÿÿÿ!¬
D__inference_dropout_3_layer_call_and_return_conditional_losses_11715d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 ¬
D__inference_dropout_3_layer_call_and_return_conditional_losses_11719d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 
)__inference_dropout_3_layer_call_fn_11705W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p 
ª "ÿÿÿÿÿÿÿÿÿ!
)__inference_dropout_3_layer_call_fn_11710W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p
ª "ÿÿÿÿÿÿÿÿÿ!ª
B__inference_dropout_layer_call_and_return_conditional_losses_11294d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 ª
B__inference_dropout_layer_call_and_return_conditional_losses_11298d7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 
'__inference_dropout_layer_call_fn_11284W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p 
ª "ÿÿÿÿÿÿÿÿÿ!
'__inference_dropout_layer_call_fn_11289W7¢4
-¢*
$!
inputsÿÿÿÿÿÿÿÿÿ!
p
ª "ÿÿÿÿÿÿÿÿÿ!Ò
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_11761{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ª
8__inference_global_average_pooling1d_layer_call_fn_11755nI¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
ª "!ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¸
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_11458dhi3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ!
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 
5__inference_layer_normalization_1_layer_call_fn_11436Whi3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ!
ª "ÿÿÿÿÿÿÿÿÿ!º
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_11621f3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ!
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 
5__inference_layer_normalization_2_layer_call_fn_11599Y3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ!
ª "ÿÿÿÿÿÿÿÿÿ!º
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_11750f¦§3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ!
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 
5__inference_layer_normalization_3_layer_call_fn_11728Y¦§3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ!
ª "ÿÿÿÿÿÿÿÿÿ!¶
N__inference_layer_normalization_layer_call_and_return_conditional_losses_11329dGH3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ!
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 
3__inference_layer_normalization_layer_call_fn_11307WGH3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ!
ª "ÿÿÿÿÿÿÿÿÿ!ð
@__inference_model_layer_call_and_return_conditional_losses_10165«D$%"#ÉÊËÌÍÎÏÐGHOPWXhiÑÒÓÔÕÖ×Ø¦§´µ¼½<¢9
2¢/
%"
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ð
@__inference_model_layer_call_and_return_conditional_losses_10272«D$%"#ÉÊËÌÍÎÏÐGHOPWXhiÑÒÓÔÕÖ×Ø¦§´µ¼½<¢9
2¢/
%"
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ï
@__inference_model_layer_call_and_return_conditional_losses_10739ªD$%"#ÉÊËÌÍÎÏÐGHOPWXhiÑÒÓÔÕÖ×Ø¦§´µ¼½;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ï
@__inference_model_layer_call_and_return_conditional_losses_11024ªD$%"#ÉÊËÌÍÎÏÐGHOPWXhiÑÒÓÔÕÖ×Ø¦§´µ¼½;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 È
%__inference_model_layer_call_fn_10058D$%"#ÉÊËÌÍÎÏÐGHOPWXhiÑÒÓÔÕÖ×Ø¦§´µ¼½<¢9
2¢/
%"
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÇ
%__inference_model_layer_call_fn_10363D$%"#ÉÊËÌÍÎÏÐGHOPWXhiÑÒÓÔÕÖ×Ø¦§´µ¼½;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÇ
%__inference_model_layer_call_fn_10448D$%"#ÉÊËÌÍÎÏÐGHOPWXhiÑÒÓÔÕÖ×Ø¦§´µ¼½;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÇ
$__inference_model_layer_call_fn_9357D$%"#ÉÊËÌÍÎÏÐGHOPWXhiÑÒÓÔÕÖ×Ø¦§´µ¼½<¢9
2¢/
%"
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿü
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_11537¦ÑÒÓÔÕÖ×Øg¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ!
# 
valueÿÿÿÿÿÿÿÿÿ!

 

 
p 
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 ü
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_11571¦ÑÒÓÔÕÖ×Øg¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ!
# 
valueÿÿÿÿÿÿÿÿÿ!

 

 
p 
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 Ô
6__inference_multi_head_attention_1_layer_call_fn_11480ÑÒÓÔÕÖ×Øg¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ!
# 
valueÿÿÿÿÿÿÿÿÿ!

 

 
p 
p 
ª "ÿÿÿÿÿÿÿÿÿ!Ô
6__inference_multi_head_attention_1_layer_call_fn_11502ÑÒÓÔÕÖ×Øg¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ!
# 
valueÿÿÿÿÿÿÿÿÿ!

 

 
p 
p
ª "ÿÿÿÿÿÿÿÿÿ!ú
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_11245¦ÉÊËÌÍÎÏÐg¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ!
# 
valueÿÿÿÿÿÿÿÿÿ!

 

 
p 
p 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 ú
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_11279¦ÉÊËÌÍÎÏÐg¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ!
# 
valueÿÿÿÿÿÿÿÿÿ!

 

 
p 
p
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ!
 Ò
4__inference_multi_head_attention_layer_call_fn_11188ÉÊËÌÍÎÏÐg¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ!
# 
valueÿÿÿÿÿÿÿÿÿ!

 

 
p 
p 
ª "ÿÿÿÿÿÿÿÿÿ!Ò
4__inference_multi_head_attention_layer_call_fn_11210ÉÊËÌÍÎÏÐg¢d
]¢Z
# 
queryÿÿÿÿÿÿÿÿÿ!
# 
valueÿÿÿÿÿÿÿÿÿ!

 

 
p 
p
ª "ÿÿÿÿÿÿÿÿÿ!â
#__inference_signature_wrapper_11111ºD$%"#ÉÊËÌÍÎÏÐGHOPWXhiÑÒÓÔÕÖ×Ø¦§´µ¼½?¢<
¢ 
5ª2
0
input_1%"
input_1ÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_5!
dense_5ÿÿÿÿÿÿÿÿÿ©
D__inference_time2_vec_layer_call_and_return_conditional_losses_11153a$%"#.¢+
$¢!

xÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_time2_vec_layer_call_fn_11124T$%"#.¢+
$¢!

xÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ