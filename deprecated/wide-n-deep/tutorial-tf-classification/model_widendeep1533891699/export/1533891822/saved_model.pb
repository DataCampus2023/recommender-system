��!
�0�0
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	��
�
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
�
AsString

input"T

output"
Ttype:
	2	
"
	precisionint���������"

scientificbool( "
shortestbool( "
widthint���������"
fillstring 
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
S
	Bucketize

input"T

output"
Ttype:
2	"

boundarieslist(float)
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
B
Equal
x"T
y"T
z
"
Ttype:
2	
�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
b
InitializeTableV2
table_handle
keys"Tkey
values"Tval"
Tkeytype"
Tvaltype�
:
Less
x"T
y"T
z
"
Ttype:
2	
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
�
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
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
�
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
D
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
SparseFeatureCross
indices	*N
values2sparse_types
shapes	*N
dense2dense_types
output_indices	
output_values"out_type
output_shape	"

Nint("
hashed_outputbool"
num_bucketsint("$
sparse_types
list(type)(:
2	"#
dense_types
list(type)(:
2	"
out_typetype:
2	"
internal_typetype:
2	
�
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
z
SparseSegmentMean	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2"
Tidxtype0:
2	
�
SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
�
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
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.9.02v1.9.0-0-g25c197e023��

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 
�
global_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
_output_shapes
: *
T0	
f
PlaceholderPlaceholder*
dtype0*#
_output_shapes
:���������*
shape:���������
h
Placeholder_1Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
h
Placeholder_2Placeholder*
shape:���������*
dtype0*#
_output_shapes
:���������
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
h
Placeholder_4Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
h
Placeholder_5Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
h
Placeholder_6Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
h
Placeholder_7Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
h
Placeholder_8Placeholder*#
_output_shapes
:���������*
shape:���������*
dtype0
h
Placeholder_9Placeholder*
shape:���������*
dtype0*#
_output_shapes
:���������
i
Placeholder_10Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
i
Placeholder_11Placeholder*
shape:���������*
dtype0*#
_output_shapes
:���������
i
Placeholder_12Placeholder*
dtype0*#
_output_shapes
:���������*
shape:���������
d
strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
f
strided_slice/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
f
strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
�
strided_sliceStridedSlicePlaceholderstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask*
end_mask*'
_output_shapes
:���������*
Index0*
T0
f
strided_slice_1/stackConst*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_1/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_1/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
strided_slice_1StridedSlicePlaceholder_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask*
end_mask*'
_output_shapes
:���������
f
strided_slice_2/stackConst*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_2/stack_1Const*
_output_shapes
:*
valueB"        *
dtype0
h
strided_slice_2/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
strided_slice_2StridedSlicePlaceholder_2strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask*
end_mask*'
_output_shapes
:���������*
Index0*
T0
f
strided_slice_3/stackConst*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_3/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_3/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
strided_slice_3StridedSlicePlaceholder_3strided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask*
end_mask*'
_output_shapes
:���������*
T0*
Index0*
shrink_axis_mask 
f
strided_slice_4/stackConst*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_4/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_4/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
�
strided_slice_4StridedSlicePlaceholder_4strided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask*
end_mask*'
_output_shapes
:���������*
Index0*
T0*
shrink_axis_mask 
f
strided_slice_5/stackConst*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_5/stack_1Const*
_output_shapes
:*
valueB"        *
dtype0
h
strided_slice_5/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
�
strided_slice_5StridedSlicePlaceholder_5strided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask*
end_mask*'
_output_shapes
:���������
f
strided_slice_6/stackConst*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_6/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_6/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
strided_slice_6StridedSlicePlaceholder_6strided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*'
_output_shapes
:���������*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask*
end_mask
f
strided_slice_7/stackConst*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_7/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_7/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
�
strided_slice_7StridedSlicePlaceholder_7strided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask*
end_mask*'
_output_shapes
:���������*
T0*
Index0
f
strided_slice_8/stackConst*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_8/stack_1Const*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_8/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
strided_slice_8StridedSlicePlaceholder_8strided_slice_8/stackstrided_slice_8/stack_1strided_slice_8/stack_2*
new_axis_mask*
end_mask*'
_output_shapes
:���������*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask
f
strided_slice_9/stackConst*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_9/stack_1Const*
_output_shapes
:*
valueB"        *
dtype0
h
strided_slice_9/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
�
strided_slice_9StridedSlicePlaceholder_9strided_slice_9/stackstrided_slice_9/stack_1strided_slice_9/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask*
end_mask*'
_output_shapes
:���������
g
strided_slice_10/stackConst*
dtype0*
_output_shapes
:*
valueB"        
i
strided_slice_10/stack_1Const*
_output_shapes
:*
valueB"        *
dtype0
i
strided_slice_10/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
strided_slice_10StridedSlicePlaceholder_10strided_slice_10/stackstrided_slice_10/stack_1strided_slice_10/stack_2*
end_mask*'
_output_shapes
:���������*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask
g
strided_slice_11/stackConst*
valueB"        *
dtype0*
_output_shapes
:
i
strided_slice_11/stack_1Const*
_output_shapes
:*
valueB"        *
dtype0
i
strided_slice_11/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
strided_slice_11StridedSlicePlaceholder_11strided_slice_11/stackstrided_slice_11/stack_1strided_slice_11/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask*
end_mask*'
_output_shapes
:���������*
T0*
Index0
g
strided_slice_12/stackConst*
_output_shapes
:*
valueB"        *
dtype0
i
strided_slice_12/stack_1Const*
_output_shapes
:*
valueB"        *
dtype0
i
strided_slice_12/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
�
strided_slice_12StridedSlicePlaceholder_12strided_slice_12/stackstrided_slice_12/stack_1strided_slice_12/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask*
end_mask*'
_output_shapes
:���������
�
pdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/DenseToSparseTensor/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
�
jdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/DenseToSparseTensor/NotEqualNotEqualstrided_slice_2pdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/DenseToSparseTensor/ignore_value/x*
T0*'
_output_shapes
:���������
�
idnn/input_from_feature_columns/input_from_feature_columns/education_embedding/DenseToSparseTensor/indicesWherejdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/DenseToSparseTensor/NotEqual*
T0
*'
_output_shapes
:���������
�
hdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/DenseToSparseTensor/valuesGatherNdstrided_slice_2idnn/input_from_feature_columns/input_from_feature_columns/education_embedding/DenseToSparseTensor/indices*#
_output_shapes
:���������*
Tindices0	*
Tparams0
�
mdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/DenseToSparseTensor/dense_shapeShapestrided_slice_2*
T0*
out_type0	*
_output_shapes
:
�
Tdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/lookupStringToHashBucketFasthdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/DenseToSparseTensor/values*#
_output_shapes
:���������*
num_buckets�
�
ndnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
�
pdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
�
pdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
hdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_sliceStridedSlicemdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/DenseToSparseTensor/dense_shapendnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice/stackpdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice/stack_1pdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0	*
Index0*
shrink_axis_mask 
�
pdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
rdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
�
rdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
jdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice_1StridedSlicemdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/DenseToSparseTensor/dense_shapepdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice_1/stackrdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice_1/stack_1rdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice_1/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0	*
Index0
�
`dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
_dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/ProdProdjdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slice_1`dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
�
jdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/concat/values_1Pack_dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/Prod*
T0	*

axis *
N*
_output_shapes
:
�
fdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
adnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/concatConcatV2hdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/strided_slicejdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/concat/values_1fdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/concat/axis*

Tidx0*
T0	*
N*
_output_shapes
:
�
hdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/SparseReshapeSparseReshapeidnn/input_from_feature_columns/input_from_feature_columns/education_embedding/DenseToSparseTensor/indicesmdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/DenseToSparseTensor/dense_shapeadnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/concat*-
_output_shapes
:���������:
�
qdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/SparseReshape/IdentityIdentityTdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/lookup*#
_output_shapes
:���������*
T0	
�
ddnn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*T
_classJ
HFloc:@dnn/input_from_feature_columns/education_embedding/weights/part_0*
valueB"�     
�
cdnn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal/meanConst*
_output_shapes
: *T
_classJ
HFloc:@dnn/input_from_feature_columns/education_embedding/weights/part_0*
valueB
 *    *
dtype0
�
ednn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*
_output_shapes
: *T
_classJ
HFloc:@dnn/input_from_feature_columns/education_embedding/weights/part_0*
valueB
 *�=*
dtype0
�
ndnn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalddnn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal/shape*
seed2 *
dtype0*
_output_shapes
:	�*

seed *
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/education_embedding/weights/part_0
�
bdnn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal/mulMulndnn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalednn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal/stddev*
_output_shapes
:	�*
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/education_embedding/weights/part_0
�
^dnn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normalAddbdnn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal/mulcdnn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal/mean*
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/education_embedding/weights/part_0*
_output_shapes
:	�
�
Adnn/input_from_feature_columns/education_embedding/weights/part_0
VariableV2*
	container *
shape:	�*
dtype0*
_output_shapes
:	�*
shared_name *T
_classJ
HFloc:@dnn/input_from_feature_columns/education_embedding/weights/part_0
�
Hdnn/input_from_feature_columns/education_embedding/weights/part_0/AssignAssignAdnn/input_from_feature_columns/education_embedding/weights/part_0^dnn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal*
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/education_embedding/weights/part_0*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
Fdnn/input_from_feature_columns/education_embedding/weights/part_0/readIdentityAdnn/input_from_feature_columns/education_embedding/weights/part_0*
_output_shapes
:	�*
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/education_embedding/weights/part_0
�
tdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
sdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
ndnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/SliceSlicejdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/SparseReshape:1tdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice/beginsdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice/size*
Index0*
T0	*
_output_shapes
:
�
ndnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
mdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/ProdProdndnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slicendnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
�
ydnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
vdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
qdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2GatherV2jdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/SparseReshape:1ydnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2/indicesvdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
�
odnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Cast/xPackmdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Prodqdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
�
vdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/SparseReshapeSparseReshapehdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/SparseReshapejdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/SparseReshape:1odnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Cast/x*-
_output_shapes
:���������:
�
dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/SparseReshape/IdentityIdentityqdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/SparseReshape/Identity*
T0	*#
_output_shapes
:���������
�
wdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
udnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GreaterEqualGreaterEqualdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/SparseReshape/Identitywdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
ndnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/WhereWhereudnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GreaterEqual*'
_output_shapes
:���������*
T0

�
vdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
pdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/ReshapeReshapendnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Wherevdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:���������
�
xdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
sdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2_1GatherV2vdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/SparseReshapepdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Reshapexdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:���������*
Taxis0
�
xdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
sdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2_2GatherV2dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/SparseReshape/Identitypdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Reshapexdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2_2/axis*#
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
qdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/IdentityIdentityxdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/SparseReshape:1*
_output_shapes
:*
T0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
�
�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowssdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2_1sdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/GatherV2_2qdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Identity�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSlice�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/strided_slice/stack�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/CastCast�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:���������*

DstT0
�
�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/UniqueUnique�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:���������:���������*
out_idx0*
T0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/embedding_lookup/axisConst*T
_classJ
HFloc:@dnn/input_from_feature_columns/education_embedding/weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherV2Fdnn/input_from_feature_columns/education_embedding/weights/part_0/read�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/Unique�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*T
_classJ
HFloc:@dnn/input_from_feature_columns/education_embedding/weights/part_0*'
_output_shapes
:���������*
Taxis0*
Tindices0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparseSparseSegmentMean�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/embedding_lookup�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/Unique:1�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:���������
�
xdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
rdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Reshape_1Reshape�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2xdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Reshape_1/shape*'
_output_shapes
:���������*
T0
*
Tshape0
�
ndnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/ShapeShape�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse*
out_type0*
_output_shapes
:*
T0
�
|dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
~dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
�
~dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
vdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/strided_sliceStridedSlicendnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Shape|dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/strided_slice/stack~dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/strided_slice/stack_1~dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
�
pdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
ndnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/stackPackpdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/stack/0vdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/strided_slice*
_output_shapes
:*
T0*

axis *
N
�
mdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/TileTilerdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Reshape_1ndnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/stack*0
_output_shapes
:������������������*

Tmultiples0*
T0

�
sdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/zeros_like	ZerosLike�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse*'
_output_shapes
:���������*
T0
�
hdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweightsSelectmdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Tilesdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/zeros_like�dnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
odnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Cast_1Castjdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/InnerFlatten/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
�
vdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
�
udnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
pdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice_1Sliceodnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Cast_1vdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice_1/beginudnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice_1/size*
_output_shapes
:*
Index0*
T0
�
pdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Shape_1Shapehdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights*
T0*
out_type0*
_output_shapes
:
�
vdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
�
udnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice_2/sizeConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
pdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice_2Slicepdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Shape_1vdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice_2/beginudnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
�
tdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
odnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/concatConcatV2pdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice_1pdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Slice_2tdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
rdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Reshape_2Reshapehdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweightsodnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/concat*
T0*
Tshape0*'
_output_shapes
:���������
�
udnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/DenseToSparseTensor/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
�
odnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/DenseToSparseTensor/NotEqualNotEqualstrided_slice_4udnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/DenseToSparseTensor/ignore_value/x*'
_output_shapes
:���������*
T0
�
ndnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/DenseToSparseTensor/indicesWhereodnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/DenseToSparseTensor/NotEqual*'
_output_shapes
:���������*
T0

�
mdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/DenseToSparseTensor/valuesGatherNdstrided_slice_4ndnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/DenseToSparseTensor/indices*#
_output_shapes
:���������*
Tindices0	*
Tparams0
�
rdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/DenseToSparseTensor/dense_shapeShapestrided_slice_4*
_output_shapes
:*
T0*
out_type0	
�
Ydnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/lookupStringToHashBucketFastmdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/DenseToSparseTensor/values*#
_output_shapes
:���������*
num_bucketsd
�
sdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
udnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
udnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
mdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_sliceStridedSlicerdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/DenseToSparseTensor/dense_shapesdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice/stackudnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice/stack_1udnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:
�
udnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
wdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
�
wdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
odnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice_1StridedSlicerdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/DenseToSparseTensor/dense_shapeudnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice_1/stackwdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice_1/stack_1wdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice_1/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0	*
Index0
�
ednn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
ddnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/ProdPrododnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_slice_1ednn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/Const*
	keep_dims( *

Tidx0*
T0	*
_output_shapes
: 
�
odnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/concat/values_1Packddnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/Prod*
T0	*

axis *
N*
_output_shapes
:
�
kdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
fdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/concatConcatV2mdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/strided_sliceodnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/concat/values_1kdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/concat/axis*
T0	*
N*
_output_shapes
:*

Tidx0
�
mdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/SparseReshapeSparseReshapendnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/DenseToSparseTensor/indicesrdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/DenseToSparseTensor/dense_shapefdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/concat*-
_output_shapes
:���������:
�
vdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/SparseReshape/IdentityIdentityYdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/lookup*#
_output_shapes
:���������*
T0	
�
idnn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*Y
_classO
MKloc:@dnn/input_from_feature_columns/marital_status_embedding/weights/part_0*
valueB"d      *
dtype0*
_output_shapes
:
�
hdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*
_output_shapes
: *Y
_classO
MKloc:@dnn/input_from_feature_columns/marital_status_embedding/weights/part_0*
valueB
 *    
�
jdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*Y
_classO
MKloc:@dnn/input_from_feature_columns/marital_status_embedding/weights/part_0*
valueB
 *���=*
dtype0*
_output_shapes
: 
�
sdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalidnn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:d*

seed *
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/marital_status_embedding/weights/part_0*
seed2 
�
gdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal/mulMulsdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormaljdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal/stddev*
_output_shapes

:d*
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/marital_status_embedding/weights/part_0
�
cdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normalAddgdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal/mulhdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal/mean*
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/marital_status_embedding/weights/part_0*
_output_shapes

:d
�
Fdnn/input_from_feature_columns/marital_status_embedding/weights/part_0
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *Y
_classO
MKloc:@dnn/input_from_feature_columns/marital_status_embedding/weights/part_0*
	container *
shape
:d
�
Mdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/AssignAssignFdnn/input_from_feature_columns/marital_status_embedding/weights/part_0cdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal*
validate_shape(*
_output_shapes

:d*
use_locking(*
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/marital_status_embedding/weights/part_0
�
Kdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/readIdentityFdnn/input_from_feature_columns/marital_status_embedding/weights/part_0*
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/marital_status_embedding/weights/part_0*
_output_shapes

:d
�
~dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
}dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
xdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/SliceSliceodnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/SparseReshape:1~dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice/begin}dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice/size*
Index0*
T0	*
_output_shapes
:
�
xdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
wdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/ProdProdxdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slicexdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
{dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2GatherV2odnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/SparseReshape:1�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2/indices�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
�
ydnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Cast/xPackwdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Prod{dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/SparseReshapeSparseReshapemdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/SparseReshapeodnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/SparseReshape:1ydnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Cast/x*-
_output_shapes
:���������:
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/SparseReshape/IdentityIdentityvdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/SparseReshape/Identity*
T0	*#
_output_shapes
:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
�
dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GreaterEqualGreaterEqual�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/SparseReshape/Identity�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
xdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/WhereWherednn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GreaterEqual*'
_output_shapes
:���������*
T0

�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Reshape/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
zdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/ReshapeReshapexdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Where�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Reshape/shape*#
_output_shapes
:���������*
T0	*
Tshape0
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
}dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2_1GatherV2�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/SparseReshapezdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Reshape�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:���������*
Taxis0
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
}dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2_2GatherV2�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/SparseReshape/Identityzdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Reshape�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
{dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/IdentityIdentity�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows}dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2_1}dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/GatherV2_2{dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Identity�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSlice�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/strided_slice/stack�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:���������*
Index0*
T0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/CastCast�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:���������*

DstT0
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/UniqueUnique�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:���������:���������*
out_idx0*
T0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/embedding_lookup/axisConst*Y
_classO
MKloc:@dnn/input_from_feature_columns/marital_status_embedding/weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherV2Kdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/read�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/Unique�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0*Y
_classO
MKloc:@dnn/input_from_feature_columns/marital_status_embedding/weights/part_0
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparseSparseSegmentMean�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/embedding_lookup�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/Unique:1�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse/Cast*'
_output_shapes
:���������*

Tidx0*
T0
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
|dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Reshape_1Reshape�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:���������
�
xdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/ShapeShape�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/strided_sliceStridedSlicexdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Shape�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/strided_slice/stack�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/strided_slice/stack_1�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
�
zdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
xdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/stackPackzdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/stack/0�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/strided_slice*
N*
_output_shapes
:*
T0*

axis 
�
wdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/TileTile|dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Reshape_1xdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/stack*

Tmultiples0*
T0
*0
_output_shapes
:������������������
�
}dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/zeros_like	ZerosLike�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse*'
_output_shapes
:���������*
T0
�
rdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweightsSelectwdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Tile}dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/zeros_like�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
ydnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Cast_1Castodnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/InnerFlatten/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
zdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice_1Sliceydnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Cast_1�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice_1/begindnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice_1/size*
_output_shapes
:*
Index0*
T0
�
zdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Shape_1Shaperdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights*
T0*
out_type0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
�
dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
zdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice_2Slicezdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Shape_1�dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice_2/begindnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice_2/size*
_output_shapes
:*
Index0*
T0
�
~dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
ydnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/concatConcatV2zdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice_1zdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Slice_2~dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
|dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Reshape_2Reshaperdnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweightsydnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/concat*
T0*
Tshape0*'
_output_shapes
:���������
�
udnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/DenseToSparseTensor/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
�
odnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/DenseToSparseTensor/NotEqualNotEqualstrided_slice_12udnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/DenseToSparseTensor/ignore_value/x*
T0*'
_output_shapes
:���������
�
ndnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/DenseToSparseTensor/indicesWhereodnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/DenseToSparseTensor/NotEqual*
T0
*'
_output_shapes
:���������
�
mdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/DenseToSparseTensor/valuesGatherNdstrided_slice_12ndnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/DenseToSparseTensor/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
rdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/DenseToSparseTensor/dense_shapeShapestrided_slice_12*
out_type0	*
_output_shapes
:*
T0
�
Ydnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/lookupStringToHashBucketFastmdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/DenseToSparseTensor/values*#
_output_shapes
:���������*
num_buckets�
�
sdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
udnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
udnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
mdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_sliceStridedSlicerdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/DenseToSparseTensor/dense_shapesdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice/stackudnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice/stack_1udnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice/stack_2*
T0	*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
�
udnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
wdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
�
wdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
odnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice_1StridedSlicerdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/DenseToSparseTensor/dense_shapeudnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice_1/stackwdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice_1/stack_1wdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice_1/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask*
_output_shapes
:*
T0	*
Index0
�
ednn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
ddnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/ProdPrododnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_slice_1ednn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
odnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/concat/values_1Packddnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/Prod*
T0	*

axis *
N*
_output_shapes
:
�
kdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
fdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/concatConcatV2mdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/strided_sliceodnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/concat/values_1kdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/concat/axis*
_output_shapes
:*

Tidx0*
T0	*
N
�
mdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/SparseReshapeSparseReshapendnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/DenseToSparseTensor/indicesrdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/DenseToSparseTensor/dense_shapefdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/concat*-
_output_shapes
:���������:
�
vdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/SparseReshape/IdentityIdentityYdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/lookup*#
_output_shapes
:���������*
T0	
�
idnn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*Y
_classO
MKloc:@dnn/input_from_feature_columns/native_country_embedding/weights/part_0*
valueB"�     *
dtype0*
_output_shapes
:
�
hdnn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal/meanConst*Y
_classO
MKloc:@dnn/input_from_feature_columns/native_country_embedding/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
�
jdnn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*Y
_classO
MKloc:@dnn/input_from_feature_columns/native_country_embedding/weights/part_0*
valueB
 *�=*
dtype0*
_output_shapes
: 
�
sdnn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalidnn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal/shape*
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/native_country_embedding/weights/part_0*
seed2 *
dtype0*
_output_shapes
:	�*

seed 
�
gdnn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal/mulMulsdnn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormaljdnn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal/stddev*
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/native_country_embedding/weights/part_0*
_output_shapes
:	�
�
cdnn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normalAddgdnn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal/mulhdnn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal/mean*
_output_shapes
:	�*
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/native_country_embedding/weights/part_0
�
Fdnn/input_from_feature_columns/native_country_embedding/weights/part_0
VariableV2*Y
_classO
MKloc:@dnn/input_from_feature_columns/native_country_embedding/weights/part_0*
	container *
shape:	�*
dtype0*
_output_shapes
:	�*
shared_name 
�
Mdnn/input_from_feature_columns/native_country_embedding/weights/part_0/AssignAssignFdnn/input_from_feature_columns/native_country_embedding/weights/part_0cdnn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal*
use_locking(*
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/native_country_embedding/weights/part_0*
validate_shape(*
_output_shapes
:	�
�
Kdnn/input_from_feature_columns/native_country_embedding/weights/part_0/readIdentityFdnn/input_from_feature_columns/native_country_embedding/weights/part_0*
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/native_country_embedding/weights/part_0*
_output_shapes
:	�
�
~dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
�
}dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
xdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/SliceSliceodnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/SparseReshape:1~dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice/begin}dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice/size*
_output_shapes
:*
Index0*
T0	
�
xdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
wdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/ProdProdxdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slicexdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
{dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2GatherV2odnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/SparseReshape:1�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2/indices�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0
�
ydnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Cast/xPackwdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Prod{dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/SparseReshapeSparseReshapemdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/SparseReshapeodnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/SparseReshape:1ydnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Cast/x*-
_output_shapes
:���������:
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/SparseReshape/IdentityIdentityvdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/SparseReshape/Identity*#
_output_shapes
:���������*
T0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
�
dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GreaterEqualGreaterEqual�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/SparseReshape/Identity�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
xdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/WhereWherednn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GreaterEqual*'
_output_shapes
:���������*
T0

�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Reshape/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
zdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/ReshapeReshapexdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Where�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
}dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2_1GatherV2�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/SparseReshapezdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Reshape�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2_1/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
}dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2_2GatherV2�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/SparseReshape/Identityzdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Reshape�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
{dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/IdentityIdentity�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows}dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2_1}dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/GatherV2_2{dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Identity�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSlice�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/strided_slice/stack�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/CastCast�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:���������*

DstT0
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/UniqueUnique�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:���������:���������*
out_idx0*
T0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/embedding_lookup/axisConst*Y
_classO
MKloc:@dnn/input_from_feature_columns/native_country_embedding/weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherV2Kdnn/input_from_feature_columns/native_country_embedding/weights/part_0/read�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/Unique�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0*Y
_classO
MKloc:@dnn/input_from_feature_columns/native_country_embedding/weights/part_0
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparseSparseSegmentMean�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/embedding_lookup�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/Unique:1�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse/Cast*'
_output_shapes
:���������*

Tidx0*
T0
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"����   
�
|dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Reshape_1Reshape�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Reshape_1/shape*
Tshape0*'
_output_shapes
:���������*
T0

�
xdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/ShapeShape�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/strided_sliceStridedSlicexdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Shape�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/strided_slice/stack�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/strided_slice/stack_1�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 
�
zdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
�
xdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/stackPackzdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/stack/0�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/strided_slice*
_output_shapes
:*
T0*

axis *
N
�
wdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/TileTile|dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Reshape_1xdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/stack*

Tmultiples0*
T0
*0
_output_shapes
:������������������
�
}dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/zeros_like	ZerosLike�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
rdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweightsSelectwdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Tile}dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/zeros_like�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
ydnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Cast_1Castodnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/InnerFlatten/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
�
zdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice_1Sliceydnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Cast_1�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice_1/begindnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice_1/size*
Index0*
T0*
_output_shapes
:
�
zdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Shape_1Shaperdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights*
T0*
out_type0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
�
dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice_2/sizeConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
zdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice_2Slicezdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Shape_1�dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice_2/begindnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
�
~dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
ydnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/concatConcatV2zdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice_1zdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Slice_2~dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
|dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Reshape_2Reshaperdnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweightsydnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/concat*
T0*
Tshape0*'
_output_shapes
:���������
�
qdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/DenseToSparseTensor/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
�
kdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/DenseToSparseTensor/NotEqualNotEqualstrided_slice_5qdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/DenseToSparseTensor/ignore_value/x*
T0*'
_output_shapes
:���������
�
jdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/DenseToSparseTensor/indicesWherekdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/DenseToSparseTensor/NotEqual*'
_output_shapes
:���������*
T0

�
idnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/DenseToSparseTensor/valuesGatherNdstrided_slice_5jdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/DenseToSparseTensor/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
ndnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/DenseToSparseTensor/dense_shapeShapestrided_slice_5*
T0*
out_type0	*
_output_shapes
:
�
Udnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/lookupStringToHashBucketFastidnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/DenseToSparseTensor/values*#
_output_shapes
:���������*
num_buckets�
�
odnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
qdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
�
qdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
idnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_sliceStridedSlicendnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/DenseToSparseTensor/dense_shapeodnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice/stackqdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice/stack_1qdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:
�
qdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
sdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
�
sdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
kdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice_1StridedSlicendnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/DenseToSparseTensor/dense_shapeqdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice_1/stacksdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice_1/stack_1sdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice_1/stack_2*
Index0*
T0	*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
�
adnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
`dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/ProdProdkdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slice_1adnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
kdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/concat/values_1Pack`dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/Prod*
_output_shapes
:*
T0	*

axis *
N
�
gdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
bdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/concatConcatV2idnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/strided_slicekdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/concat/values_1gdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0	
�
idnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/SparseReshapeSparseReshapejdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/DenseToSparseTensor/indicesndnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/DenseToSparseTensor/dense_shapebdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/concat*-
_output_shapes
:���������:
�
rdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/SparseReshape/IdentityIdentityUdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/lookup*#
_output_shapes
:���������*
T0	
�
ednn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*U
_classK
IGloc:@dnn/input_from_feature_columns/occupation_embedding/weights/part_0*
valueB"�     *
dtype0*
_output_shapes
:
�
ddnn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal/meanConst*U
_classK
IGloc:@dnn/input_from_feature_columns/occupation_embedding/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
�
fdnn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*U
_classK
IGloc:@dnn/input_from_feature_columns/occupation_embedding/weights/part_0*
valueB
 *�=*
dtype0*
_output_shapes
: 
�
odnn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalednn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal/shape*U
_classK
IGloc:@dnn/input_from_feature_columns/occupation_embedding/weights/part_0*
seed2 *
dtype0*
_output_shapes
:	�*

seed *
T0
�
cdnn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal/mulMulodnn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalfdnn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal/stddev*
_output_shapes
:	�*
T0*U
_classK
IGloc:@dnn/input_from_feature_columns/occupation_embedding/weights/part_0
�
_dnn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normalAddcdnn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal/mulddnn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal/mean*
T0*U
_classK
IGloc:@dnn/input_from_feature_columns/occupation_embedding/weights/part_0*
_output_shapes
:	�
�
Bdnn/input_from_feature_columns/occupation_embedding/weights/part_0
VariableV2*
dtype0*
_output_shapes
:	�*
shared_name *U
_classK
IGloc:@dnn/input_from_feature_columns/occupation_embedding/weights/part_0*
	container *
shape:	�
�
Idnn/input_from_feature_columns/occupation_embedding/weights/part_0/AssignAssignBdnn/input_from_feature_columns/occupation_embedding/weights/part_0_dnn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal*
use_locking(*
T0*U
_classK
IGloc:@dnn/input_from_feature_columns/occupation_embedding/weights/part_0*
validate_shape(*
_output_shapes
:	�
�
Gdnn/input_from_feature_columns/occupation_embedding/weights/part_0/readIdentityBdnn/input_from_feature_columns/occupation_embedding/weights/part_0*
T0*U
_classK
IGloc:@dnn/input_from_feature_columns/occupation_embedding/weights/part_0*
_output_shapes
:	�
�
vdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
�
udnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
pdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/SliceSlicekdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/SparseReshape:1vdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice/beginudnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice/size*
_output_shapes
:*
Index0*
T0	
�
pdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
odnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/ProdProdpdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slicepdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Const*
	keep_dims( *

Tidx0*
T0	*
_output_shapes
: 
�
{dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
xdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
sdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2GatherV2kdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/SparseReshape:1{dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2/indicesxdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
�
qdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Cast/xPackodnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Prodsdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2*
_output_shapes
:*
T0	*

axis *
N
�
xdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/SparseReshapeSparseReshapeidnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/SparseReshapekdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/SparseReshape:1qdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Cast/x*-
_output_shapes
:���������:
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/SparseReshape/IdentityIdentityrdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/SparseReshape/Identity*#
_output_shapes
:���������*
T0	
�
ydnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
�
wdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GreaterEqualGreaterEqual�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/SparseReshape/Identityydnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
pdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/WhereWherewdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GreaterEqual*
T0
*'
_output_shapes
:���������
�
xdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
rdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/ReshapeReshapepdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Wherexdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Reshape/shape*#
_output_shapes
:���������*
T0	*
Tshape0
�
zdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
udnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2_1GatherV2xdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/SparseReshaperdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Reshapezdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2_1/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
zdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
udnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2_2GatherV2�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/SparseReshape/Identityrdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Reshapezdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:���������*
Taxis0
�
sdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/IdentityIdentityzdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsudnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2_1udnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/GatherV2_2sdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Identity�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/SparseFillEmptyRows/Const*T
_output_shapesB
@:���������:���������:���������:���������*
T0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSlice�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/strided_slice/stack�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/CastCast�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:���������*

DstT0*

SrcT0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/UniqueUnique�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:���������:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *U
_classK
IGloc:@dnn/input_from_feature_columns/occupation_embedding/weights/part_0*
value	B : 
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherV2Gdnn/input_from_feature_columns/occupation_embedding/weights/part_0/read�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/Unique�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/embedding_lookup/axis*
Tparams0*U
_classK
IGloc:@dnn/input_from_feature_columns/occupation_embedding/weights/part_0*'
_output_shapes
:���������*
Taxis0*
Tindices0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparseSparseSegmentMean�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/embedding_lookup�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/Unique:1�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:���������*

Tidx0
�
zdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
tdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Reshape_1Reshape�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2zdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Reshape_1/shape*'
_output_shapes
:���������*
T0
*
Tshape0
�
pdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/ShapeShape�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
~dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
xdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/strided_sliceStridedSlicepdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Shape~dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/strided_slice/stack�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/strided_slice/stack_1�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
rdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
pdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/stackPackrdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/stack/0xdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
odnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/TileTiletdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Reshape_1pdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/stack*0
_output_shapes
:������������������*

Tmultiples0*
T0

�
udnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/zeros_like	ZerosLike�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
jdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweightsSelectodnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Tileudnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/zeros_like�dnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
qdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Cast_1Castkdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/InnerFlatten/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
�
xdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
wdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
�
rdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice_1Sliceqdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Cast_1xdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice_1/beginwdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice_1/size*
Index0*
T0*
_output_shapes
:
�
rdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Shape_1Shapejdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights*
T0*
out_type0*
_output_shapes
:
�
xdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice_2/beginConst*
_output_shapes
:*
valueB:*
dtype0
�
wdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
rdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice_2Slicerdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Shape_1xdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice_2/beginwdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice_2/size*
_output_shapes
:*
Index0*
T0
�
vdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
qdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/concatConcatV2rdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice_1rdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Slice_2vdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
tdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Reshape_2Reshapejdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweightsqdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/concat*
T0*
Tshape0*'
_output_shapes
:���������
�
sdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/DenseToSparseTensor/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
�
mdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/DenseToSparseTensor/NotEqualNotEqualstrided_slice_6sdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/DenseToSparseTensor/ignore_value/x*
T0*'
_output_shapes
:���������
�
ldnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/DenseToSparseTensor/indicesWheremdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/DenseToSparseTensor/NotEqual*
T0
*'
_output_shapes
:���������
�
kdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/DenseToSparseTensor/valuesGatherNdstrided_slice_6ldnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/DenseToSparseTensor/indices*#
_output_shapes
:���������*
Tindices0	*
Tparams0
�
pdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/DenseToSparseTensor/dense_shapeShapestrided_slice_6*
T0*
out_type0	*
_output_shapes
:
�
Wdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/lookupStringToHashBucketFastkdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/DenseToSparseTensor/values*
num_bucketsd*#
_output_shapes
:���������
�
qdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
sdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
sdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
kdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_sliceStridedSlicepdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/DenseToSparseTensor/dense_shapeqdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice/stacksdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice/stack_1sdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0	*
shrink_axis_mask 
�
sdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
udnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
�
udnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
mdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice_1StridedSlicepdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/DenseToSparseTensor/dense_shapesdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice_1/stackudnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice_1/stack_1udnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice_1/stack_2*
_output_shapes
:*
Index0*
T0	*
shrink_axis_mask *
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask
�
cdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
bdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/ProdProdmdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slice_1cdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
mdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/concat/values_1Packbdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/Prod*
T0	*

axis *
N*
_output_shapes
:
�
idnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
ddnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/concatConcatV2kdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/strided_slicemdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/concat/values_1idnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/concat/axis*
T0	*
N*
_output_shapes
:*

Tidx0
�
kdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/SparseReshapeSparseReshapeldnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/DenseToSparseTensor/indicespdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/DenseToSparseTensor/dense_shapeddnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/concat*-
_output_shapes
:���������:
�
tdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/SparseReshape/IdentityIdentityWdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/lookup*#
_output_shapes
:���������*
T0	
�
gdnn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*W
_classM
KIloc:@dnn/input_from_feature_columns/relationship_embedding/weights/part_0*
valueB"d      *
dtype0*
_output_shapes
:
�
fdnn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal/meanConst*W
_classM
KIloc:@dnn/input_from_feature_columns/relationship_embedding/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
�
hdnn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *W
_classM
KIloc:@dnn/input_from_feature_columns/relationship_embedding/weights/part_0*
valueB
 *���=
�
qdnn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalgdnn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:d*

seed *
T0*W
_classM
KIloc:@dnn/input_from_feature_columns/relationship_embedding/weights/part_0*
seed2 
�
ednn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal/mulMulqdnn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalhdnn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal/stddev*
T0*W
_classM
KIloc:@dnn/input_from_feature_columns/relationship_embedding/weights/part_0*
_output_shapes

:d
�
adnn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normalAddednn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal/mulfdnn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal/mean*
T0*W
_classM
KIloc:@dnn/input_from_feature_columns/relationship_embedding/weights/part_0*
_output_shapes

:d
�
Ddnn/input_from_feature_columns/relationship_embedding/weights/part_0
VariableV2*W
_classM
KIloc:@dnn/input_from_feature_columns/relationship_embedding/weights/part_0*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name 
�
Kdnn/input_from_feature_columns/relationship_embedding/weights/part_0/AssignAssignDdnn/input_from_feature_columns/relationship_embedding/weights/part_0adnn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal*
use_locking(*
T0*W
_classM
KIloc:@dnn/input_from_feature_columns/relationship_embedding/weights/part_0*
validate_shape(*
_output_shapes

:d
�
Idnn/input_from_feature_columns/relationship_embedding/weights/part_0/readIdentityDdnn/input_from_feature_columns/relationship_embedding/weights/part_0*W
_classM
KIloc:@dnn/input_from_feature_columns/relationship_embedding/weights/part_0*
_output_shapes

:d*
T0
�
zdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0
�
ydnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
tdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/SliceSlicemdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/SparseReshape:1zdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice/beginydnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice/size*
Index0*
T0	*
_output_shapes
:
�
tdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
sdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/ProdProdtdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slicetdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
|dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
wdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2GatherV2mdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/SparseReshape:1dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2/indices|dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
�
udnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Cast/xPacksdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Prodwdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
�
|dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/SparseReshapeSparseReshapekdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/SparseReshapemdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/SparseReshape:1udnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Cast/x*-
_output_shapes
:���������:
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/SparseReshape/IdentityIdentitytdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/SparseReshape/Identity*
T0	*#
_output_shapes
:���������
�
}dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GreaterEqual/yConst*
_output_shapes
: *
value	B	 R *
dtype0	
�
{dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GreaterEqualGreaterEqual�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/SparseReshape/Identity}dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GreaterEqual/y*#
_output_shapes
:���������*
T0	
�
tdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/WhereWhere{dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GreaterEqual*
T0
*'
_output_shapes
:���������
�
|dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
vdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/ReshapeReshapetdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Where|dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:���������
�
~dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
ydnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2_1GatherV2|dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/SparseReshapevdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Reshape~dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:���������
�
~dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
ydnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2_2GatherV2�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/SparseReshape/Identityvdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Reshape~dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
wdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/IdentityIdentity~dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsydnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2_1ydnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/GatherV2_2wdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Identity�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/SparseFillEmptyRows/Const*T
_output_shapesB
@:���������:���������:���������:���������*
T0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSlice�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/strided_slice/stack�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/CastCast�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:���������*

DstT0*

SrcT0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/UniqueUnique�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:���������:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/embedding_lookup/axisConst*W
_classM
KIloc:@dnn/input_from_feature_columns/relationship_embedding/weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherV2Idnn/input_from_feature_columns/relationship_embedding/weights/part_0/read�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/Unique�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*W
_classM
KIloc:@dnn/input_from_feature_columns/relationship_embedding/weights/part_0*'
_output_shapes
:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparseSparseSegmentMean�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/embedding_lookup�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/Unique:1�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:���������*

Tidx0
�
~dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
xdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Reshape_1Reshape�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2~dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:���������
�
tdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/ShapeShape�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
�
�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
|dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/strided_sliceStridedSlicetdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Shape�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/strided_slice/stack�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/strided_slice/stack_1�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
�
vdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
tdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/stackPackvdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/stack/0|dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
sdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/TileTilexdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Reshape_1tdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/stack*

Tmultiples0*
T0
*0
_output_shapes
:������������������
�
ydnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/zeros_like	ZerosLike�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
ndnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweightsSelectsdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Tileydnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/zeros_like�dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/embedding_lookup_sparse*'
_output_shapes
:���������*
T0
�
udnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Cast_1Castmdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/InnerFlatten/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
�
|dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
�
{dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
vdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice_1Sliceudnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Cast_1|dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice_1/begin{dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice_1/size*
Index0*
T0*
_output_shapes
:
�
vdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Shape_1Shapendnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights*
out_type0*
_output_shapes
:*
T0
�
|dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice_2/beginConst*
_output_shapes
:*
valueB:*
dtype0
�
{dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
vdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice_2Slicevdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Shape_1|dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice_2/begin{dnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
�
zdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
udnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/concatConcatV2vdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice_1vdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Slice_2zdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
xdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Reshape_2Reshapendnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweightsudnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/concat*'
_output_shapes
:���������*
T0*
Tshape0
�
pdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/DenseToSparseTensor/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
�
jdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/DenseToSparseTensor/NotEqualNotEqualstrided_slice_1pdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/DenseToSparseTensor/ignore_value/x*
T0*'
_output_shapes
:���������
�
idnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/DenseToSparseTensor/indicesWherejdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/DenseToSparseTensor/NotEqual*
T0
*'
_output_shapes
:���������
�
hdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/DenseToSparseTensor/valuesGatherNdstrided_slice_1idnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/DenseToSparseTensor/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
mdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/DenseToSparseTensor/dense_shapeShapestrided_slice_1*
T0*
out_type0	*
_output_shapes
:
�
Tdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/lookupStringToHashBucketFasthdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/DenseToSparseTensor/values*#
_output_shapes
:���������*
num_bucketsd
�
ndnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
pdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
pdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
hdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_sliceStridedSlicemdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/DenseToSparseTensor/dense_shapendnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice/stackpdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice/stack_1pdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice/stack_2*
_output_shapes
:*
T0	*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask 
�
pdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice_1/stackConst*
_output_shapes
:*
valueB:*
dtype0
�
rdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
�
rdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
jdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice_1StridedSlicemdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/DenseToSparseTensor/dense_shapepdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice_1/stackrdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice_1/stack_1rdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice_1/stack_2*
Index0*
T0	*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
�
`dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
_dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/ProdProdjdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slice_1`dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
jdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/concat/values_1Pack_dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/Prod*
T0	*

axis *
N*
_output_shapes
:
�
fdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
adnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/concatConcatV2hdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/strided_slicejdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/concat/values_1fdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/concat/axis*
T0	*
N*
_output_shapes
:*

Tidx0
�
hdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/SparseReshapeSparseReshapeidnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/DenseToSparseTensor/indicesmdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/DenseToSparseTensor/dense_shapeadnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/concat*-
_output_shapes
:���������:
�
qdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/SparseReshape/IdentityIdentityTdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/lookup*
T0	*#
_output_shapes
:���������
�
ddnn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*T
_classJ
HFloc:@dnn/input_from_feature_columns/workclass_embedding/weights/part_0*
valueB"d      *
dtype0*
_output_shapes
:
�
cdnn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal/meanConst*T
_classJ
HFloc:@dnn/input_from_feature_columns/workclass_embedding/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
�
ednn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *T
_classJ
HFloc:@dnn/input_from_feature_columns/workclass_embedding/weights/part_0*
valueB
 *���=
�
ndnn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalddnn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal/shape*

seed *
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/workclass_embedding/weights/part_0*
seed2 *
dtype0*
_output_shapes

:d
�
bdnn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal/mulMulndnn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalednn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal/stddev*
_output_shapes

:d*
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/workclass_embedding/weights/part_0
�
^dnn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normalAddbdnn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal/mulcdnn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal/mean*
_output_shapes

:d*
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/workclass_embedding/weights/part_0
�
Adnn/input_from_feature_columns/workclass_embedding/weights/part_0
VariableV2*
shared_name *T
_classJ
HFloc:@dnn/input_from_feature_columns/workclass_embedding/weights/part_0*
	container *
shape
:d*
dtype0*
_output_shapes

:d
�
Hdnn/input_from_feature_columns/workclass_embedding/weights/part_0/AssignAssignAdnn/input_from_feature_columns/workclass_embedding/weights/part_0^dnn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal*
use_locking(*
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/workclass_embedding/weights/part_0*
validate_shape(*
_output_shapes

:d
�
Fdnn/input_from_feature_columns/workclass_embedding/weights/part_0/readIdentityAdnn/input_from_feature_columns/workclass_embedding/weights/part_0*
_output_shapes

:d*
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/workclass_embedding/weights/part_0
�
tdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
sdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
ndnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/SliceSlicejdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/SparseReshape:1tdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice/beginsdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice/size*
Index0*
T0	*
_output_shapes
:
�
ndnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
mdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/ProdProdndnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slicendnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
ydnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
vdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
qdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2GatherV2jdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/SparseReshape:1ydnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2/indicesvdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
�
odnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Cast/xPackmdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Prodqdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
�
vdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/SparseReshapeSparseReshapehdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/SparseReshapejdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/SparseReshape:1odnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Cast/x*-
_output_shapes
:���������:
�
dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/SparseReshape/IdentityIdentityqdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/SparseReshape/Identity*
T0	*#
_output_shapes
:���������
�
wdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
udnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GreaterEqualGreaterEqualdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/SparseReshape/Identitywdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
ndnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/WhereWhereudnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GreaterEqual*
T0
*'
_output_shapes
:���������
�
vdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
pdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/ReshapeReshapendnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Wherevdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:���������
�
xdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
sdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2_1GatherV2vdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/SparseReshapepdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Reshapexdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2_1/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
xdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
sdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2_2GatherV2dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/SparseReshape/Identitypdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Reshapexdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2_2/axis*#
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
qdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/IdentityIdentityxdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowssdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2_1sdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/GatherV2_2qdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Identity�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
�
�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSlice�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/strided_slice/stack�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*#
_output_shapes
:���������*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
�
�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/CastCast�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:���������*

DstT0
�
�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/UniqueUnique�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:���������:���������*
out_idx0*
T0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/embedding_lookup/axisConst*T
_classJ
HFloc:@dnn/input_from_feature_columns/workclass_embedding/weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherV2Fdnn/input_from_feature_columns/workclass_embedding/weights/part_0/read�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/Unique�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0*T
_classJ
HFloc:@dnn/input_from_feature_columns/workclass_embedding/weights/part_0
�
�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparseSparseSegmentMean�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/embedding_lookup�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/Unique:1�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse/Cast*'
_output_shapes
:���������*

Tidx0*
T0
�
xdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
rdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Reshape_1Reshape�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2xdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Reshape_1/shape*'
_output_shapes
:���������*
T0
*
Tshape0
�
ndnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/ShapeShape�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse*
_output_shapes
:*
T0*
out_type0
�
|dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
~dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
�
~dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
vdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/strided_sliceStridedSlicendnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Shape|dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/strided_slice/stack~dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/strided_slice/stack_1~dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
�
pdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
ndnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/stackPackpdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/stack/0vdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
mdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/TileTilerdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Reshape_1ndnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/stack*0
_output_shapes
:������������������*

Tmultiples0*
T0

�
sdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/zeros_like	ZerosLike�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
hdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweightsSelectmdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Tilesdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/zeros_like�dnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/embedding_lookup_sparse*'
_output_shapes
:���������*
T0
�
odnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Cast_1Castjdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/InnerFlatten/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
�
vdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
udnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
�
pdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice_1Sliceodnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Cast_1vdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice_1/beginudnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice_1/size*
Index0*
T0*
_output_shapes
:
�
pdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Shape_1Shapehdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights*
T0*
out_type0*
_output_shapes
:
�
vdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
�
udnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
pdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice_2Slicepdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Shape_1vdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice_2/beginudnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
�
tdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
odnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/concatConcatV2pdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice_1pdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Slice_2tdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
rdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Reshape_2Reshapehdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweightsodnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/concat*'
_output_shapes
:���������*
T0*
Tshape0
�
mdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/DenseToSparseTensor/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
�
gdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/DenseToSparseTensor/NotEqualNotEqualstrided_slice_8mdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/DenseToSparseTensor/ignore_value/x*'
_output_shapes
:���������*
T0
�
fdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/DenseToSparseTensor/indicesWheregdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/DenseToSparseTensor/NotEqual*'
_output_shapes
:���������*
T0

�
ednn/input_from_feature_columns/input_from_feature_columns/gender_embedding/DenseToSparseTensor/valuesGatherNdstrided_slice_8fdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/DenseToSparseTensor/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
jdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/DenseToSparseTensor/dense_shapeShapestrided_slice_8*
T0*
out_type0	*
_output_shapes
:
�
Wdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/ConstConst*!
valueBBfemaleBmale*
dtype0*
_output_shapes
:
�
Vdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
]dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
]dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
Wdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/rangeRange]dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/range/startVdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/Size]dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/range/delta*
_output_shapes
:*

Tidx0
�
Ydnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/ToInt64CastWdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
\dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/hash_tableHashTableV2*
shared_name *
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: 
�
bdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
gdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/hash_table/table_initInitializeTableV2\dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/hash_tableWdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/ConstYdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/ToInt64*

Tval0	*

Tkey0
�
\dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/hash_table_LookupLookupTableFindV2\dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/hash_tableednn/input_from_feature_columns/input_from_feature_columns/gender_embedding/DenseToSparseTensor/valuesbdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/hash_table/Const*#
_output_shapes
:���������*	
Tin0*

Tout0	
�
kdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
mdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
mdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
ednn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_sliceStridedSlicejdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/DenseToSparseTensor/dense_shapekdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice/stackmdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice/stack_1mdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0	
�
mdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
odnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
�
odnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
gdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice_1StridedSlicejdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/DenseToSparseTensor/dense_shapemdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice_1/stackodnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice_1/stack_1odnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice_1/stack_2*
T0	*
Index0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
_output_shapes
:
�
]dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
\dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/ProdProdgdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slice_1]dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
gdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/concat/values_1Pack\dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/Prod*
T0	*

axis *
N*
_output_shapes
:
�
cdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
^dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/concatConcatV2ednn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/strided_slicegdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/concat/values_1cdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/concat/axis*
T0	*
N*
_output_shapes
:*

Tidx0
�
ednn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/SparseReshapeSparseReshapefdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/DenseToSparseTensor/indicesjdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/DenseToSparseTensor/dense_shape^dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/concat*-
_output_shapes
:���������:
�
ndnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/SparseReshape/IdentityIdentity\dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/hash_table_Lookup*#
_output_shapes
:���������*
T0	
�
adnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*Q
_classG
ECloc:@dnn/input_from_feature_columns/gender_embedding/weights/part_0*
valueB"      *
dtype0*
_output_shapes
:
�
`dnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal/meanConst*
_output_shapes
: *Q
_classG
ECloc:@dnn/input_from_feature_columns/gender_embedding/weights/part_0*
valueB
 *    *
dtype0
�
bdnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*Q
_classG
ECloc:@dnn/input_from_feature_columns/gender_embedding/weights/part_0*
valueB
 *�5?*
dtype0*
_output_shapes
: 
�
kdnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormaladnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal/shape*

seed *
T0*Q
_classG
ECloc:@dnn/input_from_feature_columns/gender_embedding/weights/part_0*
seed2 *
dtype0*
_output_shapes

:
�
_dnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal/mulMulkdnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalbdnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal/stddev*
T0*Q
_classG
ECloc:@dnn/input_from_feature_columns/gender_embedding/weights/part_0*
_output_shapes

:
�
[dnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normalAdd_dnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal/mul`dnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal/mean*
T0*Q
_classG
ECloc:@dnn/input_from_feature_columns/gender_embedding/weights/part_0*
_output_shapes

:
�
>dnn/input_from_feature_columns/gender_embedding/weights/part_0
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *Q
_classG
ECloc:@dnn/input_from_feature_columns/gender_embedding/weights/part_0
�
Ednn/input_from_feature_columns/gender_embedding/weights/part_0/AssignAssign>dnn/input_from_feature_columns/gender_embedding/weights/part_0[dnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal*
use_locking(*
T0*Q
_classG
ECloc:@dnn/input_from_feature_columns/gender_embedding/weights/part_0*
validate_shape(*
_output_shapes

:
�
Cdnn/input_from_feature_columns/gender_embedding/weights/part_0/readIdentity>dnn/input_from_feature_columns/gender_embedding/weights/part_0*
T0*Q
_classG
ECloc:@dnn/input_from_feature_columns/gender_embedding/weights/part_0*
_output_shapes

:
�
ndnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0
�
mdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
hdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/SliceSlicegdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/SparseReshape:1ndnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice/beginmdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice/size*
Index0*
T0	*
_output_shapes
:
�
hdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
gdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/ProdProdhdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slicehdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
sdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
pdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
kdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2GatherV2gdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/SparseReshape:1sdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2/indicespdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
�
idnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Cast/xPackgdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Prodkdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2*
N*
_output_shapes
:*
T0	*

axis 
�
pdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/SparseReshapeSparseReshapeednn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/SparseReshapegdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/SparseReshape:1idnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Cast/x*-
_output_shapes
:���������:
�
ydnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/SparseReshape/IdentityIdentityndnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/SparseReshape/Identity*
T0	*#
_output_shapes
:���������
�
qdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
�
odnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GreaterEqualGreaterEqualydnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/SparseReshape/Identityqdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
hdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/WhereWhereodnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GreaterEqual*
T0
*'
_output_shapes
:���������
�
pdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
jdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/ReshapeReshapehdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Wherepdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Reshape/shape*#
_output_shapes
:���������*
T0	*
Tshape0
�
rdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
mdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2_1GatherV2pdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/SparseReshapejdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Reshaperdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:���������
�
rdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
mdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2_2GatherV2ydnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/SparseReshape/Identityjdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Reshaperdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2_2/axis*#
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
kdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/IdentityIdentityrdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
�
|dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsmdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2_1mdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/GatherV2_2kdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Identity|dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSlice�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/strided_slice/stack�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:���������*
T0	*
Index0
�
dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/CastCast�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:���������*

DstT0*

SrcT0	
�
�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/UniqueUnique�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:���������:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *Q
_classG
ECloc:@dnn/input_from_feature_columns/gender_embedding/weights/part_0*
value	B : 
�
�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherV2Cdnn/input_from_feature_columns/gender_embedding/weights/part_0/read�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/Unique�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*Q
_classG
ECloc:@dnn/input_from_feature_columns/gender_embedding/weights/part_0*'
_output_shapes
:���������
�
zdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparseSparseSegmentMean�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/embedding_lookup�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/Unique:1dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:���������*

Tidx0
�
rdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
ldnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Reshape_1Reshape�dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2rdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Reshape_1/shape*
Tshape0*'
_output_shapes
:���������*
T0

�
hdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/ShapeShapezdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
vdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
xdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
xdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
pdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/strided_sliceStridedSlicehdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Shapevdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/strided_slice/stackxdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/strided_slice/stack_1xdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
jdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
hdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/stackPackjdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/stack/0pdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
gdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/TileTileldnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Reshape_1hdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/stack*
T0
*0
_output_shapes
:������������������*

Tmultiples0
�
mdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/zeros_like	ZerosLikezdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
bdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweightsSelectgdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Tilemdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/zeros_likezdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
idnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Cast_1Castgdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/InnerFlatten/SparseReshape:1*
_output_shapes
:*

DstT0*

SrcT0	
�
pdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
odnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
jdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice_1Sliceidnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Cast_1pdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice_1/beginodnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice_1/size*
Index0*
T0*
_output_shapes
:
�
jdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Shape_1Shapebdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights*
T0*
out_type0*
_output_shapes
:
�
pdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
�
odnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
jdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice_2Slicejdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Shape_1pdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice_2/beginodnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
�
ndnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
idnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/concatConcatV2jdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice_1jdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Slice_2ndnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
ldnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Reshape_2Reshapebdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweightsidnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/concat*
T0*
Tshape0*'
_output_shapes
:���������
�
kdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/DenseToSparseTensor/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
�
ednn/input_from_feature_columns/input_from_feature_columns/race_embedding/DenseToSparseTensor/NotEqualNotEqualstrided_slice_7kdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/DenseToSparseTensor/ignore_value/x*
T0*'
_output_shapes
:���������
�
ddnn/input_from_feature_columns/input_from_feature_columns/race_embedding/DenseToSparseTensor/indicesWhereednn/input_from_feature_columns/input_from_feature_columns/race_embedding/DenseToSparseTensor/NotEqual*
T0
*'
_output_shapes
:���������
�
cdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/DenseToSparseTensor/valuesGatherNdstrided_slice_7ddnn/input_from_feature_columns/input_from_feature_columns/race_embedding/DenseToSparseTensor/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
hdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/DenseToSparseTensor/dense_shapeShapestrided_slice_7*
T0*
out_type0	*
_output_shapes
:
�
Udnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/ConstConst*P
valueGBEBAmer-Indian-EskimoBAsian-Pac-IslanderBBlackBOtherBWhite*
dtype0*
_output_shapes
:
�
Tdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
�
[dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/range/startConst*
_output_shapes
: *
value	B : *
dtype0
�
[dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
Udnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/rangeRange[dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/range/startTdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/Size[dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/range/delta*
_output_shapes
:*

Tidx0
�
Wdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/ToInt64CastUdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/range*

SrcT0*
_output_shapes
:*

DstT0	
�
Zdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *
shared_name *
use_node_name_sharing( *
	key_dtype0*
	container 
�
`dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/hash_table/ConstConst*
dtype0	*
_output_shapes
: *
valueB	 R
���������
�
ednn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/hash_table/table_initInitializeTableV2Zdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/hash_tableUdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/ConstWdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/ToInt64*

Tval0	*

Tkey0
�
Zdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/hash_table_LookupLookupTableFindV2Zdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/hash_tablecdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/DenseToSparseTensor/values`dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/hash_table/Const*#
_output_shapes
:���������*	
Tin0*

Tout0	
�
idnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
kdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
kdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
�
cdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_sliceStridedSlicehdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/DenseToSparseTensor/dense_shapeidnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice/stackkdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice/stack_1kdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
�
kdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice_1/stackConst*
_output_shapes
:*
valueB:*
dtype0
�
mdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice_1/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
�
mdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
ednn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice_1StridedSlicehdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/DenseToSparseTensor/dense_shapekdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice_1/stackmdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice_1/stack_1mdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice_1/stack_2*
new_axis_mask *
end_mask*
_output_shapes
:*
Index0*
T0	*
shrink_axis_mask *

begin_mask *
ellipsis_mask 
�
[dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Zdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/ProdProdednn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_slice_1[dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
ednn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/concat/values_1PackZdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/Prod*
_output_shapes
:*
T0	*

axis *
N
�
adnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
\dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/concatConcatV2cdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/strided_sliceednn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/concat/values_1adnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/concat/axis*

Tidx0*
T0	*
N*
_output_shapes
:
�
cdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/SparseReshapeSparseReshapeddnn/input_from_feature_columns/input_from_feature_columns/race_embedding/DenseToSparseTensor/indiceshdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/DenseToSparseTensor/dense_shape\dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/concat*-
_output_shapes
:���������:
�
ldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/SparseReshape/IdentityIdentityZdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/hash_table_Lookup*
T0	*#
_output_shapes
:���������
�
_dnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*O
_classE
CAloc:@dnn/input_from_feature_columns/race_embedding/weights/part_0*
valueB"      *
dtype0*
_output_shapes
:
�
^dnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal/meanConst*O
_classE
CAloc:@dnn/input_from_feature_columns/race_embedding/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
�
`dnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*O
_classE
CAloc:@dnn/input_from_feature_columns/race_embedding/weights/part_0*
valueB
 *.��>*
dtype0*
_output_shapes
: 
�
idnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormal_dnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal/shape*
dtype0*
_output_shapes

:*

seed *
T0*O
_classE
CAloc:@dnn/input_from_feature_columns/race_embedding/weights/part_0*
seed2 
�
]dnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal/mulMulidnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormal`dnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal/stddev*
_output_shapes

:*
T0*O
_classE
CAloc:@dnn/input_from_feature_columns/race_embedding/weights/part_0
�
Ydnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normalAdd]dnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal/mul^dnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal/mean*
T0*O
_classE
CAloc:@dnn/input_from_feature_columns/race_embedding/weights/part_0*
_output_shapes

:
�
<dnn/input_from_feature_columns/race_embedding/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *O
_classE
CAloc:@dnn/input_from_feature_columns/race_embedding/weights/part_0*
	container *
shape
:
�
Cdnn/input_from_feature_columns/race_embedding/weights/part_0/AssignAssign<dnn/input_from_feature_columns/race_embedding/weights/part_0Ydnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal*
use_locking(*
T0*O
_classE
CAloc:@dnn/input_from_feature_columns/race_embedding/weights/part_0*
validate_shape(*
_output_shapes

:
�
Adnn/input_from_feature_columns/race_embedding/weights/part_0/readIdentity<dnn/input_from_feature_columns/race_embedding/weights/part_0*
T0*O
_classE
CAloc:@dnn/input_from_feature_columns/race_embedding/weights/part_0*
_output_shapes

:
�
jdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
idnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
ddnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/SliceSliceednn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/SparseReshape:1jdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice/beginidnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice/size*
_output_shapes
:*
Index0*
T0	
�
ddnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
cdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/ProdProdddnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Sliceddnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Const*
	keep_dims( *

Tidx0*
T0	*
_output_shapes
: 
�
odnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
ldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
gdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2GatherV2ednn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/SparseReshape:1odnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2/indicesldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
�
ednn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Cast/xPackcdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Prodgdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2*
N*
_output_shapes
:*
T0	*

axis 
�
ldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/SparseReshapeSparseReshapecdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/SparseReshapeednn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/SparseReshape:1ednn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Cast/x*-
_output_shapes
:���������:
�
udnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/SparseReshape/IdentityIdentityldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/SparseReshape/Identity*#
_output_shapes
:���������*
T0	
�
mdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
kdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GreaterEqualGreaterEqualudnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/SparseReshape/Identitymdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
ddnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/WhereWherekdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GreaterEqual*
T0
*'
_output_shapes
:���������
�
ldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
fdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/ReshapeReshapeddnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Whereldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:���������
�
ndnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
idnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2_1GatherV2ldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/SparseReshapefdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Reshapendnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:���������*
Taxis0
�
ndnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
idnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2_2GatherV2udnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/SparseReshape/Identityfdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Reshapendnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:���������*
Taxis0
�
gdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/IdentityIdentityndnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/SparseReshape:1*
_output_shapes
:*
T0	
�
xdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsidnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2_1idnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/GatherV2_2gdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Identityxdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
�
�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSlice�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/strided_slice/stack�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:���������*
T0	*
Index0
�
{dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/CastCast�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:���������*

DstT0
�
}dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/UniqueUnique�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:���������:���������
�
�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/embedding_lookup/axisConst*O
_classE
CAloc:@dnn/input_from_feature_columns/race_embedding/weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
�
�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherV2Adnn/input_from_feature_columns/race_embedding/weights/part_0/read}dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/Unique�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/embedding_lookup/axis*
Tindices0	*
Tparams0*O
_classE
CAloc:@dnn/input_from_feature_columns/race_embedding/weights/part_0*'
_output_shapes
:���������*
Taxis0
�
vdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparseSparseSegmentMean�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/embedding_lookupdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/Unique:1{dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse/Cast*'
_output_shapes
:���������*

Tidx0*
T0
�
ndnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
hdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Reshape_1Reshape�dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2ndnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:���������
�
ddnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/ShapeShapevdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
rdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
�
tdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
tdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
ldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/strided_sliceStridedSliceddnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Shaperdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/strided_slice/stacktdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/strided_slice/stack_1tdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
fdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
ddnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/stackPackfdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/stack/0ldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
cdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/TileTilehdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Reshape_1ddnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/stack*

Tmultiples0*
T0
*0
_output_shapes
:������������������
�
idnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/zeros_like	ZerosLikevdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
^dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweightsSelectcdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Tileidnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/zeros_likevdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
ednn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Cast_1Castednn/input_from_feature_columns/input_from_feature_columns/race_embedding/InnerFlatten/SparseReshape:1*

SrcT0	*
_output_shapes
:*

DstT0
�
ldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
kdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice_1/sizeConst*
dtype0*
_output_shapes
:*
valueB:
�
fdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice_1Sliceednn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Cast_1ldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice_1/beginkdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice_1/size*
_output_shapes
:*
Index0*
T0
�
fdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Shape_1Shape^dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights*
T0*
out_type0*
_output_shapes
:
�
ldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice_2/beginConst*
_output_shapes
:*
valueB:*
dtype0
�
kdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
fdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice_2Slicefdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Shape_1ldnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice_2/beginkdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
�
jdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
ednn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/concatConcatV2fdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice_1fdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Slice_2jdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
hdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Reshape_2Reshape^dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweightsednn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/concat*
T0*
Tshape0*'
_output_shapes
:���������
�
Ednn/input_from_feature_columns/input_from_feature_columns/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
�	
@dnn/input_from_feature_columns/input_from_feature_columns/concatConcatV2rdnn/input_from_feature_columns/input_from_feature_columns/education_embedding/education_embeddingweights/Reshape_2|dnn/input_from_feature_columns/input_from_feature_columns/marital_status_embedding/marital_status_embeddingweights/Reshape_2|dnn/input_from_feature_columns/input_from_feature_columns/native_country_embedding/native_country_embeddingweights/Reshape_2tdnn/input_from_feature_columns/input_from_feature_columns/occupation_embedding/occupation_embeddingweights/Reshape_2xdnn/input_from_feature_columns/input_from_feature_columns/relationship_embedding/relationship_embeddingweights/Reshape_2rdnn/input_from_feature_columns/input_from_feature_columns/workclass_embedding/workclass_embeddingweights/Reshape_2ldnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/gender_embeddingweights/Reshape_2hdnn/input_from_feature_columns/input_from_feature_columns/race_embedding/race_embeddingweights/Reshape_2strided_slicestrided_slice_9strided_slice_10strided_slice_3strided_slice_11Ednn/input_from_feature_columns/input_from_feature_columns/concat/axis*

Tidx0*
T0*
N*'
_output_shapes
:���������E
�
Adnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
_output_shapes
:*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
valueB"E   d   *
dtype0
�
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
valueB
 *��@�*
dtype0*
_output_shapes
: 
�
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
valueB
 *��@>*
dtype0*
_output_shapes
: 
�
Idnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:Ed*

seed *
T0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
seed2 
�
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
_output_shapes
: *
T0
�
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/sub*
T0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
_output_shapes

:Ed
�
;dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*
_output_shapes

:Ed*
T0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
�
 dnn/hiddenlayer_0/weights/part_0
VariableV2*
shape
:Ed*
dtype0*
_output_shapes

:Ed*
shared_name *3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
	container 
�
'dnn/hiddenlayer_0/weights/part_0/AssignAssign dnn/hiddenlayer_0/weights/part_0;dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform*
_output_shapes

:Ed*
use_locking(*
T0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
validate_shape(
�
%dnn/hiddenlayer_0/weights/part_0/readIdentity dnn/hiddenlayer_0/weights/part_0*
T0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
_output_shapes

:Ed
�
1dnn/hiddenlayer_0/biases/part_0/Initializer/zerosConst*
_output_shapes
:d*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
valueBd*    *
dtype0
�
dnn/hiddenlayer_0/biases/part_0
VariableV2*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
	container *
shape:d*
dtype0*
_output_shapes
:d*
shared_name 
�
&dnn/hiddenlayer_0/biases/part_0/AssignAssigndnn/hiddenlayer_0/biases/part_01dnn/hiddenlayer_0/biases/part_0/Initializer/zeros*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
validate_shape(*
_output_shapes
:d*
use_locking(*
T0
�
$dnn/hiddenlayer_0/biases/part_0/readIdentitydnn/hiddenlayer_0/biases/part_0*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
_output_shapes
:d*
T0
u
dnn/hiddenlayer_0/weightsIdentity%dnn/hiddenlayer_0/weights/part_0/read*
_output_shapes

:Ed*
T0
�
dnn/hiddenlayer_0/MatMulMatMul@dnn/input_from_feature_columns/input_from_feature_columns/concatdnn/hiddenlayer_0/weights*
T0*'
_output_shapes
:���������d*
transpose_a( *
transpose_b( 
o
dnn/hiddenlayer_0/biasesIdentity$dnn/hiddenlayer_0/biases/part_0/read*
_output_shapes
:d*
T0
�
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/biases*'
_output_shapes
:���������d*
T0*
data_formatNHWC
y
$dnn/hiddenlayer_0/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:���������d
[
dnn/zero_fraction/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
dnn/zero_fraction/EqualEqual$dnn/hiddenlayer_0/hiddenlayer_0/Reludnn/zero_fraction/zero*
T0*'
_output_shapes
:���������d
x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*'
_output_shapes
:���������d*

DstT0*

SrcT0

h
dnn/zero_fraction/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
dtype0*
_output_shapes
: 
�
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 
�
$dnn/dnn/hiddenlayer_0/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
dtype0*
_output_shapes
: 
�
 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tag$dnn/hiddenlayer_0/hiddenlayer_0/Relu*
_output_shapes
: *
T0
�
Adnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
valueB"d   F   *
dtype0*
_output_shapes
:
�
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
valueB
 *H`@�*
dtype0*
_output_shapes
: 
�
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
valueB
 *H`@>*
dtype0*
_output_shapes
: 
�
Idnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:dF*

seed *
T0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
seed2 
�
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
_output_shapes
: *
T0
�
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/sub*
_output_shapes

:dF*
T0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
�
;dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
_output_shapes

:dF*
T0
�
 dnn/hiddenlayer_1/weights/part_0
VariableV2*
shared_name *3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
	container *
shape
:dF*
dtype0*
_output_shapes

:dF
�
'dnn/hiddenlayer_1/weights/part_0/AssignAssign dnn/hiddenlayer_1/weights/part_0;dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform*
use_locking(*
T0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
validate_shape(*
_output_shapes

:dF
�
%dnn/hiddenlayer_1/weights/part_0/readIdentity dnn/hiddenlayer_1/weights/part_0*
T0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
_output_shapes

:dF
�
1dnn/hiddenlayer_1/biases/part_0/Initializer/zerosConst*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
valueBF*    *
dtype0*
_output_shapes
:F
�
dnn/hiddenlayer_1/biases/part_0
VariableV2*
dtype0*
_output_shapes
:F*
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
	container *
shape:F
�
&dnn/hiddenlayer_1/biases/part_0/AssignAssigndnn/hiddenlayer_1/biases/part_01dnn/hiddenlayer_1/biases/part_0/Initializer/zeros*
_output_shapes
:F*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
validate_shape(
�
$dnn/hiddenlayer_1/biases/part_0/readIdentitydnn/hiddenlayer_1/biases/part_0*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
_output_shapes
:F
u
dnn/hiddenlayer_1/weightsIdentity%dnn/hiddenlayer_1/weights/part_0/read*
_output_shapes

:dF*
T0
�
dnn/hiddenlayer_1/MatMulMatMul$dnn/hiddenlayer_0/hiddenlayer_0/Reludnn/hiddenlayer_1/weights*
transpose_b( *
T0*'
_output_shapes
:���������F*
transpose_a( 
o
dnn/hiddenlayer_1/biasesIdentity$dnn/hiddenlayer_1/biases/part_0/read*
T0*
_output_shapes
:F
�
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/biases*
T0*
data_formatNHWC*'
_output_shapes
:���������F
y
$dnn/hiddenlayer_1/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*'
_output_shapes
:���������F*
T0
]
dnn/zero_fraction_1/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
dnn/zero_fraction_1/EqualEqual$dnn/hiddenlayer_1/hiddenlayer_1/Reludnn/zero_fraction_1/zero*'
_output_shapes
:���������F*
T0
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

SrcT0
*'
_output_shapes
:���������F*

DstT0
j
dnn/zero_fraction_1/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
�
dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*
_output_shapes
: *>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
dtype0
�
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 
�
$dnn/dnn/hiddenlayer_1/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_1/activation*
dtype0*
_output_shapes
: 
�
 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tag$dnn/hiddenlayer_1/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
�
Adnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/shapeConst*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
valueB"F   2   *
dtype0*
_output_shapes
:
�
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/minConst*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
valueB
 *.�d�*
dtype0*
_output_shapes
: 
�
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/maxConst*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
valueB
 *.�d>*
dtype0
�
Idnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:F2*

seed *
T0*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
seed2 
�
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
_output_shapes
: *
T0
�
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/sub*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
_output_shapes

:F2*
T0
�
;dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
_output_shapes

:F2
�
 dnn/hiddenlayer_2/weights/part_0
VariableV2*
dtype0*
_output_shapes

:F2*
shared_name *3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
	container *
shape
:F2
�
'dnn/hiddenlayer_2/weights/part_0/AssignAssign dnn/hiddenlayer_2/weights/part_0;dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform*
T0*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
validate_shape(*
_output_shapes

:F2*
use_locking(
�
%dnn/hiddenlayer_2/weights/part_0/readIdentity dnn/hiddenlayer_2/weights/part_0*
T0*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
_output_shapes

:F2
�
1dnn/hiddenlayer_2/biases/part_0/Initializer/zerosConst*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
valueB2*    *
dtype0*
_output_shapes
:2
�
dnn/hiddenlayer_2/biases/part_0
VariableV2*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
	container *
shape:2*
dtype0*
_output_shapes
:2*
shared_name 
�
&dnn/hiddenlayer_2/biases/part_0/AssignAssigndnn/hiddenlayer_2/biases/part_01dnn/hiddenlayer_2/biases/part_0/Initializer/zeros*
validate_shape(*
_output_shapes
:2*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0
�
$dnn/hiddenlayer_2/biases/part_0/readIdentitydnn/hiddenlayer_2/biases/part_0*
_output_shapes
:2*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0
u
dnn/hiddenlayer_2/weightsIdentity%dnn/hiddenlayer_2/weights/part_0/read*
_output_shapes

:F2*
T0
�
dnn/hiddenlayer_2/MatMulMatMul$dnn/hiddenlayer_1/hiddenlayer_1/Reludnn/hiddenlayer_2/weights*
T0*'
_output_shapes
:���������2*
transpose_a( *
transpose_b( 
o
dnn/hiddenlayer_2/biasesIdentity$dnn/hiddenlayer_2/biases/part_0/read*
_output_shapes
:2*
T0
�
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/biases*
data_formatNHWC*'
_output_shapes
:���������2*
T0
y
$dnn/hiddenlayer_2/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:���������2
]
dnn/zero_fraction_2/zeroConst*
_output_shapes
: *
valueB
 *    *
dtype0
�
dnn/zero_fraction_2/EqualEqual$dnn/hiddenlayer_2/hiddenlayer_2/Reludnn/zero_fraction_2/zero*'
_output_shapes
:���������2*
T0
|
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

SrcT0
*'
_output_shapes
:���������2*

DstT0
j
dnn/zero_fraction_2/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
�
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
dtype0*
_output_shapes
: 
�
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
T0*
_output_shapes
: 
�
$dnn/dnn/hiddenlayer_2/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_2/activation*
dtype0*
_output_shapes
: 
�
 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tag$dnn/hiddenlayer_2/hiddenlayer_2/Relu*
T0*
_output_shapes
: 
�
Adnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
valueB"2      
�
?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/minConst*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
valueB
 *�А�*
dtype0*
_output_shapes
: 
�
?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
valueB
 *�А>
�
Idnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:2*

seed *
T0*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
seed2 
�
?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
_output_shapes
: *
T0
�
?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/sub*
_output_shapes

:2*
T0*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0
�
;dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
_output_shapes

:2
�
 dnn/hiddenlayer_3/weights/part_0
VariableV2*
dtype0*
_output_shapes

:2*
shared_name *3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
	container *
shape
:2
�
'dnn/hiddenlayer_3/weights/part_0/AssignAssign dnn/hiddenlayer_3/weights/part_0;dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
validate_shape(*
_output_shapes

:2*
use_locking(*
T0
�
%dnn/hiddenlayer_3/weights/part_0/readIdentity dnn/hiddenlayer_3/weights/part_0*
T0*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
_output_shapes

:2
�
1dnn/hiddenlayer_3/biases/part_0/Initializer/zerosConst*2
_class(
&$loc:@dnn/hiddenlayer_3/biases/part_0*
valueB*    *
dtype0*
_output_shapes
:
�
dnn/hiddenlayer_3/biases/part_0
VariableV2*
dtype0*
_output_shapes
:*
shared_name *2
_class(
&$loc:@dnn/hiddenlayer_3/biases/part_0*
	container *
shape:
�
&dnn/hiddenlayer_3/biases/part_0/AssignAssigndnn/hiddenlayer_3/biases/part_01dnn/hiddenlayer_3/biases/part_0/Initializer/zeros*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/biases/part_0*
validate_shape(*
_output_shapes
:
�
$dnn/hiddenlayer_3/biases/part_0/readIdentitydnn/hiddenlayer_3/biases/part_0*2
_class(
&$loc:@dnn/hiddenlayer_3/biases/part_0*
_output_shapes
:*
T0
u
dnn/hiddenlayer_3/weightsIdentity%dnn/hiddenlayer_3/weights/part_0/read*
T0*
_output_shapes

:2
�
dnn/hiddenlayer_3/MatMulMatMul$dnn/hiddenlayer_2/hiddenlayer_2/Reludnn/hiddenlayer_3/weights*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
o
dnn/hiddenlayer_3/biasesIdentity$dnn/hiddenlayer_3/biases/part_0/read*
T0*
_output_shapes
:
�
dnn/hiddenlayer_3/BiasAddBiasAdddnn/hiddenlayer_3/MatMuldnn/hiddenlayer_3/biases*'
_output_shapes
:���������*
T0*
data_formatNHWC
y
$dnn/hiddenlayer_3/hiddenlayer_3/ReluReludnn/hiddenlayer_3/BiasAdd*'
_output_shapes
:���������*
T0
]
dnn/zero_fraction_3/zeroConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
dnn/zero_fraction_3/EqualEqual$dnn/hiddenlayer_3/hiddenlayer_3/Reludnn/zero_fraction_3/zero*'
_output_shapes
:���������*
T0
|
dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

SrcT0
*'
_output_shapes
:���������*

DstT0
j
dnn/zero_fraction_3/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsConst*>
value5B3 B-dnn/dnn/hiddenlayer_3/fraction_of_zero_values*
dtype0*
_output_shapes
: 
�
-dnn/dnn/hiddenlayer_3/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_3/fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
T0*
_output_shapes
: 
�
$dnn/dnn/hiddenlayer_3/activation/tagConst*1
value(B& B dnn/dnn/hiddenlayer_3/activation*
dtype0*
_output_shapes
: 
�
 dnn/dnn/hiddenlayer_3/activationHistogramSummary$dnn/dnn/hiddenlayer_3/activation/tag$dnn/hiddenlayer_3/hiddenlayer_3/Relu*
T0*
_output_shapes
: 
�
:dnn/logits/weights/part_0/Initializer/random_uniform/shapeConst*,
_class"
 loc:@dnn/logits/weights/part_0*
valueB"      *
dtype0*
_output_shapes
:
�
8dnn/logits/weights/part_0/Initializer/random_uniform/minConst*,
_class"
 loc:@dnn/logits/weights/part_0*
valueB
 *����*
dtype0*
_output_shapes
: 
�
8dnn/logits/weights/part_0/Initializer/random_uniform/maxConst*,
_class"
 loc:@dnn/logits/weights/part_0*
valueB
 *���>*
dtype0*
_output_shapes
: 
�
Bdnn/logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn/logits/weights/part_0/Initializer/random_uniform/shape*
seed2 *
dtype0*
_output_shapes

:*

seed *
T0*,
_class"
 loc:@dnn/logits/weights/part_0
�
8dnn/logits/weights/part_0/Initializer/random_uniform/subSub8dnn/logits/weights/part_0/Initializer/random_uniform/max8dnn/logits/weights/part_0/Initializer/random_uniform/min*
_output_shapes
: *
T0*,
_class"
 loc:@dnn/logits/weights/part_0
�
8dnn/logits/weights/part_0/Initializer/random_uniform/mulMulBdnn/logits/weights/part_0/Initializer/random_uniform/RandomUniform8dnn/logits/weights/part_0/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@dnn/logits/weights/part_0*
_output_shapes

:
�
4dnn/logits/weights/part_0/Initializer/random_uniformAdd8dnn/logits/weights/part_0/Initializer/random_uniform/mul8dnn/logits/weights/part_0/Initializer/random_uniform/min*
_output_shapes

:*
T0*,
_class"
 loc:@dnn/logits/weights/part_0
�
dnn/logits/weights/part_0
VariableV2*,
_class"
 loc:@dnn/logits/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
�
 dnn/logits/weights/part_0/AssignAssigndnn/logits/weights/part_04dnn/logits/weights/part_0/Initializer/random_uniform*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*,
_class"
 loc:@dnn/logits/weights/part_0
�
dnn/logits/weights/part_0/readIdentitydnn/logits/weights/part_0*
T0*,
_class"
 loc:@dnn/logits/weights/part_0*
_output_shapes

:
�
*dnn/logits/biases/part_0/Initializer/zerosConst*+
_class!
loc:@dnn/logits/biases/part_0*
valueB*    *
dtype0*
_output_shapes
:
�
dnn/logits/biases/part_0
VariableV2*
dtype0*
_output_shapes
:*
shared_name *+
_class!
loc:@dnn/logits/biases/part_0*
	container *
shape:
�
dnn/logits/biases/part_0/AssignAssigndnn/logits/biases/part_0*dnn/logits/biases/part_0/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@dnn/logits/biases/part_0*
validate_shape(*
_output_shapes
:
�
dnn/logits/biases/part_0/readIdentitydnn/logits/biases/part_0*
T0*+
_class!
loc:@dnn/logits/biases/part_0*
_output_shapes
:
g
dnn/logits/weightsIdentitydnn/logits/weights/part_0/read*
T0*
_output_shapes

:
�
dnn/logits/MatMulMatMul$dnn/hiddenlayer_3/hiddenlayer_3/Reludnn/logits/weights*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
a
dnn/logits/biasesIdentitydnn/logits/biases/part_0/read*
T0*
_output_shapes
:
�
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/biases*
T0*
data_formatNHWC*'
_output_shapes
:���������
]
dnn/zero_fraction_4/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
dnn/zero_fraction_4/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_4/zero*
T0*'
_output_shapes
:���������
|
dnn/zero_fraction_4/CastCastdnn/zero_fraction_4/Equal*

SrcT0
*'
_output_shapes
:���������*

DstT0
j
dnn/zero_fraction_4/ConstConst*
_output_shapes
:*
valueB"       *
dtype0
�
dnn/zero_fraction_4/MeanMeandnn/zero_fraction_4/Castdnn/zero_fraction_4/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
�
+dnn/dnn/logits/fraction_of_zero_values/tagsConst*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
dtype0*
_output_shapes
: 
�
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_4/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst**
value!B Bdnn/dnn/logits/activation*
dtype0*
_output_shapes
: 
�
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
�
linear/linear/bucketize	Bucketizestrided_slice*:

boundaries,
*"(  �A  �A  �A  B   B  4B  HB  \B  pB  �B*
T0*'
_output_shapes
:���������
j
linear/linear/shapeShapelinear/linear/bucketize*
T0*
out_type0*
_output_shapes
:
k
!linear/linear/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
m
#linear/linear/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
m
#linear/linear/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
linear/linear/strided_sliceStridedSlicelinear/linear/shape!linear/linear/strided_slice/stack#linear/linear/strided_slice/stack_1#linear/linear/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
[
linear/linear/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
[
linear/linear/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
linear/linear/rangeRangelinear/linear/range/startlinear/linear/strided_slicelinear/linear/range/delta*#
_output_shapes
:���������*

Tidx0
]
linear/linear/zeros/Less/yConst*
value
B :�*
dtype0*
_output_shapes
: 
z
linear/linear/zeros/LessLesslinear/linear/strided_slicelinear/linear/zeros/Less/y*
T0*
_output_shapes
: 
y
linear/linear/zeros/packedPacklinear/linear/strided_slice*
T0*

axis *
N*
_output_shapes
:
[
linear/linear/zeros/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
�
linear/linear/zerosFilllinear/linear/zeros/packedlinear/linear/zeros/Const*
T0*

index_type0*#
_output_shapes
:���������
n
linear/linear/reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
linear/linear/reshapeReshapelinear/linear/bucketizelinear/linear/reshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
�
linear/linear/stackPacklinear/linear/rangelinear/linear/zeros*
T0*

axis *
N*'
_output_shapes
:���������
Z
linear/linear/transpose/RankRanklinear/linear/stack*
T0*
_output_shapes
: 
_
linear/linear/transpose/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
linear/linear/transpose/subSublinear/linear/transpose/Ranklinear/linear/transpose/sub/y*
_output_shapes
: *
T0
e
#linear/linear/transpose/Range/startConst*
_output_shapes
: *
value	B : *
dtype0
e
#linear/linear/transpose/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
linear/linear/transpose/RangeRange#linear/linear/transpose/Range/startlinear/linear/transpose/Rank#linear/linear/transpose/Range/delta*
_output_shapes
:*

Tidx0
�
linear/linear/transpose/sub_1Sublinear/linear/transpose/sublinear/linear/transpose/Range*
T0*
_output_shapes
:
�
linear/linear/transpose	Transposelinear/linear/stacklinear/linear/transpose/sub_1*
T0*'
_output_shapes
:���������*
Tperm0
w
linear/linear/ToInt64Castlinear/linear/transpose*'
_output_shapes
:���������*

DstT0	*

SrcT0
Y
linear/linear/stack_1/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
linear/linear/stack_1Packlinear/linear/strided_slicelinear/linear/stack_1/1*
T0*

axis *
N*
_output_shapes
:
j
linear/linear/ToInt64_1Castlinear/linear/stack_1*

SrcT0*
_output_shapes
:*

DstT0	
�
6linear/age_bucketized/weights/part_0/Initializer/zerosConst*7
_class-
+)loc:@linear/age_bucketized/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
$linear/age_bucketized/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *7
_class-
+)loc:@linear/age_bucketized/weights/part_0*
	container *
shape
:
�
+linear/age_bucketized/weights/part_0/AssignAssign$linear/age_bucketized/weights/part_06linear/age_bucketized/weights/part_0/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@linear/age_bucketized/weights/part_0*
validate_shape(*
_output_shapes

:
�
)linear/age_bucketized/weights/part_0/readIdentity$linear/age_bucketized/weights/part_0*
T0*7
_class-
+)loc:@linear/age_bucketized/weights/part_0*
_output_shapes

:
�
?linear/linear/age_bucketized/age_bucketized_weights/Slice/beginConst*
dtype0*
_output_shapes
:*
valueB: 
�
>linear/linear/age_bucketized/age_bucketized_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
9linear/linear/age_bucketized/age_bucketized_weights/SliceSlicelinear/linear/ToInt64_1?linear/linear/age_bucketized/age_bucketized_weights/Slice/begin>linear/linear/age_bucketized/age_bucketized_weights/Slice/size*
_output_shapes
:*
Index0*
T0	
�
9linear/linear/age_bucketized/age_bucketized_weights/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
�
8linear/linear/age_bucketized/age_bucketized_weights/ProdProd9linear/linear/age_bucketized/age_bucketized_weights/Slice9linear/linear/age_bucketized/age_bucketized_weights/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
Dlinear/linear/age_bucketized/age_bucketized_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
Alinear/linear/age_bucketized/age_bucketized_weights/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
<linear/linear/age_bucketized/age_bucketized_weights/GatherV2GatherV2linear/linear/ToInt64_1Dlinear/linear/age_bucketized/age_bucketized_weights/GatherV2/indicesAlinear/linear/age_bucketized/age_bucketized_weights/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
�
:linear/linear/age_bucketized/age_bucketized_weights/Cast/xPack8linear/linear/age_bucketized/age_bucketized_weights/Prod<linear/linear/age_bucketized/age_bucketized_weights/GatherV2*
_output_shapes
:*
T0	*

axis *
N
�
Alinear/linear/age_bucketized/age_bucketized_weights/SparseReshapeSparseReshapelinear/linear/ToInt64linear/linear/ToInt64_1:linear/linear/age_bucketized/age_bucketized_weights/Cast/x*-
_output_shapes
:���������:
�
Jlinear/linear/age_bucketized/age_bucketized_weights/SparseReshape/IdentityIdentitylinear/linear/reshape*#
_output_shapes
:���������*
T0
�
Blinear/linear/age_bucketized/age_bucketized_weights/GreaterEqual/yConst*
value	B : *
dtype0*
_output_shapes
: 
�
@linear/linear/age_bucketized/age_bucketized_weights/GreaterEqualGreaterEqualJlinear/linear/age_bucketized/age_bucketized_weights/SparseReshape/IdentityBlinear/linear/age_bucketized/age_bucketized_weights/GreaterEqual/y*#
_output_shapes
:���������*
T0
�
9linear/linear/age_bucketized/age_bucketized_weights/WhereWhere@linear/linear/age_bucketized/age_bucketized_weights/GreaterEqual*
T0
*'
_output_shapes
:���������
�
Alinear/linear/age_bucketized/age_bucketized_weights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
;linear/linear/age_bucketized/age_bucketized_weights/ReshapeReshape9linear/linear/age_bucketized/age_bucketized_weights/WhereAlinear/linear/age_bucketized/age_bucketized_weights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:���������
�
Clinear/linear/age_bucketized/age_bucketized_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
>linear/linear/age_bucketized/age_bucketized_weights/GatherV2_1GatherV2Alinear/linear/age_bucketized/age_bucketized_weights/SparseReshape;linear/linear/age_bucketized/age_bucketized_weights/ReshapeClinear/linear/age_bucketized/age_bucketized_weights/GatherV2_1/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
Clinear/linear/age_bucketized/age_bucketized_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
>linear/linear/age_bucketized/age_bucketized_weights/GatherV2_2GatherV2Jlinear/linear/age_bucketized/age_bucketized_weights/SparseReshape/Identity;linear/linear/age_bucketized/age_bucketized_weights/ReshapeClinear/linear/age_bucketized/age_bucketized_weights/GatherV2_2/axis*
Tparams0*#
_output_shapes
:���������*
Taxis0*
Tindices0	
�
<linear/linear/age_bucketized/age_bucketized_weights/IdentityIdentityClinear/linear/age_bucketized/age_bucketized_weights/SparseReshape:1*
_output_shapes
:*
T0	
�
Mlinear/linear/age_bucketized/age_bucketized_weights/SparseFillEmptyRows/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
�
[linear/linear/age_bucketized/age_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows>linear/linear/age_bucketized/age_bucketized_weights/GatherV2_1>linear/linear/age_bucketized/age_bucketized_weights/GatherV2_2<linear/linear/age_bucketized/age_bucketized_weights/IdentityMlinear/linear/age_bucketized/age_bucketized_weights/SparseFillEmptyRows/Const*
T0*T
_output_shapesB
@:���������:���������:���������:���������
�
_linear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
�
alinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
alinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
�
Ylinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/strided_sliceStridedSlice[linear/linear/age_bucketized/age_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRows_linear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/strided_slice/stackalinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_1alinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_2*#
_output_shapes
:���������*
Index0*
T0	*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask
�
Plinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/CastCastYlinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:���������*

DstT0*

SrcT0	
�
Rlinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/UniqueUnique]linear/linear/age_bucketized/age_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0*2
_output_shapes 
:���������:���������
�
alinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
_output_shapes
: *7
_class-
+)loc:@linear/age_bucketized/weights/part_0*
value	B : *
dtype0
�
\linear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/embedding_lookupGatherV2)linear/age_bucketized/weights/part_0/readRlinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/Uniquealinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0*
Tparams0*7
_class-
+)loc:@linear/age_bucketized/weights/part_0*'
_output_shapes
:���������
�
Klinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparseSparseSegmentSum\linear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/embedding_lookupTlinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/Unique:1Plinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:���������*

Tidx0
�
Clinear/linear/age_bucketized/age_bucketized_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
=linear/linear/age_bucketized/age_bucketized_weights/Reshape_1Reshape]linear/linear/age_bucketized/age_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Clinear/linear/age_bucketized/age_bucketized_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:���������
�
9linear/linear/age_bucketized/age_bucketized_weights/ShapeShapeKlinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
Glinear/linear/age_bucketized/age_bucketized_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
Ilinear/linear/age_bucketized/age_bucketized_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
�
Ilinear/linear/age_bucketized/age_bucketized_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Alinear/linear/age_bucketized/age_bucketized_weights/strided_sliceStridedSlice9linear/linear/age_bucketized/age_bucketized_weights/ShapeGlinear/linear/age_bucketized/age_bucketized_weights/strided_slice/stackIlinear/linear/age_bucketized/age_bucketized_weights/strided_slice/stack_1Ilinear/linear/age_bucketized/age_bucketized_weights/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
}
;linear/linear/age_bucketized/age_bucketized_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
9linear/linear/age_bucketized/age_bucketized_weights/stackPack;linear/linear/age_bucketized/age_bucketized_weights/stack/0Alinear/linear/age_bucketized/age_bucketized_weights/strided_slice*

axis *
N*
_output_shapes
:*
T0
�
8linear/linear/age_bucketized/age_bucketized_weights/TileTile=linear/linear/age_bucketized/age_bucketized_weights/Reshape_19linear/linear/age_bucketized/age_bucketized_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:������������������
�
>linear/linear/age_bucketized/age_bucketized_weights/zeros_like	ZerosLikeKlinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
3linear/linear/age_bucketized/age_bucketized_weightsSelect8linear/linear/age_bucketized/age_bucketized_weights/Tile>linear/linear/age_bucketized/age_bucketized_weights/zeros_likeKlinear/linear/age_bucketized/age_bucketized_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
:linear/linear/age_bucketized/age_bucketized_weights/Cast_1Castlinear/linear/ToInt64_1*
_output_shapes
:*

DstT0*

SrcT0	
�
Alinear/linear/age_bucketized/age_bucketized_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
�
@linear/linear/age_bucketized/age_bucketized_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
;linear/linear/age_bucketized/age_bucketized_weights/Slice_1Slice:linear/linear/age_bucketized/age_bucketized_weights/Cast_1Alinear/linear/age_bucketized/age_bucketized_weights/Slice_1/begin@linear/linear/age_bucketized/age_bucketized_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
�
;linear/linear/age_bucketized/age_bucketized_weights/Shape_1Shape3linear/linear/age_bucketized/age_bucketized_weights*
T0*
out_type0*
_output_shapes
:
�
Alinear/linear/age_bucketized/age_bucketized_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
�
@linear/linear/age_bucketized/age_bucketized_weights/Slice_2/sizeConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
;linear/linear/age_bucketized/age_bucketized_weights/Slice_2Slice;linear/linear/age_bucketized/age_bucketized_weights/Shape_1Alinear/linear/age_bucketized/age_bucketized_weights/Slice_2/begin@linear/linear/age_bucketized/age_bucketized_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
�
?linear/linear/age_bucketized/age_bucketized_weights/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
:linear/linear/age_bucketized/age_bucketized_weights/concatConcatV2;linear/linear/age_bucketized/age_bucketized_weights/Slice_1;linear/linear/age_bucketized/age_bucketized_weights/Slice_2?linear/linear/age_bucketized/age_bucketized_weights/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
=linear/linear/age_bucketized/age_bucketized_weights/Reshape_2Reshape3linear/linear/age_bucketized/age_bucketized_weights:linear/linear/age_bucketized/age_bucketized_weights/concat*
T0*
Tshape0*'
_output_shapes
:���������
n
linear/linear/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
linear/linear/Reshape_1Reshape=linear/linear/age_bucketized/age_bucketized_weights/Reshape_2linear/linear/Reshape_1/shape*
T0*
Tshape0*'
_output_shapes
:���������
l
linear/linear/shape_1Shapelinear/linear/bucketize*
out_type0*
_output_shapes
:*
T0
m
#linear/linear/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
o
%linear/linear/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
o
%linear/linear/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
linear/linear/strided_slice_1StridedSlicelinear/linear/shape_1#linear/linear/strided_slice_1/stack%linear/linear/strided_slice_1/stack_1%linear/linear/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
]
linear/linear/range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
]
linear/linear/range_1/deltaConst*
_output_shapes
: *
value	B :*
dtype0
�
linear/linear/range_1Rangelinear/linear/range_1/startlinear/linear/strided_slice_1linear/linear/range_1/delta*#
_output_shapes
:���������*

Tidx0
_
linear/linear/zeros_1/Less/yConst*
value
B :�*
dtype0*
_output_shapes
: 
�
linear/linear/zeros_1/LessLesslinear/linear/strided_slice_1linear/linear/zeros_1/Less/y*
T0*
_output_shapes
: 
}
linear/linear/zeros_1/packedPacklinear/linear/strided_slice_1*

axis *
N*
_output_shapes
:*
T0
]
linear/linear/zeros_1/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
�
linear/linear/zeros_1Filllinear/linear/zeros_1/packedlinear/linear/zeros_1/Const*
T0*

index_type0*#
_output_shapes
:���������
p
linear/linear/reshape_2/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
linear/linear/reshape_2Reshapelinear/linear/bucketizelinear/linear/reshape_2/shape*#
_output_shapes
:���������*
T0*
Tshape0
�
linear/linear/stack_2Packlinear/linear/range_1linear/linear/zeros_1*
T0*

axis *
N*'
_output_shapes
:���������
^
linear/linear/transpose_1/RankRanklinear/linear/stack_2*
T0*
_output_shapes
: 
a
linear/linear/transpose_1/sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
linear/linear/transpose_1/subSublinear/linear/transpose_1/Ranklinear/linear/transpose_1/sub/y*
T0*
_output_shapes
: 
g
%linear/linear/transpose_1/Range/startConst*
value	B : *
dtype0*
_output_shapes
: 
g
%linear/linear/transpose_1/Range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
linear/linear/transpose_1/RangeRange%linear/linear/transpose_1/Range/startlinear/linear/transpose_1/Rank%linear/linear/transpose_1/Range/delta*
_output_shapes
:*

Tidx0
�
linear/linear/transpose_1/sub_1Sublinear/linear/transpose_1/sublinear/linear/transpose_1/Range*
_output_shapes
:*
T0
�
linear/linear/transpose_1	Transposelinear/linear/stack_2linear/linear/transpose_1/sub_1*
T0*'
_output_shapes
:���������*
Tperm0
{
linear/linear/ToInt64_2Castlinear/linear/transpose_1*'
_output_shapes
:���������*

DstT0	*

SrcT0
Y
linear/linear/stack_3/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
linear/linear/stack_3Packlinear/linear/strided_slice_1linear/linear/stack_3/1*
T0*

axis *
N*
_output_shapes
:
j
linear/linear/ToInt64_3Castlinear/linear/stack_3*

SrcT0*
_output_shapes
:*

DstT0	
u
linear/linear/ToInt64_4Castlinear/linear/reshape_2*

SrcT0*#
_output_shapes
:���������*

DstT0	
�
linear/linear/crossSparseFeatureCrosslinear/linear/ToInt64_2linear/linear/ToInt64_4linear/linear/ToInt64_3strided_slice_5strided_slice_7*
N*<
_output_shapes*
(:���������:���������:*
dense_types
2*
internal_type0	*
sparse_types
2	*
num_buckets��=*
hashed_output(*
out_type0	
�
Zlinear/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zeros/shape_as_tensorConst*K
_classA
?=loc:@linear/age_bucketized_X_occupation_X_race/weights/part_0*
valueB"@B    *
dtype0*
_output_shapes
:
�
Plinear/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zeros/ConstConst*K
_classA
?=loc:@linear/age_bucketized_X_occupation_X_race/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Jlinear/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zerosFillZlinear/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zeros/shape_as_tensorPlinear/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zeros/Const* 
_output_shapes
:
��=*
T0*K
_classA
?=loc:@linear/age_bucketized_X_occupation_X_race/weights/part_0*

index_type0
�
8linear/age_bucketized_X_occupation_X_race/weights/part_0
VariableV2*K
_classA
?=loc:@linear/age_bucketized_X_occupation_X_race/weights/part_0*
	container *
shape:
��=*
dtype0* 
_output_shapes
:
��=*
shared_name 
�
?linear/age_bucketized_X_occupation_X_race/weights/part_0/AssignAssign8linear/age_bucketized_X_occupation_X_race/weights/part_0Jlinear/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zeros* 
_output_shapes
:
��=*
use_locking(*
T0*K
_classA
?=loc:@linear/age_bucketized_X_occupation_X_race/weights/part_0*
validate_shape(
�
=linear/age_bucketized_X_occupation_X_race/weights/part_0/readIdentity8linear/age_bucketized_X_occupation_X_race/weights/part_0*
T0*K
_classA
?=loc:@linear/age_bucketized_X_occupation_X_race/weights/part_0* 
_output_shapes
:
��=
�
glinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
flinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
�
alinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/SliceSlicelinear/linear/cross:2glinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice/beginflinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
�
alinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
`linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/ProdProdalinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slicealinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
�
llinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2/indicesConst*
_output_shapes
: *
value	B :*
dtype0
�
ilinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
dlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2GatherV2linear/linear/cross:2llinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2/indicesilinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0
�
blinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Cast/xPack`linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Proddlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
�
ilinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/SparseReshapeSparseReshapelinear/linear/crosslinear/linear/cross:2blinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Cast/x*-
_output_shapes
:���������:
�
rlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/SparseReshape/IdentityIdentitylinear/linear/cross:1*#
_output_shapes
:���������*
T0	
�
jlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
hlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GreaterEqualGreaterEqualrlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/SparseReshape/Identityjlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GreaterEqual/y*#
_output_shapes
:���������*
T0	
�
alinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/WhereWherehlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GreaterEqual*'
_output_shapes
:���������*
T0

�
ilinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
clinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/ReshapeReshapealinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Whereilinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Reshape/shape*#
_output_shapes
:���������*
T0	*
Tshape0
�
klinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
flinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2_1GatherV2ilinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/SparseReshapeclinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Reshapeklinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:���������
�
klinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
flinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2_2GatherV2rlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/SparseReshape/Identityclinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Reshapeklinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2_2/axis*#
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
dlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/IdentityIdentityklinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/SparseReshape:1*
T0	*
_output_shapes
:
�
ulinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
�
�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsflinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2_1flinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/GatherV2_2dlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Identityulinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB"        
�
�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
_output_shapes
:*
valueB"      *
dtype0
�
�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/strided_sliceStridedSlice�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/SparseFillEmptyRows/SparseFillEmptyRows�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/strided_slice/stack�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/strided_slice/stack_1�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:���������
�
xlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/CastCast�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:���������*

DstT0*

SrcT0	
�
zlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/UniqueUnique�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:���������:���������
�
�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *K
_classA
?=loc:@linear/age_bucketized_X_occupation_X_race/weights/part_0*
value	B : 
�
�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/embedding_lookupGatherV2=linear/age_bucketized_X_occupation_X_race/weights/part_0/readzlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/Unique�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0*K
_classA
?=loc:@linear/age_bucketized_X_occupation_X_race/weights/part_0
�
slinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparseSparseSegmentSum�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/embedding_lookup|linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/Unique:1xlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:���������*

Tidx0*
T0
�
klinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
elinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Reshape_1Reshape�linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/SparseFillEmptyRows/SparseFillEmptyRows:2klinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:���������
�
alinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/ShapeShapeslinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
olinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
qlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
qlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
ilinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/strided_sliceStridedSlicealinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Shapeolinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/strided_slice/stackqlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/strided_slice/stack_1qlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
�
clinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
alinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/stackPackclinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/stack/0ilinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
`linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/TileTileelinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Reshape_1alinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:������������������
�
flinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/zeros_like	ZerosLikeslinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
[linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weightsSelect`linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Tileflinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/zeros_likeslinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/embedding_lookup_sparse*'
_output_shapes
:���������*
T0
�
blinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Cast_1Castlinear/linear/cross:2*

SrcT0	*
_output_shapes
:*

DstT0
�
ilinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
�
hlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
clinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice_1Sliceblinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Cast_1ilinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice_1/beginhlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
�
clinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Shape_1Shape[linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights*
_output_shapes
:*
T0*
out_type0
�
ilinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
�
hlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
clinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice_2Sliceclinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Shape_1ilinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice_2/beginhlinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice_2/size*
_output_shapes
:*
Index0*
T0
�
glinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
blinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/concatConcatV2clinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice_1clinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Slice_2glinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
elinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Reshape_2Reshape[linear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weightsblinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/concat*'
_output_shapes
:���������*
T0*
Tshape0
n
linear/linear/Reshape_3/shapeConst*
_output_shapes
:*
valueB"����   *
dtype0
�
linear/linear/Reshape_3Reshapeelinear/linear/age_bucketized_X_occupation_X_race/age_bucketized_X_occupation_X_race_weights/Reshape_2linear/linear/Reshape_3/shape*
Tshape0*'
_output_shapes
:���������*
T0
�
linear/linear/cross_1SparseFeatureCrossstrided_slice_2strided_slice_5*
num_buckets�N*
hashed_output(*
out_type0	*
N *<
_output_shapes*
(:���������:���������:*
dense_types
2*
internal_type0*
sparse_types
 
�
Nlinear/education_X_occupation/weights/part_0/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*?
_class5
31loc:@linear/education_X_occupation/weights/part_0*
valueB"'     *
dtype0
�
Dlinear/education_X_occupation/weights/part_0/Initializer/zeros/ConstConst*?
_class5
31loc:@linear/education_X_occupation/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
�
>linear/education_X_occupation/weights/part_0/Initializer/zerosFillNlinear/education_X_occupation/weights/part_0/Initializer/zeros/shape_as_tensorDlinear/education_X_occupation/weights/part_0/Initializer/zeros/Const*
_output_shapes
:	�N*
T0*?
_class5
31loc:@linear/education_X_occupation/weights/part_0*

index_type0
�
,linear/education_X_occupation/weights/part_0
VariableV2*
shape:	�N*
dtype0*
_output_shapes
:	�N*
shared_name *?
_class5
31loc:@linear/education_X_occupation/weights/part_0*
	container 
�
3linear/education_X_occupation/weights/part_0/AssignAssign,linear/education_X_occupation/weights/part_0>linear/education_X_occupation/weights/part_0/Initializer/zeros*
T0*?
_class5
31loc:@linear/education_X_occupation/weights/part_0*
validate_shape(*
_output_shapes
:	�N*
use_locking(
�
1linear/education_X_occupation/weights/part_0/readIdentity,linear/education_X_occupation/weights/part_0*
_output_shapes
:	�N*
T0*?
_class5
31loc:@linear/education_X_occupation/weights/part_0
�
Olinear/linear/education_X_occupation/education_X_occupation_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
Nlinear/linear/education_X_occupation/education_X_occupation_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
Ilinear/linear/education_X_occupation/education_X_occupation_weights/SliceSlicelinear/linear/cross_1:2Olinear/linear/education_X_occupation/education_X_occupation_weights/Slice/beginNlinear/linear/education_X_occupation/education_X_occupation_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
�
Ilinear/linear/education_X_occupation/education_X_occupation_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
Hlinear/linear/education_X_occupation/education_X_occupation_weights/ProdProdIlinear/linear/education_X_occupation/education_X_occupation_weights/SliceIlinear/linear/education_X_occupation/education_X_occupation_weights/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
Tlinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
Qlinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Llinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2GatherV2linear/linear/cross_1:2Tlinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2/indicesQlinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
�
Jlinear/linear/education_X_occupation/education_X_occupation_weights/Cast/xPackHlinear/linear/education_X_occupation/education_X_occupation_weights/ProdLlinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2*

axis *
N*
_output_shapes
:*
T0	
�
Qlinear/linear/education_X_occupation/education_X_occupation_weights/SparseReshapeSparseReshapelinear/linear/cross_1linear/linear/cross_1:2Jlinear/linear/education_X_occupation/education_X_occupation_weights/Cast/x*-
_output_shapes
:���������:
�
Zlinear/linear/education_X_occupation/education_X_occupation_weights/SparseReshape/IdentityIdentitylinear/linear/cross_1:1*#
_output_shapes
:���������*
T0	
�
Rlinear/linear/education_X_occupation/education_X_occupation_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
Plinear/linear/education_X_occupation/education_X_occupation_weights/GreaterEqualGreaterEqualZlinear/linear/education_X_occupation/education_X_occupation_weights/SparseReshape/IdentityRlinear/linear/education_X_occupation/education_X_occupation_weights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
Ilinear/linear/education_X_occupation/education_X_occupation_weights/WhereWherePlinear/linear/education_X_occupation/education_X_occupation_weights/GreaterEqual*'
_output_shapes
:���������*
T0

�
Qlinear/linear/education_X_occupation/education_X_occupation_weights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Klinear/linear/education_X_occupation/education_X_occupation_weights/ReshapeReshapeIlinear/linear/education_X_occupation/education_X_occupation_weights/WhereQlinear/linear/education_X_occupation/education_X_occupation_weights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:���������
�
Slinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Nlinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2_1GatherV2Qlinear/linear/education_X_occupation/education_X_occupation_weights/SparseReshapeKlinear/linear/education_X_occupation/education_X_occupation_weights/ReshapeSlinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:���������
�
Slinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Nlinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2_2GatherV2Zlinear/linear/education_X_occupation/education_X_occupation_weights/SparseReshape/IdentityKlinear/linear/education_X_occupation/education_X_occupation_weights/ReshapeSlinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2_2/axis*
Tparams0	*#
_output_shapes
:���������*
Taxis0*
Tindices0	
�
Llinear/linear/education_X_occupation/education_X_occupation_weights/IdentityIdentitySlinear/linear/education_X_occupation/education_X_occupation_weights/SparseReshape:1*
T0	*
_output_shapes
:
�
]linear/linear/education_X_occupation/education_X_occupation_weights/SparseFillEmptyRows/ConstConst*
_output_shapes
: *
value	B	 R *
dtype0	
�
klinear/linear/education_X_occupation/education_X_occupation_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsNlinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2_1Nlinear/linear/education_X_occupation/education_X_occupation_weights/GatherV2_2Llinear/linear/education_X_occupation/education_X_occupation_weights/Identity]linear/linear/education_X_occupation/education_X_occupation_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
olinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
�
qlinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
qlinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
ilinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/strided_sliceStridedSliceklinear/linear/education_X_occupation/education_X_occupation_weights/SparseFillEmptyRows/SparseFillEmptyRowsolinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/strided_slice/stackqlinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/strided_slice/stack_1qlinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:���������*
T0	*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask 
�
`linear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/CastCastilinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:���������*

DstT0*

SrcT0	
�
blinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/UniqueUniquemlinear/linear/education_X_occupation/education_X_occupation_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:���������:���������
�
qlinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *?
_class5
31loc:@linear/education_X_occupation/weights/part_0*
value	B : 
�
llinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/embedding_lookupGatherV21linear/education_X_occupation/weights/part_0/readblinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/Uniqueqlinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*?
_class5
31loc:@linear/education_X_occupation/weights/part_0*'
_output_shapes
:���������
�
[linear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparseSparseSegmentSumllinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/embedding_lookupdlinear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/Unique:1`linear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:���������*

Tidx0
�
Slinear/linear/education_X_occupation/education_X_occupation_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
Mlinear/linear/education_X_occupation/education_X_occupation_weights/Reshape_1Reshapemlinear/linear/education_X_occupation/education_X_occupation_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Slinear/linear/education_X_occupation/education_X_occupation_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:���������
�
Ilinear/linear/education_X_occupation/education_X_occupation_weights/ShapeShape[linear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse*
_output_shapes
:*
T0*
out_type0
�
Wlinear/linear/education_X_occupation/education_X_occupation_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
Ylinear/linear/education_X_occupation/education_X_occupation_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
�
Ylinear/linear/education_X_occupation/education_X_occupation_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Qlinear/linear/education_X_occupation/education_X_occupation_weights/strided_sliceStridedSliceIlinear/linear/education_X_occupation/education_X_occupation_weights/ShapeWlinear/linear/education_X_occupation/education_X_occupation_weights/strided_slice/stackYlinear/linear/education_X_occupation/education_X_occupation_weights/strided_slice/stack_1Ylinear/linear/education_X_occupation/education_X_occupation_weights/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
�
Klinear/linear/education_X_occupation/education_X_occupation_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
Ilinear/linear/education_X_occupation/education_X_occupation_weights/stackPackKlinear/linear/education_X_occupation/education_X_occupation_weights/stack/0Qlinear/linear/education_X_occupation/education_X_occupation_weights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
Hlinear/linear/education_X_occupation/education_X_occupation_weights/TileTileMlinear/linear/education_X_occupation/education_X_occupation_weights/Reshape_1Ilinear/linear/education_X_occupation/education_X_occupation_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:������������������
�
Nlinear/linear/education_X_occupation/education_X_occupation_weights/zeros_like	ZerosLike[linear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse*'
_output_shapes
:���������*
T0
�
Clinear/linear/education_X_occupation/education_X_occupation_weightsSelectHlinear/linear/education_X_occupation/education_X_occupation_weights/TileNlinear/linear/education_X_occupation/education_X_occupation_weights/zeros_like[linear/linear/education_X_occupation/education_X_occupation_weights/embedding_lookup_sparse*'
_output_shapes
:���������*
T0
�
Jlinear/linear/education_X_occupation/education_X_occupation_weights/Cast_1Castlinear/linear/cross_1:2*

SrcT0	*
_output_shapes
:*

DstT0
�
Qlinear/linear/education_X_occupation/education_X_occupation_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
Plinear/linear/education_X_occupation/education_X_occupation_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
Klinear/linear/education_X_occupation/education_X_occupation_weights/Slice_1SliceJlinear/linear/education_X_occupation/education_X_occupation_weights/Cast_1Qlinear/linear/education_X_occupation/education_X_occupation_weights/Slice_1/beginPlinear/linear/education_X_occupation/education_X_occupation_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
�
Klinear/linear/education_X_occupation/education_X_occupation_weights/Shape_1ShapeClinear/linear/education_X_occupation/education_X_occupation_weights*
T0*
out_type0*
_output_shapes
:
�
Qlinear/linear/education_X_occupation/education_X_occupation_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
�
Plinear/linear/education_X_occupation/education_X_occupation_weights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Klinear/linear/education_X_occupation/education_X_occupation_weights/Slice_2SliceKlinear/linear/education_X_occupation/education_X_occupation_weights/Shape_1Qlinear/linear/education_X_occupation/education_X_occupation_weights/Slice_2/beginPlinear/linear/education_X_occupation/education_X_occupation_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
�
Olinear/linear/education_X_occupation/education_X_occupation_weights/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
Jlinear/linear/education_X_occupation/education_X_occupation_weights/concatConcatV2Klinear/linear/education_X_occupation/education_X_occupation_weights/Slice_1Klinear/linear/education_X_occupation/education_X_occupation_weights/Slice_2Olinear/linear/education_X_occupation/education_X_occupation_weights/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
Mlinear/linear/education_X_occupation/education_X_occupation_weights/Reshape_2ReshapeClinear/linear/education_X_occupation/education_X_occupation_weightsJlinear/linear/education_X_occupation/education_X_occupation_weights/concat*
Tshape0*'
_output_shapes
:���������*
T0
n
linear/linear/Reshape_4/shapeConst*
_output_shapes
:*
valueB"����   *
dtype0
�
linear/linear/Reshape_4ReshapeMlinear/linear/education_X_occupation/education_X_occupation_weights/Reshape_2linear/linear/Reshape_4/shape*
T0*
Tshape0*'
_output_shapes
:���������
�
linear/linear/cross_2SparseFeatureCrossstrided_slice_12strided_slice_5*
out_type0	*
N *<
_output_shapes*
(:���������:���������:*
dense_types
2*
sparse_types
 *
internal_type0*
num_buckets�N*
hashed_output(
�
Slinear/native_country_X_occupation/weights/part_0/Initializer/zeros/shape_as_tensorConst*D
_class:
86loc:@linear/native_country_X_occupation/weights/part_0*
valueB"'     *
dtype0*
_output_shapes
:
�
Ilinear/native_country_X_occupation/weights/part_0/Initializer/zeros/ConstConst*D
_class:
86loc:@linear/native_country_X_occupation/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
�
Clinear/native_country_X_occupation/weights/part_0/Initializer/zerosFillSlinear/native_country_X_occupation/weights/part_0/Initializer/zeros/shape_as_tensorIlinear/native_country_X_occupation/weights/part_0/Initializer/zeros/Const*
T0*D
_class:
86loc:@linear/native_country_X_occupation/weights/part_0*

index_type0*
_output_shapes
:	�N
�
1linear/native_country_X_occupation/weights/part_0
VariableV2*D
_class:
86loc:@linear/native_country_X_occupation/weights/part_0*
	container *
shape:	�N*
dtype0*
_output_shapes
:	�N*
shared_name 
�
8linear/native_country_X_occupation/weights/part_0/AssignAssign1linear/native_country_X_occupation/weights/part_0Clinear/native_country_X_occupation/weights/part_0/Initializer/zeros*
use_locking(*
T0*D
_class:
86loc:@linear/native_country_X_occupation/weights/part_0*
validate_shape(*
_output_shapes
:	�N
�
6linear/native_country_X_occupation/weights/part_0/readIdentity1linear/native_country_X_occupation/weights/part_0*
T0*D
_class:
86loc:@linear/native_country_X_occupation/weights/part_0*
_output_shapes
:	�N
�
Ylinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
Xlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice/sizeConst*
dtype0*
_output_shapes
:*
valueB:
�
Slinear/linear/native_country_X_occupation/native_country_X_occupation_weights/SliceSlicelinear/linear/cross_2:2Ylinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice/beginXlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
�
Slinear/linear/native_country_X_occupation/native_country_X_occupation_weights/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
Rlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/ProdProdSlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/SliceSlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
�
^linear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
[linear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Vlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2GatherV2linear/linear/cross_2:2^linear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2/indices[linear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
�
Tlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Cast/xPackRlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/ProdVlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
�
[linear/linear/native_country_X_occupation/native_country_X_occupation_weights/SparseReshapeSparseReshapelinear/linear/cross_2linear/linear/cross_2:2Tlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Cast/x*-
_output_shapes
:���������:
�
dlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/SparseReshape/IdentityIdentitylinear/linear/cross_2:1*
T0	*#
_output_shapes
:���������
�
\linear/linear/native_country_X_occupation/native_country_X_occupation_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
Zlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/GreaterEqualGreaterEqualdlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/SparseReshape/Identity\linear/linear/native_country_X_occupation/native_country_X_occupation_weights/GreaterEqual/y*#
_output_shapes
:���������*
T0	
�
Slinear/linear/native_country_X_occupation/native_country_X_occupation_weights/WhereWhereZlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/GreaterEqual*'
_output_shapes
:���������*
T0

�
[linear/linear/native_country_X_occupation/native_country_X_occupation_weights/Reshape/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
Ulinear/linear/native_country_X_occupation/native_country_X_occupation_weights/ReshapeReshapeSlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Where[linear/linear/native_country_X_occupation/native_country_X_occupation_weights/Reshape/shape*
Tshape0*#
_output_shapes
:���������*
T0	
�
]linear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Xlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2_1GatherV2[linear/linear/native_country_X_occupation/native_country_X_occupation_weights/SparseReshapeUlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Reshape]linear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:���������*
Taxis0
�
]linear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
Xlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2_2GatherV2dlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/SparseReshape/IdentityUlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Reshape]linear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2_2/axis*#
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
Vlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/IdentityIdentity]linear/linear/native_country_X_occupation/native_country_X_occupation_weights/SparseReshape:1*
_output_shapes
:*
T0	
�
glinear/linear/native_country_X_occupation/native_country_X_occupation_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
ulinear/linear/native_country_X_occupation/native_country_X_occupation_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsXlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2_1Xlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/GatherV2_2Vlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Identityglinear/linear/native_country_X_occupation/native_country_X_occupation_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
ylinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/strided_slice/stackConst*
_output_shapes
:*
valueB"        *
dtype0
�
{linear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
{linear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
slinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/strided_sliceStridedSliceulinear/linear/native_country_X_occupation/native_country_X_occupation_weights/SparseFillEmptyRows/SparseFillEmptyRowsylinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/strided_slice/stack{linear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/strided_slice/stack_1{linear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:���������
�
jlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/CastCastslinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:���������*

DstT0
�
llinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/UniqueUniquewlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:���������:���������*
out_idx0*
T0	
�
{linear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
dtype0*
_output_shapes
: *D
_class:
86loc:@linear/native_country_X_occupation/weights/part_0*
value	B : 
�
vlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/embedding_lookupGatherV26linear/native_country_X_occupation/weights/part_0/readllinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/Unique{linear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/embedding_lookup/axis*D
_class:
86loc:@linear/native_country_X_occupation/weights/part_0*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0
�
elinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparseSparseSegmentSumvlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/embedding_lookupnlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/Unique:1jlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:���������*

Tidx0*
T0
�
]linear/linear/native_country_X_occupation/native_country_X_occupation_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
Wlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Reshape_1Reshapewlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/SparseFillEmptyRows/SparseFillEmptyRows:2]linear/linear/native_country_X_occupation/native_country_X_occupation_weights/Reshape_1/shape*'
_output_shapes
:���������*
T0
*
Tshape0
�
Slinear/linear/native_country_X_occupation/native_country_X_occupation_weights/ShapeShapeelinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse*
_output_shapes
:*
T0*
out_type0
�
alinear/linear/native_country_X_occupation/native_country_X_occupation_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
clinear/linear/native_country_X_occupation/native_country_X_occupation_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
clinear/linear/native_country_X_occupation/native_country_X_occupation_weights/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
�
[linear/linear/native_country_X_occupation/native_country_X_occupation_weights/strided_sliceStridedSliceSlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Shapealinear/linear/native_country_X_occupation/native_country_X_occupation_weights/strided_slice/stackclinear/linear/native_country_X_occupation/native_country_X_occupation_weights/strided_slice/stack_1clinear/linear/native_country_X_occupation/native_country_X_occupation_weights/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
�
Ulinear/linear/native_country_X_occupation/native_country_X_occupation_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
Slinear/linear/native_country_X_occupation/native_country_X_occupation_weights/stackPackUlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/stack/0[linear/linear/native_country_X_occupation/native_country_X_occupation_weights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
Rlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/TileTileWlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Reshape_1Slinear/linear/native_country_X_occupation/native_country_X_occupation_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:������������������
�
Xlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/zeros_like	ZerosLikeelinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
Mlinear/linear/native_country_X_occupation/native_country_X_occupation_weightsSelectRlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/TileXlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/zeros_likeelinear/linear/native_country_X_occupation/native_country_X_occupation_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
Tlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Cast_1Castlinear/linear/cross_2:2*
_output_shapes
:*

DstT0*

SrcT0	
�
[linear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
Zlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
�
Ulinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice_1SliceTlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Cast_1[linear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice_1/beginZlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
�
Ulinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Shape_1ShapeMlinear/linear/native_country_X_occupation/native_country_X_occupation_weights*
T0*
out_type0*
_output_shapes
:
�
[linear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
�
Zlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
Ulinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice_2SliceUlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Shape_1[linear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice_2/beginZlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
�
Ylinear/linear/native_country_X_occupation/native_country_X_occupation_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Tlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/concatConcatV2Ulinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice_1Ulinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Slice_2Ylinear/linear/native_country_X_occupation/native_country_X_occupation_weights/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
Wlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Reshape_2ReshapeMlinear/linear/native_country_X_occupation/native_country_X_occupation_weightsTlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/concat*
T0*
Tshape0*'
_output_shapes
:���������
n
linear/linear/Reshape_5/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
linear/linear/Reshape_5ReshapeWlinear/linear/native_country_X_occupation/native_country_X_occupation_weights/Reshape_2linear/linear/Reshape_5/shape*
T0*
Tshape0*'
_output_shapes
:���������
q
0linear/linear/DenseToSparseTensor/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
�
*linear/linear/DenseToSparseTensor/NotEqualNotEqualstrided_slice_20linear/linear/DenseToSparseTensor/ignore_value/x*
T0*'
_output_shapes
:���������
�
)linear/linear/DenseToSparseTensor/indicesWhere*linear/linear/DenseToSparseTensor/NotEqual*'
_output_shapes
:���������*
T0

�
(linear/linear/DenseToSparseTensor/valuesGatherNdstrided_slice_2)linear/linear/DenseToSparseTensor/indices*#
_output_shapes
:���������*
Tindices0	*
Tparams0
|
-linear/linear/DenseToSparseTensor/dense_shapeShapestrided_slice_2*
T0*
out_type0	*
_output_shapes
:
�
linear/linear/lookupStringToHashBucketFast(linear/linear/DenseToSparseTensor/values*#
_output_shapes
:���������*
num_buckets�
�
Alinear/education/weights/part_0/Initializer/zeros/shape_as_tensorConst*2
_class(
&$loc:@linear/education/weights/part_0*
valueB"�     *
dtype0*
_output_shapes
:
�
7linear/education/weights/part_0/Initializer/zeros/ConstConst*2
_class(
&$loc:@linear/education/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
�
1linear/education/weights/part_0/Initializer/zerosFillAlinear/education/weights/part_0/Initializer/zeros/shape_as_tensor7linear/education/weights/part_0/Initializer/zeros/Const*
T0*2
_class(
&$loc:@linear/education/weights/part_0*

index_type0*
_output_shapes
:	�
�
linear/education/weights/part_0
VariableV2*
shared_name *2
_class(
&$loc:@linear/education/weights/part_0*
	container *
shape:	�*
dtype0*
_output_shapes
:	�
�
&linear/education/weights/part_0/AssignAssignlinear/education/weights/part_01linear/education/weights/part_0/Initializer/zeros*
use_locking(*
T0*2
_class(
&$loc:@linear/education/weights/part_0*
validate_shape(*
_output_shapes
:	�
�
$linear/education/weights/part_0/readIdentitylinear/education/weights/part_0*
T0*2
_class(
&$loc:@linear/education/weights/part_0*
_output_shapes
:	�

5linear/linear/education/education_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
~
4linear/linear/education/education_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
/linear/linear/education/education_weights/SliceSlice-linear/linear/DenseToSparseTensor/dense_shape5linear/linear/education/education_weights/Slice/begin4linear/linear/education/education_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
y
/linear/linear/education/education_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
.linear/linear/education/education_weights/ProdProd/linear/linear/education/education_weights/Slice/linear/linear/education/education_weights/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
|
:linear/linear/education/education_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
y
7linear/linear/education/education_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
2linear/linear/education/education_weights/GatherV2GatherV2-linear/linear/DenseToSparseTensor/dense_shape:linear/linear/education/education_weights/GatherV2/indices7linear/linear/education/education_weights/GatherV2/axis*
Tparams0	*
_output_shapes
: *
Taxis0*
Tindices0
�
0linear/linear/education/education_weights/Cast/xPack.linear/linear/education/education_weights/Prod2linear/linear/education/education_weights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
�
7linear/linear/education/education_weights/SparseReshapeSparseReshape)linear/linear/DenseToSparseTensor/indices-linear/linear/DenseToSparseTensor/dense_shape0linear/linear/education/education_weights/Cast/x*-
_output_shapes
:���������:
�
@linear/linear/education/education_weights/SparseReshape/IdentityIdentitylinear/linear/lookup*
T0	*#
_output_shapes
:���������
z
8linear/linear/education/education_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
6linear/linear/education/education_weights/GreaterEqualGreaterEqual@linear/linear/education/education_weights/SparseReshape/Identity8linear/linear/education/education_weights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
/linear/linear/education/education_weights/WhereWhere6linear/linear/education/education_weights/GreaterEqual*
T0
*'
_output_shapes
:���������
�
7linear/linear/education/education_weights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
1linear/linear/education/education_weights/ReshapeReshape/linear/linear/education/education_weights/Where7linear/linear/education/education_weights/Reshape/shape*#
_output_shapes
:���������*
T0	*
Tshape0
{
9linear/linear/education/education_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
4linear/linear/education/education_weights/GatherV2_1GatherV27linear/linear/education/education_weights/SparseReshape1linear/linear/education/education_weights/Reshape9linear/linear/education/education_weights/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:���������
{
9linear/linear/education/education_weights/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
4linear/linear/education/education_weights/GatherV2_2GatherV2@linear/linear/education/education_weights/SparseReshape/Identity1linear/linear/education/education_weights/Reshape9linear/linear/education/education_weights/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:���������*
Taxis0
�
2linear/linear/education/education_weights/IdentityIdentity9linear/linear/education/education_weights/SparseReshape:1*
_output_shapes
:*
T0	
�
Clinear/linear/education/education_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
Qlinear/linear/education/education_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows4linear/linear/education/education_weights/GatherV2_14linear/linear/education/education_weights/GatherV2_22linear/linear/education/education_weights/IdentityClinear/linear/education/education_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
Ulinear/linear/education/education_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
�
Wlinear/linear/education/education_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
Wlinear/linear/education/education_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
Olinear/linear/education/education_weights/embedding_lookup_sparse/strided_sliceStridedSliceQlinear/linear/education/education_weights/SparseFillEmptyRows/SparseFillEmptyRowsUlinear/linear/education/education_weights/embedding_lookup_sparse/strided_slice/stackWlinear/linear/education/education_weights/embedding_lookup_sparse/strided_slice/stack_1Wlinear/linear/education/education_weights/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:���������*
T0	*
Index0*
shrink_axis_mask
�
Flinear/linear/education/education_weights/embedding_lookup_sparse/CastCastOlinear/linear/education/education_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:���������*

DstT0
�
Hlinear/linear/education/education_weights/embedding_lookup_sparse/UniqueUniqueSlinear/linear/education/education_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:���������:���������*
out_idx0*
T0	
�
Wlinear/linear/education/education_weights/embedding_lookup_sparse/embedding_lookup/axisConst*2
_class(
&$loc:@linear/education/weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
�
Rlinear/linear/education/education_weights/embedding_lookup_sparse/embedding_lookupGatherV2$linear/education/weights/part_0/readHlinear/linear/education/education_weights/embedding_lookup_sparse/UniqueWlinear/linear/education/education_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*2
_class(
&$loc:@linear/education/weights/part_0*'
_output_shapes
:���������
�
Alinear/linear/education/education_weights/embedding_lookup_sparseSparseSegmentSumRlinear/linear/education/education_weights/embedding_lookup_sparse/embedding_lookupJlinear/linear/education/education_weights/embedding_lookup_sparse/Unique:1Flinear/linear/education/education_weights/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:���������
�
9linear/linear/education/education_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
3linear/linear/education/education_weights/Reshape_1ReshapeSlinear/linear/education/education_weights/SparseFillEmptyRows/SparseFillEmptyRows:29linear/linear/education/education_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:���������
�
/linear/linear/education/education_weights/ShapeShapeAlinear/linear/education/education_weights/embedding_lookup_sparse*
_output_shapes
:*
T0*
out_type0
�
=linear/linear/education/education_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
?linear/linear/education/education_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
?linear/linear/education/education_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
7linear/linear/education/education_weights/strided_sliceStridedSlice/linear/linear/education/education_weights/Shape=linear/linear/education/education_weights/strided_slice/stack?linear/linear/education/education_weights/strided_slice/stack_1?linear/linear/education/education_weights/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
s
1linear/linear/education/education_weights/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
�
/linear/linear/education/education_weights/stackPack1linear/linear/education/education_weights/stack/07linear/linear/education/education_weights/strided_slice*
_output_shapes
:*
T0*

axis *
N
�
.linear/linear/education/education_weights/TileTile3linear/linear/education/education_weights/Reshape_1/linear/linear/education/education_weights/stack*
T0
*0
_output_shapes
:������������������*

Tmultiples0
�
4linear/linear/education/education_weights/zeros_like	ZerosLikeAlinear/linear/education/education_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
)linear/linear/education/education_weightsSelect.linear/linear/education/education_weights/Tile4linear/linear/education/education_weights/zeros_likeAlinear/linear/education/education_weights/embedding_lookup_sparse*'
_output_shapes
:���������*
T0
�
0linear/linear/education/education_weights/Cast_1Cast-linear/linear/DenseToSparseTensor/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
�
7linear/linear/education/education_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
�
6linear/linear/education/education_weights/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
�
1linear/linear/education/education_weights/Slice_1Slice0linear/linear/education/education_weights/Cast_17linear/linear/education/education_weights/Slice_1/begin6linear/linear/education/education_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
�
1linear/linear/education/education_weights/Shape_1Shape)linear/linear/education/education_weights*
_output_shapes
:*
T0*
out_type0
�
7linear/linear/education/education_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
�
6linear/linear/education/education_weights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
1linear/linear/education/education_weights/Slice_2Slice1linear/linear/education/education_weights/Shape_17linear/linear/education/education_weights/Slice_2/begin6linear/linear/education/education_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
w
5linear/linear/education/education_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
0linear/linear/education/education_weights/concatConcatV21linear/linear/education/education_weights/Slice_11linear/linear/education/education_weights/Slice_25linear/linear/education/education_weights/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
3linear/linear/education/education_weights/Reshape_2Reshape)linear/linear/education/education_weights0linear/linear/education/education_weights/concat*
T0*
Tshape0*'
_output_shapes
:���������
n
linear/linear/Reshape_6/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
linear/linear/Reshape_6Reshape3linear/linear/education/education_weights/Reshape_2linear/linear/Reshape_6/shape*'
_output_shapes
:���������*
T0*
Tshape0
s
2linear/linear/DenseToSparseTensor_1/ignore_value/xConst*
_output_shapes
: *
valueB B *
dtype0
�
,linear/linear/DenseToSparseTensor_1/NotEqualNotEqualstrided_slice_42linear/linear/DenseToSparseTensor_1/ignore_value/x*
T0*'
_output_shapes
:���������
�
+linear/linear/DenseToSparseTensor_1/indicesWhere,linear/linear/DenseToSparseTensor_1/NotEqual*
T0
*'
_output_shapes
:���������
�
*linear/linear/DenseToSparseTensor_1/valuesGatherNdstrided_slice_4+linear/linear/DenseToSparseTensor_1/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
~
/linear/linear/DenseToSparseTensor_1/dense_shapeShapestrided_slice_4*
_output_shapes
:*
T0*
out_type0	
�
linear/linear/lookup_1StringToHashBucketFast*linear/linear/DenseToSparseTensor_1/values*#
_output_shapes
:���������*
num_bucketsd
�
6linear/marital_status/weights/part_0/Initializer/zerosConst*7
_class-
+)loc:@linear/marital_status/weights/part_0*
valueBd*    *
dtype0*
_output_shapes

:d
�
$linear/marital_status/weights/part_0
VariableV2*7
_class-
+)loc:@linear/marital_status/weights/part_0*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name 
�
+linear/marital_status/weights/part_0/AssignAssign$linear/marital_status/weights/part_06linear/marital_status/weights/part_0/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@linear/marital_status/weights/part_0*
validate_shape(*
_output_shapes

:d
�
)linear/marital_status/weights/part_0/readIdentity$linear/marital_status/weights/part_0*
_output_shapes

:d*
T0*7
_class-
+)loc:@linear/marital_status/weights/part_0
�
?linear/linear/marital_status/marital_status_weights/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0
�
>linear/linear/marital_status/marital_status_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
9linear/linear/marital_status/marital_status_weights/SliceSlice/linear/linear/DenseToSparseTensor_1/dense_shape?linear/linear/marital_status/marital_status_weights/Slice/begin>linear/linear/marital_status/marital_status_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
�
9linear/linear/marital_status/marital_status_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
8linear/linear/marital_status/marital_status_weights/ProdProd9linear/linear/marital_status/marital_status_weights/Slice9linear/linear/marital_status/marital_status_weights/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
Dlinear/linear/marital_status/marital_status_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
Alinear/linear/marital_status/marital_status_weights/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
<linear/linear/marital_status/marital_status_weights/GatherV2GatherV2/linear/linear/DenseToSparseTensor_1/dense_shapeDlinear/linear/marital_status/marital_status_weights/GatherV2/indicesAlinear/linear/marital_status/marital_status_weights/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
�
:linear/linear/marital_status/marital_status_weights/Cast/xPack8linear/linear/marital_status/marital_status_weights/Prod<linear/linear/marital_status/marital_status_weights/GatherV2*
N*
_output_shapes
:*
T0	*

axis 
�
Alinear/linear/marital_status/marital_status_weights/SparseReshapeSparseReshape+linear/linear/DenseToSparseTensor_1/indices/linear/linear/DenseToSparseTensor_1/dense_shape:linear/linear/marital_status/marital_status_weights/Cast/x*-
_output_shapes
:���������:
�
Jlinear/linear/marital_status/marital_status_weights/SparseReshape/IdentityIdentitylinear/linear/lookup_1*
T0	*#
_output_shapes
:���������
�
Blinear/linear/marital_status/marital_status_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
@linear/linear/marital_status/marital_status_weights/GreaterEqualGreaterEqualJlinear/linear/marital_status/marital_status_weights/SparseReshape/IdentityBlinear/linear/marital_status/marital_status_weights/GreaterEqual/y*#
_output_shapes
:���������*
T0	
�
9linear/linear/marital_status/marital_status_weights/WhereWhere@linear/linear/marital_status/marital_status_weights/GreaterEqual*
T0
*'
_output_shapes
:���������
�
Alinear/linear/marital_status/marital_status_weights/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
;linear/linear/marital_status/marital_status_weights/ReshapeReshape9linear/linear/marital_status/marital_status_weights/WhereAlinear/linear/marital_status/marital_status_weights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:���������
�
Clinear/linear/marital_status/marital_status_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
>linear/linear/marital_status/marital_status_weights/GatherV2_1GatherV2Alinear/linear/marital_status/marital_status_weights/SparseReshape;linear/linear/marital_status/marital_status_weights/ReshapeClinear/linear/marital_status/marital_status_weights/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:���������*
Taxis0*
Tindices0	
�
Clinear/linear/marital_status/marital_status_weights/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
>linear/linear/marital_status/marital_status_weights/GatherV2_2GatherV2Jlinear/linear/marital_status/marital_status_weights/SparseReshape/Identity;linear/linear/marital_status/marital_status_weights/ReshapeClinear/linear/marital_status/marital_status_weights/GatherV2_2/axis*
Tindices0	*
Tparams0	*#
_output_shapes
:���������*
Taxis0
�
<linear/linear/marital_status/marital_status_weights/IdentityIdentityClinear/linear/marital_status/marital_status_weights/SparseReshape:1*
T0	*
_output_shapes
:
�
Mlinear/linear/marital_status/marital_status_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
[linear/linear/marital_status/marital_status_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows>linear/linear/marital_status/marital_status_weights/GatherV2_1>linear/linear/marital_status/marital_status_weights/GatherV2_2<linear/linear/marital_status/marital_status_weights/IdentityMlinear/linear/marital_status/marital_status_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
_linear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
�
alinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
alinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
�
Ylinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/strided_sliceStridedSlice[linear/linear/marital_status/marital_status_weights/SparseFillEmptyRows/SparseFillEmptyRows_linear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/strided_slice/stackalinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/strided_slice/stack_1alinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:���������*
T0	*
Index0*
shrink_axis_mask
�
Plinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/CastCastYlinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:���������*

DstT0*

SrcT0	
�
Rlinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/UniqueUnique]linear/linear/marital_status/marital_status_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:���������:���������*
out_idx0*
T0	
�
alinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/embedding_lookup/axisConst*7
_class-
+)loc:@linear/marital_status/weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
�
\linear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/embedding_lookupGatherV2)linear/marital_status/weights/part_0/readRlinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/Uniquealinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*7
_class-
+)loc:@linear/marital_status/weights/part_0*'
_output_shapes
:���������
�
Klinear/linear/marital_status/marital_status_weights/embedding_lookup_sparseSparseSegmentSum\linear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/embedding_lookupTlinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/Unique:1Plinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:���������*

Tidx0*
T0
�
Clinear/linear/marital_status/marital_status_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
=linear/linear/marital_status/marital_status_weights/Reshape_1Reshape]linear/linear/marital_status/marital_status_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Clinear/linear/marital_status/marital_status_weights/Reshape_1/shape*'
_output_shapes
:���������*
T0
*
Tshape0
�
9linear/linear/marital_status/marital_status_weights/ShapeShapeKlinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
Glinear/linear/marital_status/marital_status_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
Ilinear/linear/marital_status/marital_status_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Ilinear/linear/marital_status/marital_status_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Alinear/linear/marital_status/marital_status_weights/strided_sliceStridedSlice9linear/linear/marital_status/marital_status_weights/ShapeGlinear/linear/marital_status/marital_status_weights/strided_slice/stackIlinear/linear/marital_status/marital_status_weights/strided_slice/stack_1Ilinear/linear/marital_status/marital_status_weights/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 
}
;linear/linear/marital_status/marital_status_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
9linear/linear/marital_status/marital_status_weights/stackPack;linear/linear/marital_status/marital_status_weights/stack/0Alinear/linear/marital_status/marital_status_weights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
8linear/linear/marital_status/marital_status_weights/TileTile=linear/linear/marital_status/marital_status_weights/Reshape_19linear/linear/marital_status/marital_status_weights/stack*0
_output_shapes
:������������������*

Tmultiples0*
T0

�
>linear/linear/marital_status/marital_status_weights/zeros_like	ZerosLikeKlinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
3linear/linear/marital_status/marital_status_weightsSelect8linear/linear/marital_status/marital_status_weights/Tile>linear/linear/marital_status/marital_status_weights/zeros_likeKlinear/linear/marital_status/marital_status_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
:linear/linear/marital_status/marital_status_weights/Cast_1Cast/linear/linear/DenseToSparseTensor_1/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
�
Alinear/linear/marital_status/marital_status_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
@linear/linear/marital_status/marital_status_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
;linear/linear/marital_status/marital_status_weights/Slice_1Slice:linear/linear/marital_status/marital_status_weights/Cast_1Alinear/linear/marital_status/marital_status_weights/Slice_1/begin@linear/linear/marital_status/marital_status_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
�
;linear/linear/marital_status/marital_status_weights/Shape_1Shape3linear/linear/marital_status/marital_status_weights*
_output_shapes
:*
T0*
out_type0
�
Alinear/linear/marital_status/marital_status_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
�
@linear/linear/marital_status/marital_status_weights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
;linear/linear/marital_status/marital_status_weights/Slice_2Slice;linear/linear/marital_status/marital_status_weights/Shape_1Alinear/linear/marital_status/marital_status_weights/Slice_2/begin@linear/linear/marital_status/marital_status_weights/Slice_2/size*
_output_shapes
:*
Index0*
T0
�
?linear/linear/marital_status/marital_status_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
:linear/linear/marital_status/marital_status_weights/concatConcatV2;linear/linear/marital_status/marital_status_weights/Slice_1;linear/linear/marital_status/marital_status_weights/Slice_2?linear/linear/marital_status/marital_status_weights/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
=linear/linear/marital_status/marital_status_weights/Reshape_2Reshape3linear/linear/marital_status/marital_status_weights:linear/linear/marital_status/marital_status_weights/concat*
T0*
Tshape0*'
_output_shapes
:���������
n
linear/linear/Reshape_7/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
linear/linear/Reshape_7Reshape=linear/linear/marital_status/marital_status_weights/Reshape_2linear/linear/Reshape_7/shape*'
_output_shapes
:���������*
T0*
Tshape0
s
2linear/linear/DenseToSparseTensor_2/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB B 
�
,linear/linear/DenseToSparseTensor_2/NotEqualNotEqualstrided_slice_122linear/linear/DenseToSparseTensor_2/ignore_value/x*
T0*'
_output_shapes
:���������
�
+linear/linear/DenseToSparseTensor_2/indicesWhere,linear/linear/DenseToSparseTensor_2/NotEqual*'
_output_shapes
:���������*
T0

�
*linear/linear/DenseToSparseTensor_2/valuesGatherNdstrided_slice_12+linear/linear/DenseToSparseTensor_2/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������

/linear/linear/DenseToSparseTensor_2/dense_shapeShapestrided_slice_12*
T0*
out_type0	*
_output_shapes
:
�
linear/linear/lookup_2StringToHashBucketFast*linear/linear/DenseToSparseTensor_2/values*
num_buckets�*#
_output_shapes
:���������
�
Flinear/native_country/weights/part_0/Initializer/zeros/shape_as_tensorConst*7
_class-
+)loc:@linear/native_country/weights/part_0*
valueB"�     *
dtype0*
_output_shapes
:
�
<linear/native_country/weights/part_0/Initializer/zeros/ConstConst*7
_class-
+)loc:@linear/native_country/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
�
6linear/native_country/weights/part_0/Initializer/zerosFillFlinear/native_country/weights/part_0/Initializer/zeros/shape_as_tensor<linear/native_country/weights/part_0/Initializer/zeros/Const*7
_class-
+)loc:@linear/native_country/weights/part_0*

index_type0*
_output_shapes
:	�*
T0
�
$linear/native_country/weights/part_0
VariableV2*7
_class-
+)loc:@linear/native_country/weights/part_0*
	container *
shape:	�*
dtype0*
_output_shapes
:	�*
shared_name 
�
+linear/native_country/weights/part_0/AssignAssign$linear/native_country/weights/part_06linear/native_country/weights/part_0/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@linear/native_country/weights/part_0*
validate_shape(*
_output_shapes
:	�
�
)linear/native_country/weights/part_0/readIdentity$linear/native_country/weights/part_0*
T0*7
_class-
+)loc:@linear/native_country/weights/part_0*
_output_shapes
:	�
�
?linear/linear/native_country/native_country_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
>linear/linear/native_country/native_country_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
9linear/linear/native_country/native_country_weights/SliceSlice/linear/linear/DenseToSparseTensor_2/dense_shape?linear/linear/native_country/native_country_weights/Slice/begin>linear/linear/native_country/native_country_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
�
9linear/linear/native_country/native_country_weights/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
8linear/linear/native_country/native_country_weights/ProdProd9linear/linear/native_country/native_country_weights/Slice9linear/linear/native_country/native_country_weights/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
Dlinear/linear/native_country/native_country_weights/GatherV2/indicesConst*
_output_shapes
: *
value	B :*
dtype0
�
Alinear/linear/native_country/native_country_weights/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
<linear/linear/native_country/native_country_weights/GatherV2GatherV2/linear/linear/DenseToSparseTensor_2/dense_shapeDlinear/linear/native_country/native_country_weights/GatherV2/indicesAlinear/linear/native_country/native_country_weights/GatherV2/axis*
Tindices0*
Tparams0	*
_output_shapes
: *
Taxis0
�
:linear/linear/native_country/native_country_weights/Cast/xPack8linear/linear/native_country/native_country_weights/Prod<linear/linear/native_country/native_country_weights/GatherV2*
_output_shapes
:*
T0	*

axis *
N
�
Alinear/linear/native_country/native_country_weights/SparseReshapeSparseReshape+linear/linear/DenseToSparseTensor_2/indices/linear/linear/DenseToSparseTensor_2/dense_shape:linear/linear/native_country/native_country_weights/Cast/x*-
_output_shapes
:���������:
�
Jlinear/linear/native_country/native_country_weights/SparseReshape/IdentityIdentitylinear/linear/lookup_2*#
_output_shapes
:���������*
T0	
�
Blinear/linear/native_country/native_country_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
@linear/linear/native_country/native_country_weights/GreaterEqualGreaterEqualJlinear/linear/native_country/native_country_weights/SparseReshape/IdentityBlinear/linear/native_country/native_country_weights/GreaterEqual/y*#
_output_shapes
:���������*
T0	
�
9linear/linear/native_country/native_country_weights/WhereWhere@linear/linear/native_country/native_country_weights/GreaterEqual*
T0
*'
_output_shapes
:���������
�
Alinear/linear/native_country/native_country_weights/Reshape/shapeConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
;linear/linear/native_country/native_country_weights/ReshapeReshape9linear/linear/native_country/native_country_weights/WhereAlinear/linear/native_country/native_country_weights/Reshape/shape*#
_output_shapes
:���������*
T0	*
Tshape0
�
Clinear/linear/native_country/native_country_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
>linear/linear/native_country/native_country_weights/GatherV2_1GatherV2Alinear/linear/native_country/native_country_weights/SparseReshape;linear/linear/native_country/native_country_weights/ReshapeClinear/linear/native_country/native_country_weights/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:���������
�
Clinear/linear/native_country/native_country_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
>linear/linear/native_country/native_country_weights/GatherV2_2GatherV2Jlinear/linear/native_country/native_country_weights/SparseReshape/Identity;linear/linear/native_country/native_country_weights/ReshapeClinear/linear/native_country/native_country_weights/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
<linear/linear/native_country/native_country_weights/IdentityIdentityClinear/linear/native_country/native_country_weights/SparseReshape:1*
T0	*
_output_shapes
:
�
Mlinear/linear/native_country/native_country_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
[linear/linear/native_country/native_country_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows>linear/linear/native_country/native_country_weights/GatherV2_1>linear/linear/native_country/native_country_weights/GatherV2_2<linear/linear/native_country/native_country_weights/IdentityMlinear/linear/native_country/native_country_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:���������:���������:���������:���������*
T0	
�
_linear/linear/native_country/native_country_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
�
alinear/linear/native_country/native_country_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
�
alinear/linear/native_country/native_country_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
�
Ylinear/linear/native_country/native_country_weights/embedding_lookup_sparse/strided_sliceStridedSlice[linear/linear/native_country/native_country_weights/SparseFillEmptyRows/SparseFillEmptyRows_linear/linear/native_country/native_country_weights/embedding_lookup_sparse/strided_slice/stackalinear/linear/native_country/native_country_weights/embedding_lookup_sparse/strided_slice/stack_1alinear/linear/native_country/native_country_weights/embedding_lookup_sparse/strided_slice/stack_2*
Index0*
T0	*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:���������
�
Plinear/linear/native_country/native_country_weights/embedding_lookup_sparse/CastCastYlinear/linear/native_country/native_country_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:���������*

DstT0*

SrcT0	
�
Rlinear/linear/native_country/native_country_weights/embedding_lookup_sparse/UniqueUnique]linear/linear/native_country/native_country_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:���������:���������*
out_idx0*
T0	
�
alinear/linear/native_country/native_country_weights/embedding_lookup_sparse/embedding_lookup/axisConst*7
_class-
+)loc:@linear/native_country/weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
�
\linear/linear/native_country/native_country_weights/embedding_lookup_sparse/embedding_lookupGatherV2)linear/native_country/weights/part_0/readRlinear/linear/native_country/native_country_weights/embedding_lookup_sparse/Uniquealinear/linear/native_country/native_country_weights/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0*7
_class-
+)loc:@linear/native_country/weights/part_0
�
Klinear/linear/native_country/native_country_weights/embedding_lookup_sparseSparseSegmentSum\linear/linear/native_country/native_country_weights/embedding_lookup_sparse/embedding_lookupTlinear/linear/native_country/native_country_weights/embedding_lookup_sparse/Unique:1Plinear/linear/native_country/native_country_weights/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:���������
�
Clinear/linear/native_country/native_country_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
=linear/linear/native_country/native_country_weights/Reshape_1Reshape]linear/linear/native_country/native_country_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Clinear/linear/native_country/native_country_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:���������
�
9linear/linear/native_country/native_country_weights/ShapeShapeKlinear/linear/native_country/native_country_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
Glinear/linear/native_country/native_country_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
Ilinear/linear/native_country/native_country_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
�
Ilinear/linear/native_country/native_country_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Alinear/linear/native_country/native_country_weights/strided_sliceStridedSlice9linear/linear/native_country/native_country_weights/ShapeGlinear/linear/native_country/native_country_weights/strided_slice/stackIlinear/linear/native_country/native_country_weights/strided_slice/stack_1Ilinear/linear/native_country/native_country_weights/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
}
;linear/linear/native_country/native_country_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
9linear/linear/native_country/native_country_weights/stackPack;linear/linear/native_country/native_country_weights/stack/0Alinear/linear/native_country/native_country_weights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
8linear/linear/native_country/native_country_weights/TileTile=linear/linear/native_country/native_country_weights/Reshape_19linear/linear/native_country/native_country_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:������������������
�
>linear/linear/native_country/native_country_weights/zeros_like	ZerosLikeKlinear/linear/native_country/native_country_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
3linear/linear/native_country/native_country_weightsSelect8linear/linear/native_country/native_country_weights/Tile>linear/linear/native_country/native_country_weights/zeros_likeKlinear/linear/native_country/native_country_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
:linear/linear/native_country/native_country_weights/Cast_1Cast/linear/linear/DenseToSparseTensor_2/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
�
Alinear/linear/native_country/native_country_weights/Slice_1/beginConst*
_output_shapes
:*
valueB: *
dtype0
�
@linear/linear/native_country/native_country_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
;linear/linear/native_country/native_country_weights/Slice_1Slice:linear/linear/native_country/native_country_weights/Cast_1Alinear/linear/native_country/native_country_weights/Slice_1/begin@linear/linear/native_country/native_country_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
�
;linear/linear/native_country/native_country_weights/Shape_1Shape3linear/linear/native_country/native_country_weights*
T0*
out_type0*
_output_shapes
:
�
Alinear/linear/native_country/native_country_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
�
@linear/linear/native_country/native_country_weights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
;linear/linear/native_country/native_country_weights/Slice_2Slice;linear/linear/native_country/native_country_weights/Shape_1Alinear/linear/native_country/native_country_weights/Slice_2/begin@linear/linear/native_country/native_country_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
�
?linear/linear/native_country/native_country_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
:linear/linear/native_country/native_country_weights/concatConcatV2;linear/linear/native_country/native_country_weights/Slice_1;linear/linear/native_country/native_country_weights/Slice_2?linear/linear/native_country/native_country_weights/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
=linear/linear/native_country/native_country_weights/Reshape_2Reshape3linear/linear/native_country/native_country_weights:linear/linear/native_country/native_country_weights/concat*
T0*
Tshape0*'
_output_shapes
:���������
n
linear/linear/Reshape_8/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
linear/linear/Reshape_8Reshape=linear/linear/native_country/native_country_weights/Reshape_2linear/linear/Reshape_8/shape*'
_output_shapes
:���������*
T0*
Tshape0
s
2linear/linear/DenseToSparseTensor_3/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB B 
�
,linear/linear/DenseToSparseTensor_3/NotEqualNotEqualstrided_slice_52linear/linear/DenseToSparseTensor_3/ignore_value/x*
T0*'
_output_shapes
:���������
�
+linear/linear/DenseToSparseTensor_3/indicesWhere,linear/linear/DenseToSparseTensor_3/NotEqual*'
_output_shapes
:���������*
T0

�
*linear/linear/DenseToSparseTensor_3/valuesGatherNdstrided_slice_5+linear/linear/DenseToSparseTensor_3/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
~
/linear/linear/DenseToSparseTensor_3/dense_shapeShapestrided_slice_5*
T0*
out_type0	*
_output_shapes
:
�
linear/linear/lookup_3StringToHashBucketFast*linear/linear/DenseToSparseTensor_3/values*#
_output_shapes
:���������*
num_buckets�
�
Blinear/occupation/weights/part_0/Initializer/zeros/shape_as_tensorConst*3
_class)
'%loc:@linear/occupation/weights/part_0*
valueB"�     *
dtype0*
_output_shapes
:
�
8linear/occupation/weights/part_0/Initializer/zeros/ConstConst*3
_class)
'%loc:@linear/occupation/weights/part_0*
valueB
 *    *
dtype0*
_output_shapes
: 
�
2linear/occupation/weights/part_0/Initializer/zerosFillBlinear/occupation/weights/part_0/Initializer/zeros/shape_as_tensor8linear/occupation/weights/part_0/Initializer/zeros/Const*
T0*3
_class)
'%loc:@linear/occupation/weights/part_0*

index_type0*
_output_shapes
:	�
�
 linear/occupation/weights/part_0
VariableV2*
dtype0*
_output_shapes
:	�*
shared_name *3
_class)
'%loc:@linear/occupation/weights/part_0*
	container *
shape:	�
�
'linear/occupation/weights/part_0/AssignAssign linear/occupation/weights/part_02linear/occupation/weights/part_0/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@linear/occupation/weights/part_0*
validate_shape(*
_output_shapes
:	�
�
%linear/occupation/weights/part_0/readIdentity linear/occupation/weights/part_0*
_output_shapes
:	�*
T0*3
_class)
'%loc:@linear/occupation/weights/part_0
�
7linear/linear/occupation/occupation_weights/Slice/beginConst*
_output_shapes
:*
valueB: *
dtype0
�
6linear/linear/occupation/occupation_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
1linear/linear/occupation/occupation_weights/SliceSlice/linear/linear/DenseToSparseTensor_3/dense_shape7linear/linear/occupation/occupation_weights/Slice/begin6linear/linear/occupation/occupation_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
{
1linear/linear/occupation/occupation_weights/ConstConst*
_output_shapes
:*
valueB: *
dtype0
�
0linear/linear/occupation/occupation_weights/ProdProd1linear/linear/occupation/occupation_weights/Slice1linear/linear/occupation/occupation_weights/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
~
<linear/linear/occupation/occupation_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
{
9linear/linear/occupation/occupation_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
4linear/linear/occupation/occupation_weights/GatherV2GatherV2/linear/linear/DenseToSparseTensor_3/dense_shape<linear/linear/occupation/occupation_weights/GatherV2/indices9linear/linear/occupation/occupation_weights/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
�
2linear/linear/occupation/occupation_weights/Cast/xPack0linear/linear/occupation/occupation_weights/Prod4linear/linear/occupation/occupation_weights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
�
9linear/linear/occupation/occupation_weights/SparseReshapeSparseReshape+linear/linear/DenseToSparseTensor_3/indices/linear/linear/DenseToSparseTensor_3/dense_shape2linear/linear/occupation/occupation_weights/Cast/x*-
_output_shapes
:���������:
�
Blinear/linear/occupation/occupation_weights/SparseReshape/IdentityIdentitylinear/linear/lookup_3*
T0	*#
_output_shapes
:���������
|
:linear/linear/occupation/occupation_weights/GreaterEqual/yConst*
_output_shapes
: *
value	B	 R *
dtype0	
�
8linear/linear/occupation/occupation_weights/GreaterEqualGreaterEqualBlinear/linear/occupation/occupation_weights/SparseReshape/Identity:linear/linear/occupation/occupation_weights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
1linear/linear/occupation/occupation_weights/WhereWhere8linear/linear/occupation/occupation_weights/GreaterEqual*'
_output_shapes
:���������*
T0

�
9linear/linear/occupation/occupation_weights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
3linear/linear/occupation/occupation_weights/ReshapeReshape1linear/linear/occupation/occupation_weights/Where9linear/linear/occupation/occupation_weights/Reshape/shape*#
_output_shapes
:���������*
T0	*
Tshape0
}
;linear/linear/occupation/occupation_weights/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
6linear/linear/occupation/occupation_weights/GatherV2_1GatherV29linear/linear/occupation/occupation_weights/SparseReshape3linear/linear/occupation/occupation_weights/Reshape;linear/linear/occupation/occupation_weights/GatherV2_1/axis*
Taxis0*
Tindices0	*
Tparams0	*'
_output_shapes
:���������
}
;linear/linear/occupation/occupation_weights/GatherV2_2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
6linear/linear/occupation/occupation_weights/GatherV2_2GatherV2Blinear/linear/occupation/occupation_weights/SparseReshape/Identity3linear/linear/occupation/occupation_weights/Reshape;linear/linear/occupation/occupation_weights/GatherV2_2/axis*#
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
4linear/linear/occupation/occupation_weights/IdentityIdentity;linear/linear/occupation/occupation_weights/SparseReshape:1*
_output_shapes
:*
T0	
�
Elinear/linear/occupation/occupation_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
_output_shapes
: *
value	B	 R 
�
Slinear/linear/occupation/occupation_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows6linear/linear/occupation/occupation_weights/GatherV2_16linear/linear/occupation/occupation_weights/GatherV2_24linear/linear/occupation/occupation_weights/IdentityElinear/linear/occupation/occupation_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
Wlinear/linear/occupation/occupation_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
�
Ylinear/linear/occupation/occupation_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
�
Ylinear/linear/occupation/occupation_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
Qlinear/linear/occupation/occupation_weights/embedding_lookup_sparse/strided_sliceStridedSliceSlinear/linear/occupation/occupation_weights/SparseFillEmptyRows/SparseFillEmptyRowsWlinear/linear/occupation/occupation_weights/embedding_lookup_sparse/strided_slice/stackYlinear/linear/occupation/occupation_weights/embedding_lookup_sparse/strided_slice/stack_1Ylinear/linear/occupation/occupation_weights/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:���������*
T0	*
Index0
�
Hlinear/linear/occupation/occupation_weights/embedding_lookup_sparse/CastCastQlinear/linear/occupation/occupation_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:���������*

DstT0
�
Jlinear/linear/occupation/occupation_weights/embedding_lookup_sparse/UniqueUniqueUlinear/linear/occupation/occupation_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:���������:���������*
out_idx0*
T0	
�
Ylinear/linear/occupation/occupation_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
_output_shapes
: *3
_class)
'%loc:@linear/occupation/weights/part_0*
value	B : *
dtype0
�
Tlinear/linear/occupation/occupation_weights/embedding_lookup_sparse/embedding_lookupGatherV2%linear/occupation/weights/part_0/readJlinear/linear/occupation/occupation_weights/embedding_lookup_sparse/UniqueYlinear/linear/occupation/occupation_weights/embedding_lookup_sparse/embedding_lookup/axis*
Taxis0*
Tindices0	*
Tparams0*3
_class)
'%loc:@linear/occupation/weights/part_0*'
_output_shapes
:���������
�
Clinear/linear/occupation/occupation_weights/embedding_lookup_sparseSparseSegmentSumTlinear/linear/occupation/occupation_weights/embedding_lookup_sparse/embedding_lookupLlinear/linear/occupation/occupation_weights/embedding_lookup_sparse/Unique:1Hlinear/linear/occupation/occupation_weights/embedding_lookup_sparse/Cast*
T0*'
_output_shapes
:���������*

Tidx0
�
;linear/linear/occupation/occupation_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
5linear/linear/occupation/occupation_weights/Reshape_1ReshapeUlinear/linear/occupation/occupation_weights/SparseFillEmptyRows/SparseFillEmptyRows:2;linear/linear/occupation/occupation_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:���������
�
1linear/linear/occupation/occupation_weights/ShapeShapeClinear/linear/occupation/occupation_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
?linear/linear/occupation/occupation_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
Alinear/linear/occupation/occupation_weights/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
�
Alinear/linear/occupation/occupation_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
9linear/linear/occupation/occupation_weights/strided_sliceStridedSlice1linear/linear/occupation/occupation_weights/Shape?linear/linear/occupation/occupation_weights/strided_slice/stackAlinear/linear/occupation/occupation_weights/strided_slice/stack_1Alinear/linear/occupation/occupation_weights/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
u
3linear/linear/occupation/occupation_weights/stack/0Const*
dtype0*
_output_shapes
: *
value	B :
�
1linear/linear/occupation/occupation_weights/stackPack3linear/linear/occupation/occupation_weights/stack/09linear/linear/occupation/occupation_weights/strided_slice*
_output_shapes
:*
T0*

axis *
N
�
0linear/linear/occupation/occupation_weights/TileTile5linear/linear/occupation/occupation_weights/Reshape_11linear/linear/occupation/occupation_weights/stack*0
_output_shapes
:������������������*

Tmultiples0*
T0

�
6linear/linear/occupation/occupation_weights/zeros_like	ZerosLikeClinear/linear/occupation/occupation_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
+linear/linear/occupation/occupation_weightsSelect0linear/linear/occupation/occupation_weights/Tile6linear/linear/occupation/occupation_weights/zeros_likeClinear/linear/occupation/occupation_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
2linear/linear/occupation/occupation_weights/Cast_1Cast/linear/linear/DenseToSparseTensor_3/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
�
9linear/linear/occupation/occupation_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
8linear/linear/occupation/occupation_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
3linear/linear/occupation/occupation_weights/Slice_1Slice2linear/linear/occupation/occupation_weights/Cast_19linear/linear/occupation/occupation_weights/Slice_1/begin8linear/linear/occupation/occupation_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
�
3linear/linear/occupation/occupation_weights/Shape_1Shape+linear/linear/occupation/occupation_weights*
out_type0*
_output_shapes
:*
T0
�
9linear/linear/occupation/occupation_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
�
8linear/linear/occupation/occupation_weights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
3linear/linear/occupation/occupation_weights/Slice_2Slice3linear/linear/occupation/occupation_weights/Shape_19linear/linear/occupation/occupation_weights/Slice_2/begin8linear/linear/occupation/occupation_weights/Slice_2/size*
_output_shapes
:*
Index0*
T0
y
7linear/linear/occupation/occupation_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
2linear/linear/occupation/occupation_weights/concatConcatV23linear/linear/occupation/occupation_weights/Slice_13linear/linear/occupation/occupation_weights/Slice_27linear/linear/occupation/occupation_weights/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
5linear/linear/occupation/occupation_weights/Reshape_2Reshape+linear/linear/occupation/occupation_weights2linear/linear/occupation/occupation_weights/concat*
T0*
Tshape0*'
_output_shapes
:���������
n
linear/linear/Reshape_9/shapeConst*
_output_shapes
:*
valueB"����   *
dtype0
�
linear/linear/Reshape_9Reshape5linear/linear/occupation/occupation_weights/Reshape_2linear/linear/Reshape_9/shape*'
_output_shapes
:���������*
T0*
Tshape0
s
2linear/linear/DenseToSparseTensor_4/ignore_value/xConst*
dtype0*
_output_shapes
: *
valueB B 
�
,linear/linear/DenseToSparseTensor_4/NotEqualNotEqualstrided_slice_62linear/linear/DenseToSparseTensor_4/ignore_value/x*
T0*'
_output_shapes
:���������
�
+linear/linear/DenseToSparseTensor_4/indicesWhere,linear/linear/DenseToSparseTensor_4/NotEqual*
T0
*'
_output_shapes
:���������
�
*linear/linear/DenseToSparseTensor_4/valuesGatherNdstrided_slice_6+linear/linear/DenseToSparseTensor_4/indices*
Tparams0*#
_output_shapes
:���������*
Tindices0	
~
/linear/linear/DenseToSparseTensor_4/dense_shapeShapestrided_slice_6*
T0*
out_type0	*
_output_shapes
:
�
linear/linear/lookup_4StringToHashBucketFast*linear/linear/DenseToSparseTensor_4/values*
num_bucketsd*#
_output_shapes
:���������
�
4linear/relationship/weights/part_0/Initializer/zerosConst*5
_class+
)'loc:@linear/relationship/weights/part_0*
valueBd*    *
dtype0*
_output_shapes

:d
�
"linear/relationship/weights/part_0
VariableV2*
	container *
shape
:d*
dtype0*
_output_shapes

:d*
shared_name *5
_class+
)'loc:@linear/relationship/weights/part_0
�
)linear/relationship/weights/part_0/AssignAssign"linear/relationship/weights/part_04linear/relationship/weights/part_0/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@linear/relationship/weights/part_0*
validate_shape(*
_output_shapes

:d
�
'linear/relationship/weights/part_0/readIdentity"linear/relationship/weights/part_0*
T0*5
_class+
)'loc:@linear/relationship/weights/part_0*
_output_shapes

:d
�
;linear/linear/relationship/relationship_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
:linear/linear/relationship/relationship_weights/Slice/sizeConst*
_output_shapes
:*
valueB:*
dtype0
�
5linear/linear/relationship/relationship_weights/SliceSlice/linear/linear/DenseToSparseTensor_4/dense_shape;linear/linear/relationship/relationship_weights/Slice/begin:linear/linear/relationship/relationship_weights/Slice/size*
Index0*
T0	*
_output_shapes
:

5linear/linear/relationship/relationship_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
4linear/linear/relationship/relationship_weights/ProdProd5linear/linear/relationship/relationship_weights/Slice5linear/linear/relationship/relationship_weights/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0	
�
@linear/linear/relationship/relationship_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 

=linear/linear/relationship/relationship_weights/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
8linear/linear/relationship/relationship_weights/GatherV2GatherV2/linear/linear/DenseToSparseTensor_4/dense_shape@linear/linear/relationship/relationship_weights/GatherV2/indices=linear/linear/relationship/relationship_weights/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
�
6linear/linear/relationship/relationship_weights/Cast/xPack4linear/linear/relationship/relationship_weights/Prod8linear/linear/relationship/relationship_weights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
�
=linear/linear/relationship/relationship_weights/SparseReshapeSparseReshape+linear/linear/DenseToSparseTensor_4/indices/linear/linear/DenseToSparseTensor_4/dense_shape6linear/linear/relationship/relationship_weights/Cast/x*-
_output_shapes
:���������:
�
Flinear/linear/relationship/relationship_weights/SparseReshape/IdentityIdentitylinear/linear/lookup_4*#
_output_shapes
:���������*
T0	
�
>linear/linear/relationship/relationship_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
<linear/linear/relationship/relationship_weights/GreaterEqualGreaterEqualFlinear/linear/relationship/relationship_weights/SparseReshape/Identity>linear/linear/relationship/relationship_weights/GreaterEqual/y*#
_output_shapes
:���������*
T0	
�
5linear/linear/relationship/relationship_weights/WhereWhere<linear/linear/relationship/relationship_weights/GreaterEqual*
T0
*'
_output_shapes
:���������
�
=linear/linear/relationship/relationship_weights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
7linear/linear/relationship/relationship_weights/ReshapeReshape5linear/linear/relationship/relationship_weights/Where=linear/linear/relationship/relationship_weights/Reshape/shape*#
_output_shapes
:���������*
T0	*
Tshape0
�
?linear/linear/relationship/relationship_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
:linear/linear/relationship/relationship_weights/GatherV2_1GatherV2=linear/linear/relationship/relationship_weights/SparseReshape7linear/linear/relationship/relationship_weights/Reshape?linear/linear/relationship/relationship_weights/GatherV2_1/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
?linear/linear/relationship/relationship_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
:linear/linear/relationship/relationship_weights/GatherV2_2GatherV2Flinear/linear/relationship/relationship_weights/SparseReshape/Identity7linear/linear/relationship/relationship_weights/Reshape?linear/linear/relationship/relationship_weights/GatherV2_2/axis*
Taxis0*
Tindices0	*
Tparams0	*#
_output_shapes
:���������
�
8linear/linear/relationship/relationship_weights/IdentityIdentity?linear/linear/relationship/relationship_weights/SparseReshape:1*
T0	*
_output_shapes
:
�
Ilinear/linear/relationship/relationship_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
Wlinear/linear/relationship/relationship_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows:linear/linear/relationship/relationship_weights/GatherV2_1:linear/linear/relationship/relationship_weights/GatherV2_28linear/linear/relationship/relationship_weights/IdentityIlinear/linear/relationship/relationship_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
[linear/linear/relationship/relationship_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
�
]linear/linear/relationship/relationship_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
_output_shapes
:*
valueB"       *
dtype0
�
]linear/linear/relationship/relationship_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
Ulinear/linear/relationship/relationship_weights/embedding_lookup_sparse/strided_sliceStridedSliceWlinear/linear/relationship/relationship_weights/SparseFillEmptyRows/SparseFillEmptyRows[linear/linear/relationship/relationship_weights/embedding_lookup_sparse/strided_slice/stack]linear/linear/relationship/relationship_weights/embedding_lookup_sparse/strided_slice/stack_1]linear/linear/relationship/relationship_weights/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:���������*
T0	*
Index0
�
Llinear/linear/relationship/relationship_weights/embedding_lookup_sparse/CastCastUlinear/linear/relationship/relationship_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:���������*

DstT0
�
Nlinear/linear/relationship/relationship_weights/embedding_lookup_sparse/UniqueUniqueYlinear/linear/relationship/relationship_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:���������:���������
�
]linear/linear/relationship/relationship_weights/embedding_lookup_sparse/embedding_lookup/axisConst*5
_class+
)'loc:@linear/relationship/weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
�
Xlinear/linear/relationship/relationship_weights/embedding_lookup_sparse/embedding_lookupGatherV2'linear/relationship/weights/part_0/readNlinear/linear/relationship/relationship_weights/embedding_lookup_sparse/Unique]linear/linear/relationship/relationship_weights/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0*5
_class+
)'loc:@linear/relationship/weights/part_0
�
Glinear/linear/relationship/relationship_weights/embedding_lookup_sparseSparseSegmentSumXlinear/linear/relationship/relationship_weights/embedding_lookup_sparse/embedding_lookupPlinear/linear/relationship/relationship_weights/embedding_lookup_sparse/Unique:1Llinear/linear/relationship/relationship_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:���������*

Tidx0*
T0
�
?linear/linear/relationship/relationship_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
9linear/linear/relationship/relationship_weights/Reshape_1ReshapeYlinear/linear/relationship/relationship_weights/SparseFillEmptyRows/SparseFillEmptyRows:2?linear/linear/relationship/relationship_weights/Reshape_1/shape*
Tshape0*'
_output_shapes
:���������*
T0

�
5linear/linear/relationship/relationship_weights/ShapeShapeGlinear/linear/relationship/relationship_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
Clinear/linear/relationship/relationship_weights/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
�
Elinear/linear/relationship/relationship_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Elinear/linear/relationship/relationship_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
=linear/linear/relationship/relationship_weights/strided_sliceStridedSlice5linear/linear/relationship/relationship_weights/ShapeClinear/linear/relationship/relationship_weights/strided_slice/stackElinear/linear/relationship/relationship_weights/strided_slice/stack_1Elinear/linear/relationship/relationship_weights/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
y
7linear/linear/relationship/relationship_weights/stack/0Const*
_output_shapes
: *
value	B :*
dtype0
�
5linear/linear/relationship/relationship_weights/stackPack7linear/linear/relationship/relationship_weights/stack/0=linear/linear/relationship/relationship_weights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
4linear/linear/relationship/relationship_weights/TileTile9linear/linear/relationship/relationship_weights/Reshape_15linear/linear/relationship/relationship_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:������������������
�
:linear/linear/relationship/relationship_weights/zeros_like	ZerosLikeGlinear/linear/relationship/relationship_weights/embedding_lookup_sparse*'
_output_shapes
:���������*
T0
�
/linear/linear/relationship/relationship_weightsSelect4linear/linear/relationship/relationship_weights/Tile:linear/linear/relationship/relationship_weights/zeros_likeGlinear/linear/relationship/relationship_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
6linear/linear/relationship/relationship_weights/Cast_1Cast/linear/linear/DenseToSparseTensor_4/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
�
=linear/linear/relationship/relationship_weights/Slice_1/beginConst*
dtype0*
_output_shapes
:*
valueB: 
�
<linear/linear/relationship/relationship_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
7linear/linear/relationship/relationship_weights/Slice_1Slice6linear/linear/relationship/relationship_weights/Cast_1=linear/linear/relationship/relationship_weights/Slice_1/begin<linear/linear/relationship/relationship_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
�
7linear/linear/relationship/relationship_weights/Shape_1Shape/linear/linear/relationship/relationship_weights*
T0*
out_type0*
_output_shapes
:
�
=linear/linear/relationship/relationship_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
�
<linear/linear/relationship/relationship_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
7linear/linear/relationship/relationship_weights/Slice_2Slice7linear/linear/relationship/relationship_weights/Shape_1=linear/linear/relationship/relationship_weights/Slice_2/begin<linear/linear/relationship/relationship_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
}
;linear/linear/relationship/relationship_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
6linear/linear/relationship/relationship_weights/concatConcatV27linear/linear/relationship/relationship_weights/Slice_17linear/linear/relationship/relationship_weights/Slice_2;linear/linear/relationship/relationship_weights/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
9linear/linear/relationship/relationship_weights/Reshape_2Reshape/linear/linear/relationship/relationship_weights6linear/linear/relationship/relationship_weights/concat*
Tshape0*'
_output_shapes
:���������*
T0
o
linear/linear/Reshape_10/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
linear/linear/Reshape_10Reshape9linear/linear/relationship/relationship_weights/Reshape_2linear/linear/Reshape_10/shape*
Tshape0*'
_output_shapes
:���������*
T0
s
2linear/linear/DenseToSparseTensor_5/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
�
,linear/linear/DenseToSparseTensor_5/NotEqualNotEqualstrided_slice_12linear/linear/DenseToSparseTensor_5/ignore_value/x*
T0*'
_output_shapes
:���������
�
+linear/linear/DenseToSparseTensor_5/indicesWhere,linear/linear/DenseToSparseTensor_5/NotEqual*
T0
*'
_output_shapes
:���������
�
*linear/linear/DenseToSparseTensor_5/valuesGatherNdstrided_slice_1+linear/linear/DenseToSparseTensor_5/indices*
Tparams0*#
_output_shapes
:���������*
Tindices0	
~
/linear/linear/DenseToSparseTensor_5/dense_shapeShapestrided_slice_1*
T0*
out_type0	*
_output_shapes
:
�
linear/linear/lookup_5StringToHashBucketFast*linear/linear/DenseToSparseTensor_5/values*#
_output_shapes
:���������*
num_bucketsd
�
1linear/workclass/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:d*2
_class(
&$loc:@linear/workclass/weights/part_0*
valueBd*    
�
linear/workclass/weights/part_0
VariableV2*
dtype0*
_output_shapes

:d*
shared_name *2
_class(
&$loc:@linear/workclass/weights/part_0*
	container *
shape
:d
�
&linear/workclass/weights/part_0/AssignAssignlinear/workclass/weights/part_01linear/workclass/weights/part_0/Initializer/zeros*2
_class(
&$loc:@linear/workclass/weights/part_0*
validate_shape(*
_output_shapes

:d*
use_locking(*
T0
�
$linear/workclass/weights/part_0/readIdentitylinear/workclass/weights/part_0*
_output_shapes

:d*
T0*2
_class(
&$loc:@linear/workclass/weights/part_0

5linear/linear/workclass/workclass_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
~
4linear/linear/workclass/workclass_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
/linear/linear/workclass/workclass_weights/SliceSlice/linear/linear/DenseToSparseTensor_5/dense_shape5linear/linear/workclass/workclass_weights/Slice/begin4linear/linear/workclass/workclass_weights/Slice/size*
_output_shapes
:*
Index0*
T0	
y
/linear/linear/workclass/workclass_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
.linear/linear/workclass/workclass_weights/ProdProd/linear/linear/workclass/workclass_weights/Slice/linear/linear/workclass/workclass_weights/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
|
:linear/linear/workclass/workclass_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
y
7linear/linear/workclass/workclass_weights/GatherV2/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
2linear/linear/workclass/workclass_weights/GatherV2GatherV2/linear/linear/DenseToSparseTensor_5/dense_shape:linear/linear/workclass/workclass_weights/GatherV2/indices7linear/linear/workclass/workclass_weights/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
�
0linear/linear/workclass/workclass_weights/Cast/xPack.linear/linear/workclass/workclass_weights/Prod2linear/linear/workclass/workclass_weights/GatherV2*
T0	*

axis *
N*
_output_shapes
:
�
7linear/linear/workclass/workclass_weights/SparseReshapeSparseReshape+linear/linear/DenseToSparseTensor_5/indices/linear/linear/DenseToSparseTensor_5/dense_shape0linear/linear/workclass/workclass_weights/Cast/x*-
_output_shapes
:���������:
�
@linear/linear/workclass/workclass_weights/SparseReshape/IdentityIdentitylinear/linear/lookup_5*
T0	*#
_output_shapes
:���������
z
8linear/linear/workclass/workclass_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
6linear/linear/workclass/workclass_weights/GreaterEqualGreaterEqual@linear/linear/workclass/workclass_weights/SparseReshape/Identity8linear/linear/workclass/workclass_weights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
/linear/linear/workclass/workclass_weights/WhereWhere6linear/linear/workclass/workclass_weights/GreaterEqual*'
_output_shapes
:���������*
T0

�
7linear/linear/workclass/workclass_weights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
1linear/linear/workclass/workclass_weights/ReshapeReshape/linear/linear/workclass/workclass_weights/Where7linear/linear/workclass/workclass_weights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:���������
{
9linear/linear/workclass/workclass_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
4linear/linear/workclass/workclass_weights/GatherV2_1GatherV27linear/linear/workclass/workclass_weights/SparseReshape1linear/linear/workclass/workclass_weights/Reshape9linear/linear/workclass/workclass_weights/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:���������*
Taxis0
{
9linear/linear/workclass/workclass_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
4linear/linear/workclass/workclass_weights/GatherV2_2GatherV2@linear/linear/workclass/workclass_weights/SparseReshape/Identity1linear/linear/workclass/workclass_weights/Reshape9linear/linear/workclass/workclass_weights/GatherV2_2/axis*#
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
2linear/linear/workclass/workclass_weights/IdentityIdentity9linear/linear/workclass/workclass_weights/SparseReshape:1*
T0	*
_output_shapes
:
�
Clinear/linear/workclass/workclass_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
Qlinear/linear/workclass/workclass_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows4linear/linear/workclass/workclass_weights/GatherV2_14linear/linear/workclass/workclass_weights/GatherV2_22linear/linear/workclass/workclass_weights/IdentityClinear/linear/workclass/workclass_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
Ulinear/linear/workclass/workclass_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
�
Wlinear/linear/workclass/workclass_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
Wlinear/linear/workclass/workclass_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
�
Olinear/linear/workclass/workclass_weights/embedding_lookup_sparse/strided_sliceStridedSliceQlinear/linear/workclass/workclass_weights/SparseFillEmptyRows/SparseFillEmptyRowsUlinear/linear/workclass/workclass_weights/embedding_lookup_sparse/strided_slice/stackWlinear/linear/workclass/workclass_weights/embedding_lookup_sparse/strided_slice/stack_1Wlinear/linear/workclass/workclass_weights/embedding_lookup_sparse/strided_slice/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:���������*
Index0*
T0	
�
Flinear/linear/workclass/workclass_weights/embedding_lookup_sparse/CastCastOlinear/linear/workclass/workclass_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:���������*

DstT0
�
Hlinear/linear/workclass/workclass_weights/embedding_lookup_sparse/UniqueUniqueSlinear/linear/workclass/workclass_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:���������:���������
�
Wlinear/linear/workclass/workclass_weights/embedding_lookup_sparse/embedding_lookup/axisConst*2
_class(
&$loc:@linear/workclass/weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
�
Rlinear/linear/workclass/workclass_weights/embedding_lookup_sparse/embedding_lookupGatherV2$linear/workclass/weights/part_0/readHlinear/linear/workclass/workclass_weights/embedding_lookup_sparse/UniqueWlinear/linear/workclass/workclass_weights/embedding_lookup_sparse/embedding_lookup/axis*
Tindices0	*
Tparams0*2
_class(
&$loc:@linear/workclass/weights/part_0*'
_output_shapes
:���������*
Taxis0
�
Alinear/linear/workclass/workclass_weights/embedding_lookup_sparseSparseSegmentSumRlinear/linear/workclass/workclass_weights/embedding_lookup_sparse/embedding_lookupJlinear/linear/workclass/workclass_weights/embedding_lookup_sparse/Unique:1Flinear/linear/workclass/workclass_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:���������*

Tidx0*
T0
�
9linear/linear/workclass/workclass_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
3linear/linear/workclass/workclass_weights/Reshape_1ReshapeSlinear/linear/workclass/workclass_weights/SparseFillEmptyRows/SparseFillEmptyRows:29linear/linear/workclass/workclass_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:���������
�
/linear/linear/workclass/workclass_weights/ShapeShapeAlinear/linear/workclass/workclass_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
=linear/linear/workclass/workclass_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
?linear/linear/workclass/workclass_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
?linear/linear/workclass/workclass_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
7linear/linear/workclass/workclass_weights/strided_sliceStridedSlice/linear/linear/workclass/workclass_weights/Shape=linear/linear/workclass/workclass_weights/strided_slice/stack?linear/linear/workclass/workclass_weights/strided_slice/stack_1?linear/linear/workclass/workclass_weights/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
s
1linear/linear/workclass/workclass_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
/linear/linear/workclass/workclass_weights/stackPack1linear/linear/workclass/workclass_weights/stack/07linear/linear/workclass/workclass_weights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
.linear/linear/workclass/workclass_weights/TileTile3linear/linear/workclass/workclass_weights/Reshape_1/linear/linear/workclass/workclass_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:������������������
�
4linear/linear/workclass/workclass_weights/zeros_like	ZerosLikeAlinear/linear/workclass/workclass_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
)linear/linear/workclass/workclass_weightsSelect.linear/linear/workclass/workclass_weights/Tile4linear/linear/workclass/workclass_weights/zeros_likeAlinear/linear/workclass/workclass_weights/embedding_lookup_sparse*'
_output_shapes
:���������*
T0
�
0linear/linear/workclass/workclass_weights/Cast_1Cast/linear/linear/DenseToSparseTensor_5/dense_shape*

SrcT0	*
_output_shapes
:*

DstT0
�
7linear/linear/workclass/workclass_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
�
6linear/linear/workclass/workclass_weights/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
�
1linear/linear/workclass/workclass_weights/Slice_1Slice0linear/linear/workclass/workclass_weights/Cast_17linear/linear/workclass/workclass_weights/Slice_1/begin6linear/linear/workclass/workclass_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
�
1linear/linear/workclass/workclass_weights/Shape_1Shape)linear/linear/workclass/workclass_weights*
_output_shapes
:*
T0*
out_type0
�
7linear/linear/workclass/workclass_weights/Slice_2/beginConst*
valueB:*
dtype0*
_output_shapes
:
�
6linear/linear/workclass/workclass_weights/Slice_2/sizeConst*
dtype0*
_output_shapes
:*
valueB:
���������
�
1linear/linear/workclass/workclass_weights/Slice_2Slice1linear/linear/workclass/workclass_weights/Shape_17linear/linear/workclass/workclass_weights/Slice_2/begin6linear/linear/workclass/workclass_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
w
5linear/linear/workclass/workclass_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
0linear/linear/workclass/workclass_weights/concatConcatV21linear/linear/workclass/workclass_weights/Slice_11linear/linear/workclass/workclass_weights/Slice_25linear/linear/workclass/workclass_weights/concat/axis*

Tidx0*
T0*
N*
_output_shapes
:
�
3linear/linear/workclass/workclass_weights/Reshape_2Reshape)linear/linear/workclass/workclass_weights0linear/linear/workclass/workclass_weights/concat*
T0*
Tshape0*'
_output_shapes
:���������
o
linear/linear/Reshape_11/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
linear/linear/Reshape_11Reshape3linear/linear/workclass/workclass_weights/Reshape_2linear/linear/Reshape_11/shape*
Tshape0*'
_output_shapes
:���������*
T0
s
2linear/linear/DenseToSparseTensor_6/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
�
,linear/linear/DenseToSparseTensor_6/NotEqualNotEqualstrided_slice_82linear/linear/DenseToSparseTensor_6/ignore_value/x*
T0*'
_output_shapes
:���������
�
+linear/linear/DenseToSparseTensor_6/indicesWhere,linear/linear/DenseToSparseTensor_6/NotEqual*
T0
*'
_output_shapes
:���������
�
*linear/linear/DenseToSparseTensor_6/valuesGatherNdstrided_slice_8+linear/linear/DenseToSparseTensor_6/indices*#
_output_shapes
:���������*
Tindices0	*
Tparams0
~
/linear/linear/DenseToSparseTensor_6/dense_shapeShapestrided_slice_8*
T0*
out_type0	*
_output_shapes
:
q
linear/linear/lookup_6/ConstConst*
dtype0*
_output_shapes
:*!
valueBBfemaleBmale
]
linear/linear/lookup_6/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
d
"linear/linear/lookup_6/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
d
"linear/linear/lookup_6/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
linear/linear/lookup_6/rangeRange"linear/linear/lookup_6/range/startlinear/linear/lookup_6/Size"linear/linear/lookup_6/range/delta*

Tidx0*
_output_shapes
:
x
linear/linear/lookup_6/ToInt64Castlinear/linear/lookup_6/range*

SrcT0*
_output_shapes
:*

DstT0	
�
!linear/linear/lookup_6/hash_tableHashTableV2*
	key_dtype0*
	container *
value_dtype0	*
_output_shapes
: *
shared_name *
use_node_name_sharing( 
r
'linear/linear/lookup_6/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
,linear/linear/lookup_6/hash_table/table_initInitializeTableV2!linear/linear/lookup_6/hash_tablelinear/linear/lookup_6/Constlinear/linear/lookup_6/ToInt64*

Tval0	*

Tkey0
�
linear/linear/hash_table_LookupLookupTableFindV2!linear/linear/lookup_6/hash_table*linear/linear/DenseToSparseTensor_6/values'linear/linear/lookup_6/hash_table/Const*#
_output_shapes
:���������*	
Tin0*

Tout0	
�
.linear/gender/weights/part_0/Initializer/zerosConst*/
_class%
#!loc:@linear/gender/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
�
linear/gender/weights/part_0
VariableV2*
shared_name */
_class%
#!loc:@linear/gender/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
�
#linear/gender/weights/part_0/AssignAssignlinear/gender/weights/part_0.linear/gender/weights/part_0/Initializer/zeros*
T0*/
_class%
#!loc:@linear/gender/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
�
!linear/gender/weights/part_0/readIdentitylinear/gender/weights/part_0*
T0*/
_class%
#!loc:@linear/gender/weights/part_0*
_output_shapes

:
y
/linear/linear/gender/gender_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
x
.linear/linear/gender/gender_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
)linear/linear/gender/gender_weights/SliceSlice/linear/linear/DenseToSparseTensor_6/dense_shape/linear/linear/gender/gender_weights/Slice/begin.linear/linear/gender/gender_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
s
)linear/linear/gender/gender_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
(linear/linear/gender/gender_weights/ProdProd)linear/linear/gender/gender_weights/Slice)linear/linear/gender/gender_weights/Const*
	keep_dims( *

Tidx0*
T0	*
_output_shapes
: 
v
4linear/linear/gender/gender_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
s
1linear/linear/gender/gender_weights/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
,linear/linear/gender/gender_weights/GatherV2GatherV2/linear/linear/DenseToSparseTensor_6/dense_shape4linear/linear/gender/gender_weights/GatherV2/indices1linear/linear/gender/gender_weights/GatherV2/axis*
Taxis0*
Tindices0*
Tparams0	*
_output_shapes
: 
�
*linear/linear/gender/gender_weights/Cast/xPack(linear/linear/gender/gender_weights/Prod,linear/linear/gender/gender_weights/GatherV2*
_output_shapes
:*
T0	*

axis *
N
�
1linear/linear/gender/gender_weights/SparseReshapeSparseReshape+linear/linear/DenseToSparseTensor_6/indices/linear/linear/DenseToSparseTensor_6/dense_shape*linear/linear/gender/gender_weights/Cast/x*-
_output_shapes
:���������:
�
:linear/linear/gender/gender_weights/SparseReshape/IdentityIdentitylinear/linear/hash_table_Lookup*#
_output_shapes
:���������*
T0	
t
2linear/linear/gender/gender_weights/GreaterEqual/yConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
0linear/linear/gender/gender_weights/GreaterEqualGreaterEqual:linear/linear/gender/gender_weights/SparseReshape/Identity2linear/linear/gender/gender_weights/GreaterEqual/y*
T0	*#
_output_shapes
:���������
�
)linear/linear/gender/gender_weights/WhereWhere0linear/linear/gender/gender_weights/GreaterEqual*
T0
*'
_output_shapes
:���������
�
1linear/linear/gender/gender_weights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
+linear/linear/gender/gender_weights/ReshapeReshape)linear/linear/gender/gender_weights/Where1linear/linear/gender/gender_weights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:���������
u
3linear/linear/gender/gender_weights/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
.linear/linear/gender/gender_weights/GatherV2_1GatherV21linear/linear/gender/gender_weights/SparseReshape+linear/linear/gender/gender_weights/Reshape3linear/linear/gender/gender_weights/GatherV2_1/axis*
Tindices0	*
Tparams0	*'
_output_shapes
:���������*
Taxis0
u
3linear/linear/gender/gender_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
.linear/linear/gender/gender_weights/GatherV2_2GatherV2:linear/linear/gender/gender_weights/SparseReshape/Identity+linear/linear/gender/gender_weights/Reshape3linear/linear/gender/gender_weights/GatherV2_2/axis*#
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
,linear/linear/gender/gender_weights/IdentityIdentity3linear/linear/gender/gender_weights/SparseReshape:1*
_output_shapes
:*
T0	

=linear/linear/gender/gender_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
Klinear/linear/gender/gender_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows.linear/linear/gender/gender_weights/GatherV2_1.linear/linear/gender/gender_weights/GatherV2_2,linear/linear/gender/gender_weights/Identity=linear/linear/gender/gender_weights/SparseFillEmptyRows/Const*T
_output_shapesB
@:���������:���������:���������:���������*
T0	
�
Olinear/linear/gender/gender_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
�
Qlinear/linear/gender/gender_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
Qlinear/linear/gender/gender_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
Ilinear/linear/gender/gender_weights/embedding_lookup_sparse/strided_sliceStridedSliceKlinear/linear/gender/gender_weights/SparseFillEmptyRows/SparseFillEmptyRowsOlinear/linear/gender/gender_weights/embedding_lookup_sparse/strided_slice/stackQlinear/linear/gender/gender_weights/embedding_lookup_sparse/strided_slice/stack_1Qlinear/linear/gender/gender_weights/embedding_lookup_sparse/strided_slice/stack_2*#
_output_shapes
:���������*
Index0*
T0	*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask
�
@linear/linear/gender/gender_weights/embedding_lookup_sparse/CastCastIlinear/linear/gender/gender_weights/embedding_lookup_sparse/strided_slice*

SrcT0	*#
_output_shapes
:���������*

DstT0
�
Blinear/linear/gender/gender_weights/embedding_lookup_sparse/UniqueUniqueMlinear/linear/gender/gender_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:���������:���������
�
Qlinear/linear/gender/gender_weights/embedding_lookup_sparse/embedding_lookup/axisConst*/
_class%
#!loc:@linear/gender/weights/part_0*
value	B : *
dtype0*
_output_shapes
: 
�
Llinear/linear/gender/gender_weights/embedding_lookup_sparse/embedding_lookupGatherV2!linear/gender/weights/part_0/readBlinear/linear/gender/gender_weights/embedding_lookup_sparse/UniqueQlinear/linear/gender/gender_weights/embedding_lookup_sparse/embedding_lookup/axis*/
_class%
#!loc:@linear/gender/weights/part_0*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0
�
;linear/linear/gender/gender_weights/embedding_lookup_sparseSparseSegmentSumLlinear/linear/gender/gender_weights/embedding_lookup_sparse/embedding_lookupDlinear/linear/gender/gender_weights/embedding_lookup_sparse/Unique:1@linear/linear/gender/gender_weights/embedding_lookup_sparse/Cast*

Tidx0*
T0*'
_output_shapes
:���������
�
3linear/linear/gender/gender_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
-linear/linear/gender/gender_weights/Reshape_1ReshapeMlinear/linear/gender/gender_weights/SparseFillEmptyRows/SparseFillEmptyRows:23linear/linear/gender/gender_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:���������
�
)linear/linear/gender/gender_weights/ShapeShape;linear/linear/gender/gender_weights/embedding_lookup_sparse*
T0*
out_type0*
_output_shapes
:
�
7linear/linear/gender/gender_weights/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
�
9linear/linear/gender/gender_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
9linear/linear/gender/gender_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
1linear/linear/gender/gender_weights/strided_sliceStridedSlice)linear/linear/gender/gender_weights/Shape7linear/linear/gender/gender_weights/strided_slice/stack9linear/linear/gender/gender_weights/strided_slice/stack_19linear/linear/gender/gender_weights/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
m
+linear/linear/gender/gender_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
)linear/linear/gender/gender_weights/stackPack+linear/linear/gender/gender_weights/stack/01linear/linear/gender/gender_weights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
(linear/linear/gender/gender_weights/TileTile-linear/linear/gender/gender_weights/Reshape_1)linear/linear/gender/gender_weights/stack*0
_output_shapes
:������������������*

Tmultiples0*
T0

�
.linear/linear/gender/gender_weights/zeros_like	ZerosLike;linear/linear/gender/gender_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
#linear/linear/gender/gender_weightsSelect(linear/linear/gender/gender_weights/Tile.linear/linear/gender/gender_weights/zeros_like;linear/linear/gender/gender_weights/embedding_lookup_sparse*'
_output_shapes
:���������*
T0
�
*linear/linear/gender/gender_weights/Cast_1Cast/linear/linear/DenseToSparseTensor_6/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
{
1linear/linear/gender/gender_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
z
0linear/linear/gender/gender_weights/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
+linear/linear/gender/gender_weights/Slice_1Slice*linear/linear/gender/gender_weights/Cast_11linear/linear/gender/gender_weights/Slice_1/begin0linear/linear/gender/gender_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
�
+linear/linear/gender/gender_weights/Shape_1Shape#linear/linear/gender/gender_weights*
out_type0*
_output_shapes
:*
T0
{
1linear/linear/gender/gender_weights/Slice_2/beginConst*
dtype0*
_output_shapes
:*
valueB:
�
0linear/linear/gender/gender_weights/Slice_2/sizeConst*
_output_shapes
:*
valueB:
���������*
dtype0
�
+linear/linear/gender/gender_weights/Slice_2Slice+linear/linear/gender/gender_weights/Shape_11linear/linear/gender/gender_weights/Slice_2/begin0linear/linear/gender/gender_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
q
/linear/linear/gender/gender_weights/concat/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
*linear/linear/gender/gender_weights/concatConcatV2+linear/linear/gender/gender_weights/Slice_1+linear/linear/gender/gender_weights/Slice_2/linear/linear/gender/gender_weights/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
-linear/linear/gender/gender_weights/Reshape_2Reshape#linear/linear/gender/gender_weights*linear/linear/gender/gender_weights/concat*
T0*
Tshape0*'
_output_shapes
:���������
o
linear/linear/Reshape_12/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
linear/linear/Reshape_12Reshape-linear/linear/gender/gender_weights/Reshape_2linear/linear/Reshape_12/shape*
T0*
Tshape0*'
_output_shapes
:���������
s
2linear/linear/DenseToSparseTensor_7/ignore_value/xConst*
valueB B *
dtype0*
_output_shapes
: 
�
,linear/linear/DenseToSparseTensor_7/NotEqualNotEqualstrided_slice_72linear/linear/DenseToSparseTensor_7/ignore_value/x*
T0*'
_output_shapes
:���������
�
+linear/linear/DenseToSparseTensor_7/indicesWhere,linear/linear/DenseToSparseTensor_7/NotEqual*
T0
*'
_output_shapes
:���������
�
*linear/linear/DenseToSparseTensor_7/valuesGatherNdstrided_slice_7+linear/linear/DenseToSparseTensor_7/indices*
Tparams0*#
_output_shapes
:���������*
Tindices0	
~
/linear/linear/DenseToSparseTensor_7/dense_shapeShapestrided_slice_7*
out_type0	*
_output_shapes
:*
T0
�
linear/linear/lookup_7/ConstConst*
_output_shapes
:*P
valueGBEBAmer-Indian-EskimoBAsian-Pac-IslanderBBlackBOtherBWhite*
dtype0
]
linear/linear/lookup_7/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
d
"linear/linear/lookup_7/range/startConst*
dtype0*
_output_shapes
: *
value	B : 
d
"linear/linear/lookup_7/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
�
linear/linear/lookup_7/rangeRange"linear/linear/lookup_7/range/startlinear/linear/lookup_7/Size"linear/linear/lookup_7/range/delta*
_output_shapes
:*

Tidx0
x
linear/linear/lookup_7/ToInt64Castlinear/linear/lookup_7/range*

SrcT0*
_output_shapes
:*

DstT0	
�
!linear/linear/lookup_7/hash_tableHashTableV2*
_output_shapes
: *
shared_name *
use_node_name_sharing( *
	key_dtype0*
	container *
value_dtype0	
r
'linear/linear/lookup_7/hash_table/ConstConst*
valueB	 R
���������*
dtype0	*
_output_shapes
: 
�
,linear/linear/lookup_7/hash_table/table_initInitializeTableV2!linear/linear/lookup_7/hash_tablelinear/linear/lookup_7/Constlinear/linear/lookup_7/ToInt64*

Tkey0*

Tval0	
�
!linear/linear/hash_table_Lookup_1LookupTableFindV2!linear/linear/lookup_7/hash_table*linear/linear/DenseToSparseTensor_7/values'linear/linear/lookup_7/hash_table/Const*#
_output_shapes
:���������*	
Tin0*

Tout0	
�
,linear/race/weights/part_0/Initializer/zerosConst*
_output_shapes

:*-
_class#
!loc:@linear/race/weights/part_0*
valueB*    *
dtype0
�
linear/race/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *-
_class#
!loc:@linear/race/weights/part_0*
	container *
shape
:
�
!linear/race/weights/part_0/AssignAssignlinear/race/weights/part_0,linear/race/weights/part_0/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@linear/race/weights/part_0*
validate_shape(*
_output_shapes

:
�
linear/race/weights/part_0/readIdentitylinear/race/weights/part_0*
T0*-
_class#
!loc:@linear/race/weights/part_0*
_output_shapes

:
u
+linear/linear/race/race_weights/Slice/beginConst*
valueB: *
dtype0*
_output_shapes
:
t
*linear/linear/race/race_weights/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
�
%linear/linear/race/race_weights/SliceSlice/linear/linear/DenseToSparseTensor_7/dense_shape+linear/linear/race/race_weights/Slice/begin*linear/linear/race/race_weights/Slice/size*
_output_shapes
:*
Index0*
T0	
o
%linear/linear/race/race_weights/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
$linear/linear/race/race_weights/ProdProd%linear/linear/race/race_weights/Slice%linear/linear/race/race_weights/Const*
T0	*
_output_shapes
: *
	keep_dims( *

Tidx0
r
0linear/linear/race/race_weights/GatherV2/indicesConst*
value	B :*
dtype0*
_output_shapes
: 
o
-linear/linear/race/race_weights/GatherV2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
�
(linear/linear/race/race_weights/GatherV2GatherV2/linear/linear/DenseToSparseTensor_7/dense_shape0linear/linear/race/race_weights/GatherV2/indices-linear/linear/race/race_weights/GatherV2/axis*
_output_shapes
: *
Taxis0*
Tindices0*
Tparams0	
�
&linear/linear/race/race_weights/Cast/xPack$linear/linear/race/race_weights/Prod(linear/linear/race/race_weights/GatherV2*
_output_shapes
:*
T0	*

axis *
N
�
-linear/linear/race/race_weights/SparseReshapeSparseReshape+linear/linear/DenseToSparseTensor_7/indices/linear/linear/DenseToSparseTensor_7/dense_shape&linear/linear/race/race_weights/Cast/x*-
_output_shapes
:���������:
�
6linear/linear/race/race_weights/SparseReshape/IdentityIdentity!linear/linear/hash_table_Lookup_1*
T0	*#
_output_shapes
:���������
p
.linear/linear/race/race_weights/GreaterEqual/yConst*
dtype0	*
_output_shapes
: *
value	B	 R 
�
,linear/linear/race/race_weights/GreaterEqualGreaterEqual6linear/linear/race/race_weights/SparseReshape/Identity.linear/linear/race/race_weights/GreaterEqual/y*#
_output_shapes
:���������*
T0	
�
%linear/linear/race/race_weights/WhereWhere,linear/linear/race/race_weights/GreaterEqual*
T0
*'
_output_shapes
:���������
�
-linear/linear/race/race_weights/Reshape/shapeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
'linear/linear/race/race_weights/ReshapeReshape%linear/linear/race/race_weights/Where-linear/linear/race/race_weights/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:���������
q
/linear/linear/race/race_weights/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
�
*linear/linear/race/race_weights/GatherV2_1GatherV2-linear/linear/race/race_weights/SparseReshape'linear/linear/race/race_weights/Reshape/linear/linear/race/race_weights/GatherV2_1/axis*
Tparams0	*'
_output_shapes
:���������*
Taxis0*
Tindices0	
q
/linear/linear/race/race_weights/GatherV2_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
*linear/linear/race/race_weights/GatherV2_2GatherV26linear/linear/race/race_weights/SparseReshape/Identity'linear/linear/race/race_weights/Reshape/linear/linear/race/race_weights/GatherV2_2/axis*#
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0	
�
(linear/linear/race/race_weights/IdentityIdentity/linear/linear/race/race_weights/SparseReshape:1*
T0	*
_output_shapes
:
{
9linear/linear/race/race_weights/SparseFillEmptyRows/ConstConst*
value	B	 R *
dtype0	*
_output_shapes
: 
�
Glinear/linear/race/race_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows*linear/linear/race/race_weights/GatherV2_1*linear/linear/race/race_weights/GatherV2_2(linear/linear/race/race_weights/Identity9linear/linear/race/race_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:���������:���������:���������:���������
�
Klinear/linear/race/race_weights/embedding_lookup_sparse/strided_slice/stackConst*
valueB"        *
dtype0*
_output_shapes
:
�
Mlinear/linear/race/race_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
�
Mlinear/linear/race/race_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
�
Elinear/linear/race/race_weights/embedding_lookup_sparse/strided_sliceStridedSliceGlinear/linear/race/race_weights/SparseFillEmptyRows/SparseFillEmptyRowsKlinear/linear/race/race_weights/embedding_lookup_sparse/strided_slice/stackMlinear/linear/race/race_weights/embedding_lookup_sparse/strided_slice/stack_1Mlinear/linear/race/race_weights/embedding_lookup_sparse/strided_slice/stack_2*
end_mask*#
_output_shapes
:���������*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask 
�
<linear/linear/race/race_weights/embedding_lookup_sparse/CastCastElinear/linear/race/race_weights/embedding_lookup_sparse/strided_slice*#
_output_shapes
:���������*

DstT0*

SrcT0	
�
>linear/linear/race/race_weights/embedding_lookup_sparse/UniqueUniqueIlinear/linear/race/race_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*2
_output_shapes 
:���������:���������*
out_idx0*
T0	
�
Mlinear/linear/race/race_weights/embedding_lookup_sparse/embedding_lookup/axisConst*
_output_shapes
: *-
_class#
!loc:@linear/race/weights/part_0*
value	B : *
dtype0
�
Hlinear/linear/race/race_weights/embedding_lookup_sparse/embedding_lookupGatherV2linear/race/weights/part_0/read>linear/linear/race/race_weights/embedding_lookup_sparse/UniqueMlinear/linear/race/race_weights/embedding_lookup_sparse/embedding_lookup/axis*'
_output_shapes
:���������*
Taxis0*
Tindices0	*
Tparams0*-
_class#
!loc:@linear/race/weights/part_0
�
7linear/linear/race/race_weights/embedding_lookup_sparseSparseSegmentSumHlinear/linear/race/race_weights/embedding_lookup_sparse/embedding_lookup@linear/linear/race/race_weights/embedding_lookup_sparse/Unique:1<linear/linear/race/race_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:���������*

Tidx0*
T0
�
/linear/linear/race/race_weights/Reshape_1/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
)linear/linear/race/race_weights/Reshape_1ReshapeIlinear/linear/race/race_weights/SparseFillEmptyRows/SparseFillEmptyRows:2/linear/linear/race/race_weights/Reshape_1/shape*
T0
*
Tshape0*'
_output_shapes
:���������
�
%linear/linear/race/race_weights/ShapeShape7linear/linear/race/race_weights/embedding_lookup_sparse*
_output_shapes
:*
T0*
out_type0
}
3linear/linear/race/race_weights/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:

5linear/linear/race/race_weights/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5linear/linear/race/race_weights/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
-linear/linear/race/race_weights/strided_sliceStridedSlice%linear/linear/race/race_weights/Shape3linear/linear/race/race_weights/strided_slice/stack5linear/linear/race/race_weights/strided_slice/stack_15linear/linear/race/race_weights/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
i
'linear/linear/race/race_weights/stack/0Const*
value	B :*
dtype0*
_output_shapes
: 
�
%linear/linear/race/race_weights/stackPack'linear/linear/race/race_weights/stack/0-linear/linear/race/race_weights/strided_slice*
T0*

axis *
N*
_output_shapes
:
�
$linear/linear/race/race_weights/TileTile)linear/linear/race/race_weights/Reshape_1%linear/linear/race/race_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:������������������
�
*linear/linear/race/race_weights/zeros_like	ZerosLike7linear/linear/race/race_weights/embedding_lookup_sparse*'
_output_shapes
:���������*
T0
�
linear/linear/race/race_weightsSelect$linear/linear/race/race_weights/Tile*linear/linear/race/race_weights/zeros_like7linear/linear/race/race_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:���������
�
&linear/linear/race/race_weights/Cast_1Cast/linear/linear/DenseToSparseTensor_7/dense_shape*
_output_shapes
:*

DstT0*

SrcT0	
w
-linear/linear/race/race_weights/Slice_1/beginConst*
valueB: *
dtype0*
_output_shapes
:
v
,linear/linear/race/race_weights/Slice_1/sizeConst*
_output_shapes
:*
valueB:*
dtype0
�
'linear/linear/race/race_weights/Slice_1Slice&linear/linear/race/race_weights/Cast_1-linear/linear/race/race_weights/Slice_1/begin,linear/linear/race/race_weights/Slice_1/size*
_output_shapes
:*
Index0*
T0
�
'linear/linear/race/race_weights/Shape_1Shapelinear/linear/race/race_weights*
T0*
out_type0*
_output_shapes
:
w
-linear/linear/race/race_weights/Slice_2/beginConst*
_output_shapes
:*
valueB:*
dtype0

,linear/linear/race/race_weights/Slice_2/sizeConst*
valueB:
���������*
dtype0*
_output_shapes
:
�
'linear/linear/race/race_weights/Slice_2Slice'linear/linear/race/race_weights/Shape_1-linear/linear/race/race_weights/Slice_2/begin,linear/linear/race/race_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
m
+linear/linear/race/race_weights/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
&linear/linear/race/race_weights/concatConcatV2'linear/linear/race/race_weights/Slice_1'linear/linear/race/race_weights/Slice_2+linear/linear/race/race_weights/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
�
)linear/linear/race/race_weights/Reshape_2Reshapelinear/linear/race/race_weights&linear/linear/race/race_weights/concat*'
_output_shapes
:���������*
T0*
Tshape0
o
linear/linear/Reshape_13/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
linear/linear/Reshape_13Reshape)linear/linear/race/race_weights/Reshape_2linear/linear/Reshape_13/shape*'
_output_shapes
:���������*
T0*
Tshape0
�
linear/linear/AddNAddNlinear/linear/Reshape_1linear/linear/Reshape_3linear/linear/Reshape_4linear/linear/Reshape_5linear/linear/Reshape_6linear/linear/Reshape_7linear/linear/Reshape_8linear/linear/Reshape_9linear/linear/Reshape_10linear/linear/Reshape_11linear/linear/Reshape_12linear/linear/Reshape_13*
T0*
N*'
_output_shapes
:���������
�
+linear/bias_weight/part_0/Initializer/zerosConst*,
_class"
 loc:@linear/bias_weight/part_0*
valueB*    *
dtype0*
_output_shapes
:
�
linear/bias_weight/part_0
VariableV2*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name *,
_class"
 loc:@linear/bias_weight/part_0
�
 linear/bias_weight/part_0/AssignAssignlinear/bias_weight/part_0+linear/bias_weight/part_0/Initializer/zeros*,
_class"
 loc:@linear/bias_weight/part_0*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
linear/bias_weight/part_0/readIdentitylinear/bias_weight/part_0*
T0*,
_class"
 loc:@linear/bias_weight/part_0*
_output_shapes
:
c
linear/bias_weightIdentitylinear/bias_weight/part_0/read*
_output_shapes
:*
T0
�
linear/linear/BiasAddBiasAddlinear/linear/AddNlinear/bias_weight*
data_formatNHWC*'
_output_shapes
:���������*
T0
^
linear/zero_fraction/zeroConst*
dtype0*
_output_shapes
: *
valueB
 *    
�
linear/zero_fraction/EqualEquallinear/linear/BiasAddlinear/zero_fraction/zero*'
_output_shapes
:���������*
T0
~
linear/zero_fraction/CastCastlinear/zero_fraction/Equal*

SrcT0
*'
_output_shapes
:���������*

DstT0
k
linear/zero_fraction/ConstConst*
valueB"       *
dtype0*
_output_shapes
:
�
linear/zero_fraction/MeanMeanlinear/zero_fraction/Castlinear/zero_fraction/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
�
*linear/linear/fraction_of_zero_values/tagsConst*
_output_shapes
: *6
value-B+ B%linear/linear/fraction_of_zero_values*
dtype0
�
%linear/linear/fraction_of_zero_valuesScalarSummary*linear/linear/fraction_of_zero_values/tagslinear/zero_fraction/Mean*
_output_shapes
: *
T0
u
linear/linear/activation/tagConst*
_output_shapes
: *)
value B Blinear/linear/activation*
dtype0
�
linear/linear/activationHistogramSummarylinear/linear/activation/taglinear/linear/BiasAdd*
T0*
_output_shapes
: 
g
addAdddnn/logits/BiasAddlinear/linear/BiasAdd*
T0*'
_output_shapes
:���������
o
+binary_logistic_head/predictions/zeros_like	ZerosLikeadd*'
_output_shapes
:���������*
T0
n
,binary_logistic_head/predictions/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
�
'binary_logistic_head/predictions/concatConcatV2+binary_logistic_head/predictions/zeros_likeadd,binary_logistic_head/predictions/concat/axis*
T0*
N*'
_output_shapes
:���������*

Tidx0
k
)binary_logistic_head/predictions/logisticSigmoidadd*
T0*'
_output_shapes
:���������
�
.binary_logistic_head/predictions/probabilitiesSoftmax'binary_logistic_head/predictions/concat*
T0*'
_output_shapes
:���������
t
2binary_logistic_head/predictions/classes/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
(binary_logistic_head/predictions/classesArgMax'binary_logistic_head/predictions/concat2binary_logistic_head/predictions/classes/dimension*
output_type0	*#
_output_shapes
:���������*

Tidx0*
T0
�
>binary_logistic_head/_classification_output_alternatives/ShapeShape.binary_logistic_head/predictions/probabilities*
T0*
out_type0*
_output_shapes
:
�
Lbinary_logistic_head/_classification_output_alternatives/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
�
Nbinary_logistic_head/_classification_output_alternatives/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
�
Nbinary_logistic_head/_classification_output_alternatives/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Fbinary_logistic_head/_classification_output_alternatives/strided_sliceStridedSlice>binary_logistic_head/_classification_output_alternatives/ShapeLbinary_logistic_head/_classification_output_alternatives/strided_slice/stackNbinary_logistic_head/_classification_output_alternatives/strided_slice/stack_1Nbinary_logistic_head/_classification_output_alternatives/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
�
@binary_logistic_head/_classification_output_alternatives/Shape_1Shape.binary_logistic_head/predictions/probabilities*
T0*
out_type0*
_output_shapes
:
�
Nbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stackConst*
valueB:*
dtype0*
_output_shapes
:
�
Pbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
�
Pbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
�
Hbinary_logistic_head/_classification_output_alternatives/strided_slice_1StridedSlice@binary_logistic_head/_classification_output_alternatives/Shape_1Nbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stackPbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_1Pbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
�
Dbinary_logistic_head/_classification_output_alternatives/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
�
Dbinary_logistic_head/_classification_output_alternatives/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
>binary_logistic_head/_classification_output_alternatives/rangeRangeDbinary_logistic_head/_classification_output_alternatives/range/startHbinary_logistic_head/_classification_output_alternatives/strided_slice_1Dbinary_logistic_head/_classification_output_alternatives/range/delta*#
_output_shapes
:���������*

Tidx0
�
Gbinary_logistic_head/_classification_output_alternatives/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
Cbinary_logistic_head/_classification_output_alternatives/ExpandDims
ExpandDims>binary_logistic_head/_classification_output_alternatives/rangeGbinary_logistic_head/_classification_output_alternatives/ExpandDims/dim*
T0*'
_output_shapes
:���������*

Tdim0
�
Ibinary_logistic_head/_classification_output_alternatives/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
�
Gbinary_logistic_head/_classification_output_alternatives/Tile/multiplesPackFbinary_logistic_head/_classification_output_alternatives/strided_sliceIbinary_logistic_head/_classification_output_alternatives/Tile/multiples/1*
T0*

axis *
N*
_output_shapes
:
�
=binary_logistic_head/_classification_output_alternatives/TileTileCbinary_logistic_head/_classification_output_alternatives/ExpandDimsGbinary_logistic_head/_classification_output_alternatives/Tile/multiples*

Tmultiples0*
T0*0
_output_shapes
:������������������
�
Gbinary_logistic_head/_classification_output_alternatives/classes_tensorAsString=binary_logistic_head/_classification_output_alternatives/Tile*
width���������*0
_output_shapes
:������������������*
	precision���������*
shortest( *
T0*

fill *

scientific( 

initNoOp

init_1NoOp
�
init_all_tablesNoOph^dnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/hash_table/table_initf^dnn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/hash_table/table_init-^linear/linear/lookup_6/hash_table/table_init-^linear/linear/lookup_7/hash_table/table_init
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_a8ef2d94dd2645eab86638e431287094/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
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
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�	
save/SaveV2/tensor_namesConst"/device:CPU:0*�	
value�	B�	 Bdnn/hiddenlayer_0/biasesBdnn/hiddenlayer_0/weightsBdnn/hiddenlayer_1/biasesBdnn/hiddenlayer_1/weightsBdnn/hiddenlayer_2/biasesBdnn/hiddenlayer_2/weightsBdnn/hiddenlayer_3/biasesBdnn/hiddenlayer_3/weightsB:dnn/input_from_feature_columns/education_embedding/weightsB7dnn/input_from_feature_columns/gender_embedding/weightsB?dnn/input_from_feature_columns/marital_status_embedding/weightsB?dnn/input_from_feature_columns/native_country_embedding/weightsB;dnn/input_from_feature_columns/occupation_embedding/weightsB5dnn/input_from_feature_columns/race_embedding/weightsB=dnn/input_from_feature_columns/relationship_embedding/weightsB:dnn/input_from_feature_columns/workclass_embedding/weightsBdnn/logits/biasesBdnn/logits/weightsBglobal_stepBlinear/age_bucketized/weightsB1linear/age_bucketized_X_occupation_X_race/weightsBlinear/bias_weightBlinear/education/weightsB%linear/education_X_occupation/weightsBlinear/gender/weightsBlinear/marital_status/weightsBlinear/native_country/weightsB*linear/native_country_X_occupation/weightsBlinear/occupation/weightsBlinear/race/weightsBlinear/relationship/weightsBlinear/workclass/weights*
dtype0*
_output_shapes
: 
�
save/SaveV2/shape_and_slicesConst"/device:CPU:0*�
value�B� B	100 0,100B69 100 0,69:0,100B70 0,70B100 70 0,100:0,70B50 0,50B70 50 0,70:0,50B25 0,25B50 25 0,50:0,25B1000 8 0,1000:0,8B2 8 0,2:0,8B100 8 0,100:0,8B1000 8 0,1000:0,8B1000 8 0,1000:0,8B5 8 0,5:0,8B100 8 0,100:0,8B100 8 0,100:0,8B1 0,1B25 1 0,25:0,1B B11 1 0,11:0,1B1000000 1 0,1000000:0,1B1 0,1B1000 1 0,1000:0,1B10000 1 0,10000:0,1B2 1 0,2:0,1B100 1 0,100:0,1B1000 1 0,1000:0,1B10000 1 0,10000:0,1B1000 1 0,1000:0,1B5 1 0,5:0,1B100 1 0,100:0,1B100 1 0,100:0,1*
dtype0*
_output_shapes
: 
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices$dnn/hiddenlayer_0/biases/part_0/read%dnn/hiddenlayer_0/weights/part_0/read$dnn/hiddenlayer_1/biases/part_0/read%dnn/hiddenlayer_1/weights/part_0/read$dnn/hiddenlayer_2/biases/part_0/read%dnn/hiddenlayer_2/weights/part_0/read$dnn/hiddenlayer_3/biases/part_0/read%dnn/hiddenlayer_3/weights/part_0/readFdnn/input_from_feature_columns/education_embedding/weights/part_0/readCdnn/input_from_feature_columns/gender_embedding/weights/part_0/readKdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/readKdnn/input_from_feature_columns/native_country_embedding/weights/part_0/readGdnn/input_from_feature_columns/occupation_embedding/weights/part_0/readAdnn/input_from_feature_columns/race_embedding/weights/part_0/readIdnn/input_from_feature_columns/relationship_embedding/weights/part_0/readFdnn/input_from_feature_columns/workclass_embedding/weights/part_0/readdnn/logits/biases/part_0/readdnn/logits/weights/part_0/readglobal_step)linear/age_bucketized/weights/part_0/read=linear/age_bucketized_X_occupation_X_race/weights/part_0/readlinear/bias_weight/part_0/read$linear/education/weights/part_0/read1linear/education_X_occupation/weights/part_0/read!linear/gender/weights/part_0/read)linear/marital_status/weights/part_0/read)linear/native_country/weights/part_0/read6linear/native_country_X_occupation/weights/part_0/read%linear/occupation/weights/part_0/readlinear/race/weights/part_0/read'linear/relationship/weights/part_0/read$linear/workclass/weights/part_0/read"/device:CPU:0*.
dtypes$
"2 	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
T0*

axis *
N*
_output_shapes
:
�
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
_output_shapes
: *
T0
�	
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *�	
value�	B�	 Bdnn/hiddenlayer_0/biasesBdnn/hiddenlayer_0/weightsBdnn/hiddenlayer_1/biasesBdnn/hiddenlayer_1/weightsBdnn/hiddenlayer_2/biasesBdnn/hiddenlayer_2/weightsBdnn/hiddenlayer_3/biasesBdnn/hiddenlayer_3/weightsB:dnn/input_from_feature_columns/education_embedding/weightsB7dnn/input_from_feature_columns/gender_embedding/weightsB?dnn/input_from_feature_columns/marital_status_embedding/weightsB?dnn/input_from_feature_columns/native_country_embedding/weightsB;dnn/input_from_feature_columns/occupation_embedding/weightsB5dnn/input_from_feature_columns/race_embedding/weightsB=dnn/input_from_feature_columns/relationship_embedding/weightsB:dnn/input_from_feature_columns/workclass_embedding/weightsBdnn/logits/biasesBdnn/logits/weightsBglobal_stepBlinear/age_bucketized/weightsB1linear/age_bucketized_X_occupation_X_race/weightsBlinear/bias_weightBlinear/education/weightsB%linear/education_X_occupation/weightsBlinear/gender/weightsBlinear/marital_status/weightsBlinear/native_country/weightsB*linear/native_country_X_occupation/weightsBlinear/occupation/weightsBlinear/race/weightsBlinear/relationship/weightsBlinear/workclass/weights*
dtype0
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
: *�
value�B� B	100 0,100B69 100 0,69:0,100B70 0,70B100 70 0,100:0,70B50 0,50B70 50 0,70:0,50B25 0,25B50 25 0,50:0,25B1000 8 0,1000:0,8B2 8 0,2:0,8B100 8 0,100:0,8B1000 8 0,1000:0,8B1000 8 0,1000:0,8B5 8 0,5:0,8B100 8 0,100:0,8B100 8 0,100:0,8B1 0,1B25 1 0,25:0,1B B11 1 0,11:0,1B1000000 1 0,1000000:0,1B1 0,1B1000 1 0,1000:0,1B10000 1 0,10000:0,1B2 1 0,2:0,1B100 1 0,100:0,1B1000 1 0,1000:0,1B10000 1 0,10000:0,1B1000 1 0,1000:0,1B5 1 0,5:0,1B100 1 0,100:0,1B100 1 0,100:0,1
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*�
_output_shapes�
�:d:Ed:F:dF:2:F2::2:	�::d:	�:	�::d:d:::::
��=::	�:	�N::d:	�:	�N:	�::d:d*.
dtypes$
"2 	
�
save/AssignAssigndnn/hiddenlayer_0/biases/part_0save/RestoreV2*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
validate_shape(*
_output_shapes
:d
�
save/Assign_1Assign dnn/hiddenlayer_0/weights/part_0save/RestoreV2:1*
_output_shapes

:Ed*
use_locking(*
T0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
validate_shape(
�
save/Assign_2Assigndnn/hiddenlayer_1/biases/part_0save/RestoreV2:2*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
validate_shape(*
_output_shapes
:F*
use_locking(
�
save/Assign_3Assign dnn/hiddenlayer_1/weights/part_0save/RestoreV2:3*
_output_shapes

:dF*
use_locking(*
T0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
validate_shape(
�
save/Assign_4Assigndnn/hiddenlayer_2/biases/part_0save/RestoreV2:4*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
validate_shape(*
_output_shapes
:2
�
save/Assign_5Assign dnn/hiddenlayer_2/weights/part_0save/RestoreV2:5*
use_locking(*
T0*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
validate_shape(*
_output_shapes

:F2
�
save/Assign_6Assigndnn/hiddenlayer_3/biases/part_0save/RestoreV2:6*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/biases/part_0*
validate_shape(*
_output_shapes
:
�
save/Assign_7Assign dnn/hiddenlayer_3/weights/part_0save/RestoreV2:7*
use_locking(*
T0*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
validate_shape(*
_output_shapes

:2
�
save/Assign_8AssignAdnn/input_from_feature_columns/education_embedding/weights/part_0save/RestoreV2:8*
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/education_embedding/weights/part_0*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save/Assign_9Assign>dnn/input_from_feature_columns/gender_embedding/weights/part_0save/RestoreV2:9*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*Q
_classG
ECloc:@dnn/input_from_feature_columns/gender_embedding/weights/part_0
�
save/Assign_10AssignFdnn/input_from_feature_columns/marital_status_embedding/weights/part_0save/RestoreV2:10*
use_locking(*
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/marital_status_embedding/weights/part_0*
validate_shape(*
_output_shapes

:d
�
save/Assign_11AssignFdnn/input_from_feature_columns/native_country_embedding/weights/part_0save/RestoreV2:11*
use_locking(*
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/native_country_embedding/weights/part_0*
validate_shape(*
_output_shapes
:	�
�
save/Assign_12AssignBdnn/input_from_feature_columns/occupation_embedding/weights/part_0save/RestoreV2:12*
use_locking(*
T0*U
_classK
IGloc:@dnn/input_from_feature_columns/occupation_embedding/weights/part_0*
validate_shape(*
_output_shapes
:	�
�
save/Assign_13Assign<dnn/input_from_feature_columns/race_embedding/weights/part_0save/RestoreV2:13*
use_locking(*
T0*O
_classE
CAloc:@dnn/input_from_feature_columns/race_embedding/weights/part_0*
validate_shape(*
_output_shapes

:
�
save/Assign_14AssignDdnn/input_from_feature_columns/relationship_embedding/weights/part_0save/RestoreV2:14*
use_locking(*
T0*W
_classM
KIloc:@dnn/input_from_feature_columns/relationship_embedding/weights/part_0*
validate_shape(*
_output_shapes

:d
�
save/Assign_15AssignAdnn/input_from_feature_columns/workclass_embedding/weights/part_0save/RestoreV2:15*
_output_shapes

:d*
use_locking(*
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/workclass_embedding/weights/part_0*
validate_shape(
�
save/Assign_16Assigndnn/logits/biases/part_0save/RestoreV2:16*
use_locking(*
T0*+
_class!
loc:@dnn/logits/biases/part_0*
validate_shape(*
_output_shapes
:
�
save/Assign_17Assigndnn/logits/weights/part_0save/RestoreV2:17*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*,
_class"
 loc:@dnn/logits/weights/part_0
�
save/Assign_18Assignglobal_stepsave/RestoreV2:18*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save/Assign_19Assign$linear/age_bucketized/weights/part_0save/RestoreV2:19*
_output_shapes

:*
use_locking(*
T0*7
_class-
+)loc:@linear/age_bucketized/weights/part_0*
validate_shape(
�
save/Assign_20Assign8linear/age_bucketized_X_occupation_X_race/weights/part_0save/RestoreV2:20*
use_locking(*
T0*K
_classA
?=loc:@linear/age_bucketized_X_occupation_X_race/weights/part_0*
validate_shape(* 
_output_shapes
:
��=
�
save/Assign_21Assignlinear/bias_weight/part_0save/RestoreV2:21*
_output_shapes
:*
use_locking(*
T0*,
_class"
 loc:@linear/bias_weight/part_0*
validate_shape(
�
save/Assign_22Assignlinear/education/weights/part_0save/RestoreV2:22*
T0*2
_class(
&$loc:@linear/education/weights/part_0*
validate_shape(*
_output_shapes
:	�*
use_locking(
�
save/Assign_23Assign,linear/education_X_occupation/weights/part_0save/RestoreV2:23*
validate_shape(*
_output_shapes
:	�N*
use_locking(*
T0*?
_class5
31loc:@linear/education_X_occupation/weights/part_0
�
save/Assign_24Assignlinear/gender/weights/part_0save/RestoreV2:24*/
_class%
#!loc:@linear/gender/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(*
T0
�
save/Assign_25Assign$linear/marital_status/weights/part_0save/RestoreV2:25*7
_class-
+)loc:@linear/marital_status/weights/part_0*
validate_shape(*
_output_shapes

:d*
use_locking(*
T0
�
save/Assign_26Assign$linear/native_country/weights/part_0save/RestoreV2:26*
use_locking(*
T0*7
_class-
+)loc:@linear/native_country/weights/part_0*
validate_shape(*
_output_shapes
:	�
�
save/Assign_27Assign1linear/native_country_X_occupation/weights/part_0save/RestoreV2:27*
_output_shapes
:	�N*
use_locking(*
T0*D
_class:
86loc:@linear/native_country_X_occupation/weights/part_0*
validate_shape(
�
save/Assign_28Assign linear/occupation/weights/part_0save/RestoreV2:28*
use_locking(*
T0*3
_class)
'%loc:@linear/occupation/weights/part_0*
validate_shape(*
_output_shapes
:	�
�
save/Assign_29Assignlinear/race/weights/part_0save/RestoreV2:29*
use_locking(*
T0*-
_class#
!loc:@linear/race/weights/part_0*
validate_shape(*
_output_shapes

:
�
save/Assign_30Assign"linear/relationship/weights/part_0save/RestoreV2:30*
T0*5
_class+
)'loc:@linear/relationship/weights/part_0*
validate_shape(*
_output_shapes

:d*
use_locking(
�
save/Assign_31Assignlinear/workclass/weights/part_0save/RestoreV2:31*2
_class(
&$loc:@linear/workclass/weights/part_0*
validate_shape(*
_output_shapes

:d*
use_locking(*
T0
�
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
�
save_1/StringJoin/inputs_1Const*
dtype0*
_output_shapes
: *<
value3B1 B+_temp_9ccdd80733e34c0fb22f4edcd070b581/part
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
�
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
�	
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *�	
value�	B�	 Bdnn/hiddenlayer_0/biasesBdnn/hiddenlayer_0/weightsBdnn/hiddenlayer_1/biasesBdnn/hiddenlayer_1/weightsBdnn/hiddenlayer_2/biasesBdnn/hiddenlayer_2/weightsBdnn/hiddenlayer_3/biasesBdnn/hiddenlayer_3/weightsB:dnn/input_from_feature_columns/education_embedding/weightsB7dnn/input_from_feature_columns/gender_embedding/weightsB?dnn/input_from_feature_columns/marital_status_embedding/weightsB?dnn/input_from_feature_columns/native_country_embedding/weightsB;dnn/input_from_feature_columns/occupation_embedding/weightsB5dnn/input_from_feature_columns/race_embedding/weightsB=dnn/input_from_feature_columns/relationship_embedding/weightsB:dnn/input_from_feature_columns/workclass_embedding/weightsBdnn/logits/biasesBdnn/logits/weightsBglobal_stepBlinear/age_bucketized/weightsB1linear/age_bucketized_X_occupation_X_race/weightsBlinear/bias_weightBlinear/education/weightsB%linear/education_X_occupation/weightsBlinear/gender/weightsBlinear/marital_status/weightsBlinear/native_country/weightsB*linear/native_country_X_occupation/weightsBlinear/occupation/weightsBlinear/race/weightsBlinear/relationship/weightsBlinear/workclass/weights*
dtype0
�
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*�
value�B� B	100 0,100B69 100 0,69:0,100B70 0,70B100 70 0,100:0,70B50 0,50B70 50 0,70:0,50B25 0,25B50 25 0,50:0,25B1000 8 0,1000:0,8B2 8 0,2:0,8B100 8 0,100:0,8B1000 8 0,1000:0,8B1000 8 0,1000:0,8B5 8 0,5:0,8B100 8 0,100:0,8B100 8 0,100:0,8B1 0,1B25 1 0,25:0,1B B11 1 0,11:0,1B1000000 1 0,1000000:0,1B1 0,1B1000 1 0,1000:0,1B10000 1 0,10000:0,1B2 1 0,2:0,1B100 1 0,100:0,1B1000 1 0,1000:0,1B10000 1 0,10000:0,1B1000 1 0,1000:0,1B5 1 0,5:0,1B100 1 0,100:0,1B100 1 0,100:0,1*
dtype0*
_output_shapes
: 
�
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices$dnn/hiddenlayer_0/biases/part_0/read%dnn/hiddenlayer_0/weights/part_0/read$dnn/hiddenlayer_1/biases/part_0/read%dnn/hiddenlayer_1/weights/part_0/read$dnn/hiddenlayer_2/biases/part_0/read%dnn/hiddenlayer_2/weights/part_0/read$dnn/hiddenlayer_3/biases/part_0/read%dnn/hiddenlayer_3/weights/part_0/readFdnn/input_from_feature_columns/education_embedding/weights/part_0/readCdnn/input_from_feature_columns/gender_embedding/weights/part_0/readKdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/readKdnn/input_from_feature_columns/native_country_embedding/weights/part_0/readGdnn/input_from_feature_columns/occupation_embedding/weights/part_0/readAdnn/input_from_feature_columns/race_embedding/weights/part_0/readIdnn/input_from_feature_columns/relationship_embedding/weights/part_0/readFdnn/input_from_feature_columns/workclass_embedding/weights/part_0/readdnn/logits/biases/part_0/readdnn/logits/weights/part_0/readglobal_step)linear/age_bucketized/weights/part_0/read=linear/age_bucketized_X_occupation_X_race/weights/part_0/readlinear/bias_weight/part_0/read$linear/education/weights/part_0/read1linear/education_X_occupation/weights/part_0/read!linear/gender/weights/part_0/read)linear/marital_status/weights/part_0/read)linear/native_country/weights/part_0/read6linear/native_country_X_occupation/weights/part_0/read%linear/occupation/weights/part_0/readlinear/race/weights/part_0/read'linear/relationship/weights/part_0/read$linear/workclass/weights/part_0/read"/device:CPU:0*.
dtypes$
"2 	
�
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
�
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*

axis *
N*
_output_shapes
:*
T0
�
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
�
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�	
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *�	
value�	B�	 Bdnn/hiddenlayer_0/biasesBdnn/hiddenlayer_0/weightsBdnn/hiddenlayer_1/biasesBdnn/hiddenlayer_1/weightsBdnn/hiddenlayer_2/biasesBdnn/hiddenlayer_2/weightsBdnn/hiddenlayer_3/biasesBdnn/hiddenlayer_3/weightsB:dnn/input_from_feature_columns/education_embedding/weightsB7dnn/input_from_feature_columns/gender_embedding/weightsB?dnn/input_from_feature_columns/marital_status_embedding/weightsB?dnn/input_from_feature_columns/native_country_embedding/weightsB;dnn/input_from_feature_columns/occupation_embedding/weightsB5dnn/input_from_feature_columns/race_embedding/weightsB=dnn/input_from_feature_columns/relationship_embedding/weightsB:dnn/input_from_feature_columns/workclass_embedding/weightsBdnn/logits/biasesBdnn/logits/weightsBglobal_stepBlinear/age_bucketized/weightsB1linear/age_bucketized_X_occupation_X_race/weightsBlinear/bias_weightBlinear/education/weightsB%linear/education_X_occupation/weightsBlinear/gender/weightsBlinear/marital_status/weightsBlinear/native_country/weightsB*linear/native_country_X_occupation/weightsBlinear/occupation/weightsBlinear/race/weightsBlinear/relationship/weightsBlinear/workclass/weights*
dtype0
�
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
: *�
value�B� B	100 0,100B69 100 0,69:0,100B70 0,70B100 70 0,100:0,70B50 0,50B70 50 0,70:0,50B25 0,25B50 25 0,50:0,25B1000 8 0,1000:0,8B2 8 0,2:0,8B100 8 0,100:0,8B1000 8 0,1000:0,8B1000 8 0,1000:0,8B5 8 0,5:0,8B100 8 0,100:0,8B100 8 0,100:0,8B1 0,1B25 1 0,25:0,1B B11 1 0,11:0,1B1000000 1 0,1000000:0,1B1 0,1B1000 1 0,1000:0,1B10000 1 0,10000:0,1B2 1 0,2:0,1B100 1 0,100:0,1B1000 1 0,1000:0,1B10000 1 0,10000:0,1B1000 1 0,1000:0,1B5 1 0,5:0,1B100 1 0,100:0,1B100 1 0,100:0,1
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*.
dtypes$
"2 	*�
_output_shapes�
�:d:Ed:F:dF:2:F2::2:	�::d:	�:	�::d:d:::::
��=::	�:	�N::d:	�:	�N:	�::d:d
�
save_1/AssignAssigndnn/hiddenlayer_0/biases/part_0save_1/RestoreV2*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
validate_shape(*
_output_shapes
:d
�
save_1/Assign_1Assign dnn/hiddenlayer_0/weights/part_0save_1/RestoreV2:1*
T0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
validate_shape(*
_output_shapes

:Ed*
use_locking(
�
save_1/Assign_2Assigndnn/hiddenlayer_1/biases/part_0save_1/RestoreV2:2*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
validate_shape(*
_output_shapes
:F
�
save_1/Assign_3Assign dnn/hiddenlayer_1/weights/part_0save_1/RestoreV2:3*
use_locking(*
T0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
validate_shape(*
_output_shapes

:dF
�
save_1/Assign_4Assigndnn/hiddenlayer_2/biases/part_0save_1/RestoreV2:4*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
validate_shape(*
_output_shapes
:2
�
save_1/Assign_5Assign dnn/hiddenlayer_2/weights/part_0save_1/RestoreV2:5*
T0*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
validate_shape(*
_output_shapes

:F2*
use_locking(
�
save_1/Assign_6Assigndnn/hiddenlayer_3/biases/part_0save_1/RestoreV2:6*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*2
_class(
&$loc:@dnn/hiddenlayer_3/biases/part_0
�
save_1/Assign_7Assign dnn/hiddenlayer_3/weights/part_0save_1/RestoreV2:7*
use_locking(*
T0*3
_class)
'%loc:@dnn/hiddenlayer_3/weights/part_0*
validate_shape(*
_output_shapes

:2
�
save_1/Assign_8AssignAdnn/input_from_feature_columns/education_embedding/weights/part_0save_1/RestoreV2:8*
use_locking(*
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/education_embedding/weights/part_0*
validate_shape(*
_output_shapes
:	�
�
save_1/Assign_9Assign>dnn/input_from_feature_columns/gender_embedding/weights/part_0save_1/RestoreV2:9*
_output_shapes

:*
use_locking(*
T0*Q
_classG
ECloc:@dnn/input_from_feature_columns/gender_embedding/weights/part_0*
validate_shape(
�
save_1/Assign_10AssignFdnn/input_from_feature_columns/marital_status_embedding/weights/part_0save_1/RestoreV2:10*
use_locking(*
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/marital_status_embedding/weights/part_0*
validate_shape(*
_output_shapes

:d
�
save_1/Assign_11AssignFdnn/input_from_feature_columns/native_country_embedding/weights/part_0save_1/RestoreV2:11*
_output_shapes
:	�*
use_locking(*
T0*Y
_classO
MKloc:@dnn/input_from_feature_columns/native_country_embedding/weights/part_0*
validate_shape(
�
save_1/Assign_12AssignBdnn/input_from_feature_columns/occupation_embedding/weights/part_0save_1/RestoreV2:12*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*U
_classK
IGloc:@dnn/input_from_feature_columns/occupation_embedding/weights/part_0
�
save_1/Assign_13Assign<dnn/input_from_feature_columns/race_embedding/weights/part_0save_1/RestoreV2:13*
T0*O
_classE
CAloc:@dnn/input_from_feature_columns/race_embedding/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
�
save_1/Assign_14AssignDdnn/input_from_feature_columns/relationship_embedding/weights/part_0save_1/RestoreV2:14*
use_locking(*
T0*W
_classM
KIloc:@dnn/input_from_feature_columns/relationship_embedding/weights/part_0*
validate_shape(*
_output_shapes

:d
�
save_1/Assign_15AssignAdnn/input_from_feature_columns/workclass_embedding/weights/part_0save_1/RestoreV2:15*
use_locking(*
T0*T
_classJ
HFloc:@dnn/input_from_feature_columns/workclass_embedding/weights/part_0*
validate_shape(*
_output_shapes

:d
�
save_1/Assign_16Assigndnn/logits/biases/part_0save_1/RestoreV2:16*
use_locking(*
T0*+
_class!
loc:@dnn/logits/biases/part_0*
validate_shape(*
_output_shapes
:
�
save_1/Assign_17Assigndnn/logits/weights/part_0save_1/RestoreV2:17*
use_locking(*
T0*,
_class"
 loc:@dnn/logits/weights/part_0*
validate_shape(*
_output_shapes

:
�
save_1/Assign_18Assignglobal_stepsave_1/RestoreV2:18*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 
�
save_1/Assign_19Assign$linear/age_bucketized/weights/part_0save_1/RestoreV2:19*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*7
_class-
+)loc:@linear/age_bucketized/weights/part_0
�
save_1/Assign_20Assign8linear/age_bucketized_X_occupation_X_race/weights/part_0save_1/RestoreV2:20*
T0*K
_classA
?=loc:@linear/age_bucketized_X_occupation_X_race/weights/part_0*
validate_shape(* 
_output_shapes
:
��=*
use_locking(
�
save_1/Assign_21Assignlinear/bias_weight/part_0save_1/RestoreV2:21*,
_class"
 loc:@linear/bias_weight/part_0*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
�
save_1/Assign_22Assignlinear/education/weights/part_0save_1/RestoreV2:22*
validate_shape(*
_output_shapes
:	�*
use_locking(*
T0*2
_class(
&$loc:@linear/education/weights/part_0
�
save_1/Assign_23Assign,linear/education_X_occupation/weights/part_0save_1/RestoreV2:23*
T0*?
_class5
31loc:@linear/education_X_occupation/weights/part_0*
validate_shape(*
_output_shapes
:	�N*
use_locking(
�
save_1/Assign_24Assignlinear/gender/weights/part_0save_1/RestoreV2:24*
use_locking(*
T0*/
_class%
#!loc:@linear/gender/weights/part_0*
validate_shape(*
_output_shapes

:
�
save_1/Assign_25Assign$linear/marital_status/weights/part_0save_1/RestoreV2:25*
T0*7
_class-
+)loc:@linear/marital_status/weights/part_0*
validate_shape(*
_output_shapes

:d*
use_locking(
�
save_1/Assign_26Assign$linear/native_country/weights/part_0save_1/RestoreV2:26*
use_locking(*
T0*7
_class-
+)loc:@linear/native_country/weights/part_0*
validate_shape(*
_output_shapes
:	�
�
save_1/Assign_27Assign1linear/native_country_X_occupation/weights/part_0save_1/RestoreV2:27*
T0*D
_class:
86loc:@linear/native_country_X_occupation/weights/part_0*
validate_shape(*
_output_shapes
:	�N*
use_locking(
�
save_1/Assign_28Assign linear/occupation/weights/part_0save_1/RestoreV2:28*
use_locking(*
T0*3
_class)
'%loc:@linear/occupation/weights/part_0*
validate_shape(*
_output_shapes
:	�
�
save_1/Assign_29Assignlinear/race/weights/part_0save_1/RestoreV2:29*
use_locking(*
T0*-
_class#
!loc:@linear/race/weights/part_0*
validate_shape(*
_output_shapes

:
�
save_1/Assign_30Assign"linear/relationship/weights/part_0save_1/RestoreV2:30*
_output_shapes

:d*
use_locking(*
T0*5
_class+
)'loc:@linear/relationship/weights/part_0*
validate_shape(
�
save_1/Assign_31Assignlinear/workclass/weights/part_0save_1/RestoreV2:31*
use_locking(*
T0*2
_class(
&$loc:@linear/workclass/weights/part_0*
validate_shape(*
_output_shapes

:d
�
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"�
linear�
�
&linear/age_bucketized/weights/part_0:0
:linear/age_bucketized_X_occupation_X_race/weights/part_0:0
.linear/education_X_occupation/weights/part_0:0
3linear/native_country_X_occupation/weights/part_0:0
!linear/education/weights/part_0:0
&linear/marital_status/weights/part_0:0
&linear/native_country/weights/part_0:0
"linear/occupation/weights/part_0:0
$linear/relationship/weights/part_0:0
!linear/workclass/weights/part_0:0
linear/gender/weights/part_0:0
linear/race/weights/part_0:0
linear/bias_weight/part_0:0"�A
model_variables�A�A
�
Cdnn/input_from_feature_columns/education_embedding/weights/part_0:0Hdnn/input_from_feature_columns/education_embedding/weights/part_0/AssignHdnn/input_from_feature_columns/education_embedding/weights/part_0/read:0"J
:dnn/input_from_feature_columns/education_embedding/weights�  "�2`dnn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal:08
�
Hdnn/input_from_feature_columns/marital_status_embedding/weights/part_0:0Mdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/AssignMdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/read:0"M
?dnn/input_from_feature_columns/marital_status_embedding/weightsd  "d2ednn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal:08
�
Hdnn/input_from_feature_columns/native_country_embedding/weights/part_0:0Mdnn/input_from_feature_columns/native_country_embedding/weights/part_0/AssignMdnn/input_from_feature_columns/native_country_embedding/weights/part_0/read:0"O
?dnn/input_from_feature_columns/native_country_embedding/weights�  "�2ednn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal:08
�
Ddnn/input_from_feature_columns/occupation_embedding/weights/part_0:0Idnn/input_from_feature_columns/occupation_embedding/weights/part_0/AssignIdnn/input_from_feature_columns/occupation_embedding/weights/part_0/read:0"K
;dnn/input_from_feature_columns/occupation_embedding/weights�  "�2adnn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal:08
�
Fdnn/input_from_feature_columns/relationship_embedding/weights/part_0:0Kdnn/input_from_feature_columns/relationship_embedding/weights/part_0/AssignKdnn/input_from_feature_columns/relationship_embedding/weights/part_0/read:0"K
=dnn/input_from_feature_columns/relationship_embedding/weightsd  "d2cdnn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal:08
�
Cdnn/input_from_feature_columns/workclass_embedding/weights/part_0:0Hdnn/input_from_feature_columns/workclass_embedding/weights/part_0/AssignHdnn/input_from_feature_columns/workclass_embedding/weights/part_0/read:0"H
:dnn/input_from_feature_columns/workclass_embedding/weightsd  "d2`dnn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal:08
�
@dnn/input_from_feature_columns/gender_embedding/weights/part_0:0Ednn/input_from_feature_columns/gender_embedding/weights/part_0/AssignEdnn/input_from_feature_columns/gender_embedding/weights/part_0/read:0"E
7dnn/input_from_feature_columns/gender_embedding/weights  "2]dnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal:08
�
>dnn/input_from_feature_columns/race_embedding/weights/part_0:0Cdnn/input_from_feature_columns/race_embedding/weights/part_0/AssignCdnn/input_from_feature_columns/race_embedding/weights/part_0/read:0"C
5dnn/input_from_feature_columns/race_embedding/weights  "2[dnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal:08
�
"dnn/hiddenlayer_0/weights/part_0:0'dnn/hiddenlayer_0/weights/part_0/Assign'dnn/hiddenlayer_0/weights/part_0/read:0"'
dnn/hiddenlayer_0/weightsEd  "Ed2=dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform:08
�
!dnn/hiddenlayer_0/biases/part_0:0&dnn/hiddenlayer_0/biases/part_0/Assign&dnn/hiddenlayer_0/biases/part_0/read:0"#
dnn/hiddenlayer_0/biasesd "d23dnn/hiddenlayer_0/biases/part_0/Initializer/zeros:08
�
"dnn/hiddenlayer_1/weights/part_0:0'dnn/hiddenlayer_1/weights/part_0/Assign'dnn/hiddenlayer_1/weights/part_0/read:0"'
dnn/hiddenlayer_1/weightsdF  "dF2=dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform:08
�
!dnn/hiddenlayer_1/biases/part_0:0&dnn/hiddenlayer_1/biases/part_0/Assign&dnn/hiddenlayer_1/biases/part_0/read:0"#
dnn/hiddenlayer_1/biasesF "F23dnn/hiddenlayer_1/biases/part_0/Initializer/zeros:08
�
"dnn/hiddenlayer_2/weights/part_0:0'dnn/hiddenlayer_2/weights/part_0/Assign'dnn/hiddenlayer_2/weights/part_0/read:0"'
dnn/hiddenlayer_2/weightsF2  "F22=dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform:08
�
!dnn/hiddenlayer_2/biases/part_0:0&dnn/hiddenlayer_2/biases/part_0/Assign&dnn/hiddenlayer_2/biases/part_0/read:0"#
dnn/hiddenlayer_2/biases2 "223dnn/hiddenlayer_2/biases/part_0/Initializer/zeros:08
�
"dnn/hiddenlayer_3/weights/part_0:0'dnn/hiddenlayer_3/weights/part_0/Assign'dnn/hiddenlayer_3/weights/part_0/read:0"'
dnn/hiddenlayer_3/weights2  "22=dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform:08
�
!dnn/hiddenlayer_3/biases/part_0:0&dnn/hiddenlayer_3/biases/part_0/Assign&dnn/hiddenlayer_3/biases/part_0/read:0"#
dnn/hiddenlayer_3/biases "23dnn/hiddenlayer_3/biases/part_0/Initializer/zeros:08
�
dnn/logits/weights/part_0:0 dnn/logits/weights/part_0/Assign dnn/logits/weights/part_0/read:0" 
dnn/logits/weights  "26dnn/logits/weights/part_0/Initializer/random_uniform:08
�
dnn/logits/biases/part_0:0dnn/logits/biases/part_0/Assigndnn/logits/biases/part_0/read:0"
dnn/logits/biases "2,dnn/logits/biases/part_0/Initializer/zeros:08
�
&linear/age_bucketized/weights/part_0:0+linear/age_bucketized/weights/part_0/Assign+linear/age_bucketized/weights/part_0/read:0"+
linear/age_bucketized/weights  "28linear/age_bucketized/weights/part_0/Initializer/zeros:08
�
:linear/age_bucketized_X_occupation_X_race/weights/part_0:0?linear/age_bucketized_X_occupation_X_race/weights/part_0/Assign?linear/age_bucketized_X_occupation_X_race/weights/part_0/read:0"C
1linear/age_bucketized_X_occupation_X_race/weights��=  "��=2Llinear/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zeros:08
�
.linear/education_X_occupation/weights/part_0:03linear/education_X_occupation/weights/part_0/Assign3linear/education_X_occupation/weights/part_0/read:0"5
%linear/education_X_occupation/weights�N  "�N2@linear/education_X_occupation/weights/part_0/Initializer/zeros:08
�
3linear/native_country_X_occupation/weights/part_0:08linear/native_country_X_occupation/weights/part_0/Assign8linear/native_country_X_occupation/weights/part_0/read:0":
*linear/native_country_X_occupation/weights�N  "�N2Elinear/native_country_X_occupation/weights/part_0/Initializer/zeros:08
�
!linear/education/weights/part_0:0&linear/education/weights/part_0/Assign&linear/education/weights/part_0/read:0"(
linear/education/weights�  "�23linear/education/weights/part_0/Initializer/zeros:08
�
&linear/marital_status/weights/part_0:0+linear/marital_status/weights/part_0/Assign+linear/marital_status/weights/part_0/read:0"+
linear/marital_status/weightsd  "d28linear/marital_status/weights/part_0/Initializer/zeros:08
�
&linear/native_country/weights/part_0:0+linear/native_country/weights/part_0/Assign+linear/native_country/weights/part_0/read:0"-
linear/native_country/weights�  "�28linear/native_country/weights/part_0/Initializer/zeros:08
�
"linear/occupation/weights/part_0:0'linear/occupation/weights/part_0/Assign'linear/occupation/weights/part_0/read:0")
linear/occupation/weights�  "�24linear/occupation/weights/part_0/Initializer/zeros:08
�
$linear/relationship/weights/part_0:0)linear/relationship/weights/part_0/Assign)linear/relationship/weights/part_0/read:0")
linear/relationship/weightsd  "d26linear/relationship/weights/part_0/Initializer/zeros:08
�
!linear/workclass/weights/part_0:0&linear/workclass/weights/part_0/Assign&linear/workclass/weights/part_0/read:0"&
linear/workclass/weightsd  "d23linear/workclass/weights/part_0/Initializer/zeros:08
�
linear/gender/weights/part_0:0#linear/gender/weights/part_0/Assign#linear/gender/weights/part_0/read:0"#
linear/gender/weights  "20linear/gender/weights/part_0/Initializer/zeros:08
�
linear/race/weights/part_0:0!linear/race/weights/part_0/Assign!linear/race/weights/part_0/read:0"!
linear/race/weights  "2.linear/race/weights/part_0/Initializer/zeros:08
�
linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight "2-linear/bias_weight/part_0/Initializer/zeros:08"�
	summaries�
�
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
/dnn/dnn/hiddenlayer_3/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_3/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0
'linear/linear/fraction_of_zero_values:0
linear/linear/activation:0"�A
trainable_variables�A�A
�
Cdnn/input_from_feature_columns/education_embedding/weights/part_0:0Hdnn/input_from_feature_columns/education_embedding/weights/part_0/AssignHdnn/input_from_feature_columns/education_embedding/weights/part_0/read:0"J
:dnn/input_from_feature_columns/education_embedding/weights�  "�2`dnn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal:08
�
Hdnn/input_from_feature_columns/marital_status_embedding/weights/part_0:0Mdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/AssignMdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/read:0"M
?dnn/input_from_feature_columns/marital_status_embedding/weightsd  "d2ednn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal:08
�
Hdnn/input_from_feature_columns/native_country_embedding/weights/part_0:0Mdnn/input_from_feature_columns/native_country_embedding/weights/part_0/AssignMdnn/input_from_feature_columns/native_country_embedding/weights/part_0/read:0"O
?dnn/input_from_feature_columns/native_country_embedding/weights�  "�2ednn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal:08
�
Ddnn/input_from_feature_columns/occupation_embedding/weights/part_0:0Idnn/input_from_feature_columns/occupation_embedding/weights/part_0/AssignIdnn/input_from_feature_columns/occupation_embedding/weights/part_0/read:0"K
;dnn/input_from_feature_columns/occupation_embedding/weights�  "�2adnn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal:08
�
Fdnn/input_from_feature_columns/relationship_embedding/weights/part_0:0Kdnn/input_from_feature_columns/relationship_embedding/weights/part_0/AssignKdnn/input_from_feature_columns/relationship_embedding/weights/part_0/read:0"K
=dnn/input_from_feature_columns/relationship_embedding/weightsd  "d2cdnn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal:08
�
Cdnn/input_from_feature_columns/workclass_embedding/weights/part_0:0Hdnn/input_from_feature_columns/workclass_embedding/weights/part_0/AssignHdnn/input_from_feature_columns/workclass_embedding/weights/part_0/read:0"H
:dnn/input_from_feature_columns/workclass_embedding/weightsd  "d2`dnn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal:08
�
@dnn/input_from_feature_columns/gender_embedding/weights/part_0:0Ednn/input_from_feature_columns/gender_embedding/weights/part_0/AssignEdnn/input_from_feature_columns/gender_embedding/weights/part_0/read:0"E
7dnn/input_from_feature_columns/gender_embedding/weights  "2]dnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal:08
�
>dnn/input_from_feature_columns/race_embedding/weights/part_0:0Cdnn/input_from_feature_columns/race_embedding/weights/part_0/AssignCdnn/input_from_feature_columns/race_embedding/weights/part_0/read:0"C
5dnn/input_from_feature_columns/race_embedding/weights  "2[dnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal:08
�
"dnn/hiddenlayer_0/weights/part_0:0'dnn/hiddenlayer_0/weights/part_0/Assign'dnn/hiddenlayer_0/weights/part_0/read:0"'
dnn/hiddenlayer_0/weightsEd  "Ed2=dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform:08
�
!dnn/hiddenlayer_0/biases/part_0:0&dnn/hiddenlayer_0/biases/part_0/Assign&dnn/hiddenlayer_0/biases/part_0/read:0"#
dnn/hiddenlayer_0/biasesd "d23dnn/hiddenlayer_0/biases/part_0/Initializer/zeros:08
�
"dnn/hiddenlayer_1/weights/part_0:0'dnn/hiddenlayer_1/weights/part_0/Assign'dnn/hiddenlayer_1/weights/part_0/read:0"'
dnn/hiddenlayer_1/weightsdF  "dF2=dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform:08
�
!dnn/hiddenlayer_1/biases/part_0:0&dnn/hiddenlayer_1/biases/part_0/Assign&dnn/hiddenlayer_1/biases/part_0/read:0"#
dnn/hiddenlayer_1/biasesF "F23dnn/hiddenlayer_1/biases/part_0/Initializer/zeros:08
�
"dnn/hiddenlayer_2/weights/part_0:0'dnn/hiddenlayer_2/weights/part_0/Assign'dnn/hiddenlayer_2/weights/part_0/read:0"'
dnn/hiddenlayer_2/weightsF2  "F22=dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform:08
�
!dnn/hiddenlayer_2/biases/part_0:0&dnn/hiddenlayer_2/biases/part_0/Assign&dnn/hiddenlayer_2/biases/part_0/read:0"#
dnn/hiddenlayer_2/biases2 "223dnn/hiddenlayer_2/biases/part_0/Initializer/zeros:08
�
"dnn/hiddenlayer_3/weights/part_0:0'dnn/hiddenlayer_3/weights/part_0/Assign'dnn/hiddenlayer_3/weights/part_0/read:0"'
dnn/hiddenlayer_3/weights2  "22=dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform:08
�
!dnn/hiddenlayer_3/biases/part_0:0&dnn/hiddenlayer_3/biases/part_0/Assign&dnn/hiddenlayer_3/biases/part_0/read:0"#
dnn/hiddenlayer_3/biases "23dnn/hiddenlayer_3/biases/part_0/Initializer/zeros:08
�
dnn/logits/weights/part_0:0 dnn/logits/weights/part_0/Assign dnn/logits/weights/part_0/read:0" 
dnn/logits/weights  "26dnn/logits/weights/part_0/Initializer/random_uniform:08
�
dnn/logits/biases/part_0:0dnn/logits/biases/part_0/Assigndnn/logits/biases/part_0/read:0"
dnn/logits/biases "2,dnn/logits/biases/part_0/Initializer/zeros:08
�
&linear/age_bucketized/weights/part_0:0+linear/age_bucketized/weights/part_0/Assign+linear/age_bucketized/weights/part_0/read:0"+
linear/age_bucketized/weights  "28linear/age_bucketized/weights/part_0/Initializer/zeros:08
�
:linear/age_bucketized_X_occupation_X_race/weights/part_0:0?linear/age_bucketized_X_occupation_X_race/weights/part_0/Assign?linear/age_bucketized_X_occupation_X_race/weights/part_0/read:0"C
1linear/age_bucketized_X_occupation_X_race/weights��=  "��=2Llinear/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zeros:08
�
.linear/education_X_occupation/weights/part_0:03linear/education_X_occupation/weights/part_0/Assign3linear/education_X_occupation/weights/part_0/read:0"5
%linear/education_X_occupation/weights�N  "�N2@linear/education_X_occupation/weights/part_0/Initializer/zeros:08
�
3linear/native_country_X_occupation/weights/part_0:08linear/native_country_X_occupation/weights/part_0/Assign8linear/native_country_X_occupation/weights/part_0/read:0":
*linear/native_country_X_occupation/weights�N  "�N2Elinear/native_country_X_occupation/weights/part_0/Initializer/zeros:08
�
!linear/education/weights/part_0:0&linear/education/weights/part_0/Assign&linear/education/weights/part_0/read:0"(
linear/education/weights�  "�23linear/education/weights/part_0/Initializer/zeros:08
�
&linear/marital_status/weights/part_0:0+linear/marital_status/weights/part_0/Assign+linear/marital_status/weights/part_0/read:0"+
linear/marital_status/weightsd  "d28linear/marital_status/weights/part_0/Initializer/zeros:08
�
&linear/native_country/weights/part_0:0+linear/native_country/weights/part_0/Assign+linear/native_country/weights/part_0/read:0"-
linear/native_country/weights�  "�28linear/native_country/weights/part_0/Initializer/zeros:08
�
"linear/occupation/weights/part_0:0'linear/occupation/weights/part_0/Assign'linear/occupation/weights/part_0/read:0")
linear/occupation/weights�  "�24linear/occupation/weights/part_0/Initializer/zeros:08
�
$linear/relationship/weights/part_0:0)linear/relationship/weights/part_0/Assign)linear/relationship/weights/part_0/read:0")
linear/relationship/weightsd  "d26linear/relationship/weights/part_0/Initializer/zeros:08
�
!linear/workclass/weights/part_0:0&linear/workclass/weights/part_0/Assign&linear/workclass/weights/part_0/read:0"&
linear/workclass/weightsd  "d23linear/workclass/weights/part_0/Initializer/zeros:08
�
linear/gender/weights/part_0:0#linear/gender/weights/part_0/Assign#linear/gender/weights/part_0/read:0"#
linear/gender/weights  "20linear/gender/weights/part_0/Initializer/zeros:08
�
linear/race/weights/part_0:0!linear/race/weights/part_0/Assign!linear/race/weights/part_0/read:0"!
linear/race/weights  "2.linear/race/weights/part_0/Initializer/zeros:08
�
linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight "2-linear/bias_weight/part_0/Initializer/zeros:08"�B
	variables�B�B
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
�
Cdnn/input_from_feature_columns/education_embedding/weights/part_0:0Hdnn/input_from_feature_columns/education_embedding/weights/part_0/AssignHdnn/input_from_feature_columns/education_embedding/weights/part_0/read:0"J
:dnn/input_from_feature_columns/education_embedding/weights�  "�2`dnn/input_from_feature_columns/education_embedding/weights/part_0/Initializer/truncated_normal:08
�
Hdnn/input_from_feature_columns/marital_status_embedding/weights/part_0:0Mdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/AssignMdnn/input_from_feature_columns/marital_status_embedding/weights/part_0/read:0"M
?dnn/input_from_feature_columns/marital_status_embedding/weightsd  "d2ednn/input_from_feature_columns/marital_status_embedding/weights/part_0/Initializer/truncated_normal:08
�
Hdnn/input_from_feature_columns/native_country_embedding/weights/part_0:0Mdnn/input_from_feature_columns/native_country_embedding/weights/part_0/AssignMdnn/input_from_feature_columns/native_country_embedding/weights/part_0/read:0"O
?dnn/input_from_feature_columns/native_country_embedding/weights�  "�2ednn/input_from_feature_columns/native_country_embedding/weights/part_0/Initializer/truncated_normal:08
�
Ddnn/input_from_feature_columns/occupation_embedding/weights/part_0:0Idnn/input_from_feature_columns/occupation_embedding/weights/part_0/AssignIdnn/input_from_feature_columns/occupation_embedding/weights/part_0/read:0"K
;dnn/input_from_feature_columns/occupation_embedding/weights�  "�2adnn/input_from_feature_columns/occupation_embedding/weights/part_0/Initializer/truncated_normal:08
�
Fdnn/input_from_feature_columns/relationship_embedding/weights/part_0:0Kdnn/input_from_feature_columns/relationship_embedding/weights/part_0/AssignKdnn/input_from_feature_columns/relationship_embedding/weights/part_0/read:0"K
=dnn/input_from_feature_columns/relationship_embedding/weightsd  "d2cdnn/input_from_feature_columns/relationship_embedding/weights/part_0/Initializer/truncated_normal:08
�
Cdnn/input_from_feature_columns/workclass_embedding/weights/part_0:0Hdnn/input_from_feature_columns/workclass_embedding/weights/part_0/AssignHdnn/input_from_feature_columns/workclass_embedding/weights/part_0/read:0"H
:dnn/input_from_feature_columns/workclass_embedding/weightsd  "d2`dnn/input_from_feature_columns/workclass_embedding/weights/part_0/Initializer/truncated_normal:08
�
@dnn/input_from_feature_columns/gender_embedding/weights/part_0:0Ednn/input_from_feature_columns/gender_embedding/weights/part_0/AssignEdnn/input_from_feature_columns/gender_embedding/weights/part_0/read:0"E
7dnn/input_from_feature_columns/gender_embedding/weights  "2]dnn/input_from_feature_columns/gender_embedding/weights/part_0/Initializer/truncated_normal:08
�
>dnn/input_from_feature_columns/race_embedding/weights/part_0:0Cdnn/input_from_feature_columns/race_embedding/weights/part_0/AssignCdnn/input_from_feature_columns/race_embedding/weights/part_0/read:0"C
5dnn/input_from_feature_columns/race_embedding/weights  "2[dnn/input_from_feature_columns/race_embedding/weights/part_0/Initializer/truncated_normal:08
�
"dnn/hiddenlayer_0/weights/part_0:0'dnn/hiddenlayer_0/weights/part_0/Assign'dnn/hiddenlayer_0/weights/part_0/read:0"'
dnn/hiddenlayer_0/weightsEd  "Ed2=dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform:08
�
!dnn/hiddenlayer_0/biases/part_0:0&dnn/hiddenlayer_0/biases/part_0/Assign&dnn/hiddenlayer_0/biases/part_0/read:0"#
dnn/hiddenlayer_0/biasesd "d23dnn/hiddenlayer_0/biases/part_0/Initializer/zeros:08
�
"dnn/hiddenlayer_1/weights/part_0:0'dnn/hiddenlayer_1/weights/part_0/Assign'dnn/hiddenlayer_1/weights/part_0/read:0"'
dnn/hiddenlayer_1/weightsdF  "dF2=dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform:08
�
!dnn/hiddenlayer_1/biases/part_0:0&dnn/hiddenlayer_1/biases/part_0/Assign&dnn/hiddenlayer_1/biases/part_0/read:0"#
dnn/hiddenlayer_1/biasesF "F23dnn/hiddenlayer_1/biases/part_0/Initializer/zeros:08
�
"dnn/hiddenlayer_2/weights/part_0:0'dnn/hiddenlayer_2/weights/part_0/Assign'dnn/hiddenlayer_2/weights/part_0/read:0"'
dnn/hiddenlayer_2/weightsF2  "F22=dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform:08
�
!dnn/hiddenlayer_2/biases/part_0:0&dnn/hiddenlayer_2/biases/part_0/Assign&dnn/hiddenlayer_2/biases/part_0/read:0"#
dnn/hiddenlayer_2/biases2 "223dnn/hiddenlayer_2/biases/part_0/Initializer/zeros:08
�
"dnn/hiddenlayer_3/weights/part_0:0'dnn/hiddenlayer_3/weights/part_0/Assign'dnn/hiddenlayer_3/weights/part_0/read:0"'
dnn/hiddenlayer_3/weights2  "22=dnn/hiddenlayer_3/weights/part_0/Initializer/random_uniform:08
�
!dnn/hiddenlayer_3/biases/part_0:0&dnn/hiddenlayer_3/biases/part_0/Assign&dnn/hiddenlayer_3/biases/part_0/read:0"#
dnn/hiddenlayer_3/biases "23dnn/hiddenlayer_3/biases/part_0/Initializer/zeros:08
�
dnn/logits/weights/part_0:0 dnn/logits/weights/part_0/Assign dnn/logits/weights/part_0/read:0" 
dnn/logits/weights  "26dnn/logits/weights/part_0/Initializer/random_uniform:08
�
dnn/logits/biases/part_0:0dnn/logits/biases/part_0/Assigndnn/logits/biases/part_0/read:0"
dnn/logits/biases "2,dnn/logits/biases/part_0/Initializer/zeros:08
�
&linear/age_bucketized/weights/part_0:0+linear/age_bucketized/weights/part_0/Assign+linear/age_bucketized/weights/part_0/read:0"+
linear/age_bucketized/weights  "28linear/age_bucketized/weights/part_0/Initializer/zeros:08
�
:linear/age_bucketized_X_occupation_X_race/weights/part_0:0?linear/age_bucketized_X_occupation_X_race/weights/part_0/Assign?linear/age_bucketized_X_occupation_X_race/weights/part_0/read:0"C
1linear/age_bucketized_X_occupation_X_race/weights��=  "��=2Llinear/age_bucketized_X_occupation_X_race/weights/part_0/Initializer/zeros:08
�
.linear/education_X_occupation/weights/part_0:03linear/education_X_occupation/weights/part_0/Assign3linear/education_X_occupation/weights/part_0/read:0"5
%linear/education_X_occupation/weights�N  "�N2@linear/education_X_occupation/weights/part_0/Initializer/zeros:08
�
3linear/native_country_X_occupation/weights/part_0:08linear/native_country_X_occupation/weights/part_0/Assign8linear/native_country_X_occupation/weights/part_0/read:0":
*linear/native_country_X_occupation/weights�N  "�N2Elinear/native_country_X_occupation/weights/part_0/Initializer/zeros:08
�
!linear/education/weights/part_0:0&linear/education/weights/part_0/Assign&linear/education/weights/part_0/read:0"(
linear/education/weights�  "�23linear/education/weights/part_0/Initializer/zeros:08
�
&linear/marital_status/weights/part_0:0+linear/marital_status/weights/part_0/Assign+linear/marital_status/weights/part_0/read:0"+
linear/marital_status/weightsd  "d28linear/marital_status/weights/part_0/Initializer/zeros:08
�
&linear/native_country/weights/part_0:0+linear/native_country/weights/part_0/Assign+linear/native_country/weights/part_0/read:0"-
linear/native_country/weights�  "�28linear/native_country/weights/part_0/Initializer/zeros:08
�
"linear/occupation/weights/part_0:0'linear/occupation/weights/part_0/Assign'linear/occupation/weights/part_0/read:0")
linear/occupation/weights�  "�24linear/occupation/weights/part_0/Initializer/zeros:08
�
$linear/relationship/weights/part_0:0)linear/relationship/weights/part_0/Assign)linear/relationship/weights/part_0/read:0")
linear/relationship/weightsd  "d26linear/relationship/weights/part_0/Initializer/zeros:08
�
!linear/workclass/weights/part_0:0&linear/workclass/weights/part_0/Assign&linear/workclass/weights/part_0/read:0"&
linear/workclass/weightsd  "d23linear/workclass/weights/part_0/Initializer/zeros:08
�
linear/gender/weights/part_0:0#linear/gender/weights/part_0/Assign#linear/gender/weights/part_0/read:0"#
linear/gender/weights  "20linear/gender/weights/part_0/Initializer/zeros:08
�
linear/race/weights/part_0:0!linear/race/weights/part_0/Assign!linear/race/weights/part_0/read:0"!
linear/race/weights  "2.linear/race/weights/part_0/Initializer/zeros:08
�
linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight "2-linear/bias_weight/part_0/Initializer/zeros:08" 
legacy_init_op


group_deps"�
input_feature_keys��
age
	workclass
	education
education_num
marital_status

occupation
relationship
race
gender
capital_gain
capital_loss
hours_per_week
native_country"�
table_initializer�
�
gdnn/input_from_feature_columns/input_from_feature_columns/gender_embedding/lookup/hash_table/table_init
ednn/input_from_feature_columns/input_from_feature_columns/race_embedding/lookup/hash_table/table_init
,linear/linear/lookup_6/hash_table/table_init
,linear/linear/lookup_7/hash_table/table_init"�
dnn�
�
Cdnn/input_from_feature_columns/education_embedding/weights/part_0:0
Hdnn/input_from_feature_columns/marital_status_embedding/weights/part_0:0
Hdnn/input_from_feature_columns/native_country_embedding/weights/part_0:0
Ddnn/input_from_feature_columns/occupation_embedding/weights/part_0:0
Fdnn/input_from_feature_columns/relationship_embedding/weights/part_0:0
Cdnn/input_from_feature_columns/workclass_embedding/weights/part_0:0
@dnn/input_from_feature_columns/gender_embedding/weights/part_0:0
>dnn/input_from_feature_columns/race_embedding/weights/part_0:0
"dnn/hiddenlayer_0/weights/part_0:0
!dnn/hiddenlayer_0/biases/part_0:0
"dnn/hiddenlayer_1/weights/part_0:0
!dnn/hiddenlayer_1/biases/part_0:0
"dnn/hiddenlayer_2/weights/part_0:0
!dnn/hiddenlayer_2/biases/part_0:0
"dnn/hiddenlayer_3/weights/part_0:0
!dnn/hiddenlayer_3/biases/part_0:0
dnn/logits/weights/part_0:0
dnn/logits/biases/part_0:0*�
serving_default�
5
hours_per_week#
Placeholder_11:0���������
,
gender"
Placeholder_8:0���������
2
relationship"
Placeholder_6:0���������
0

occupation"
Placeholder_5:0���������
4
marital_status"
Placeholder_4:0���������
*
race"
Placeholder_7:0���������
5
native_country#
Placeholder_12:0���������
3
education_num"
Placeholder_3:0���������
/
	workclass"
Placeholder_1:0���������
2
capital_gain"
Placeholder_9:0���������
'
age 
Placeholder:0���������
/
	education"
Placeholder_2:0���������
3
capital_loss#
Placeholder_10:0���������X
probabilitiesG
0binary_logistic_head/predictions/probabilities:0���������t
classesi
Ibinary_logistic_head/_classification_output_alternatives/classes_tensor:0������������������tensorflow/serving/predict*�
default_input_alternative:None�
5
native_country#
Placeholder_12:0���������
3
education_num"
Placeholder_3:0���������
/
	workclass"
Placeholder_1:0���������
2
capital_gain"
Placeholder_9:0���������
'
age 
Placeholder:0���������
/
	education"
Placeholder_2:0���������
3
capital_loss#
Placeholder_10:0���������
5
hours_per_week#
Placeholder_11:0���������
,
gender"
Placeholder_8:0���������
2
relationship"
Placeholder_6:0���������
0

occupation"
Placeholder_5:0���������
4
marital_status"
Placeholder_4:0���������
*
race"
Placeholder_7:0���������X
probabilitiesG
0binary_logistic_head/predictions/probabilities:0���������t
classesi
Ibinary_logistic_head/_classification_output_alternatives/classes_tensor:0������������������tensorflow/serving/predict