
E
PlaceholderPlaceholder*
dtype0*
shape:?????????*
8
Placeholder_1Placeholder*
dtype0*
shape:
[
count/Initializer/zerosConst*
value	B : *
dtype0*
_class

loc:@count
k
count
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_class

loc:@count
?
count/AssignAssigncountcount/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class

loc:@count
@

count/readIdentitycount*
T0*
_class

loc:@count
=
one_hot/on_valueConst*
valueB
 *  ??*
dtype0
>
one_hot/off_valueConst*
valueB
 *    *
dtype0
7
one_hot/depthConst*
value	B :*
dtype0
|
one_hotOneHotPlaceholder_1one_hot/depthone_hot/on_valueone_hot/off_value*
axis?????????*
T0*
TI0
R
Layer1/truncated_normal/shapeConst*
valueB"*   *   *
dtype0
I
Layer1/truncated_normal/meanConst*
valueB
 *    *
dtype0
K
Layer1/truncated_normal/stddevConst*
valueB
 *???=*
dtype0
?
'Layer1/truncated_normal/TruncatedNormalTruncatedNormalLayer1/truncated_normal/shape*
T0*
dtype0*
seed2 *

seed 
t
Layer1/truncated_normal/mulMul'Layer1/truncated_normal/TruncatedNormalLayer1/truncated_normal/stddev*
T0
b
Layer1/truncated_normalAddLayer1/truncated_normal/mulLayer1/truncated_normal/mean*
T0
b
Layer1/weight1
VariableV2*
dtype0*
shared_name *
shape
:***
	container 
?
Layer1/weight1/AssignAssignLayer1/weight1Layer1/truncated_normal*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer1/weight1
[
Layer1/weight1/readIdentityLayer1/weight1*
T0*!
_class
loc:@Layer1/weight1
I
Layer1/ones/shape_as_tensorConst*
valueB:**
dtype0
>
Layer1/ones/ConstConst*
valueB
 *  ??*
dtype0
^
Layer1/onesFillLayer1/ones/shape_as_tensorLayer1/ones/Const*
T0*

index_type0
\
Layer1/bias1
VariableV2*
dtype0*
shared_name *
shape:**
	container 
?
Layer1/bias1/AssignAssignLayer1/bias1Layer1/ones*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
U
Layer1/bias1/readIdentityLayer1/bias1*
T0*
_class
loc:@Layer1/bias1
r
Layer1/xw_plus_b/MatMulMatMulPlaceholderLayer1/weight1/read*
T0*
transpose_b( *
transpose_a( 
g
Layer1/xw_plus_bBiasAddLayer1/xw_plus_b/MatMulLayer1/bias1/read*
T0*
data_formatNHWC
.
Layer1/ReluReluLayer1/xw_plus_b*
T0
R
Layer2/truncated_normal/shapeConst*
valueB"*      *
dtype0
I
Layer2/truncated_normal/meanConst*
valueB
 *    *
dtype0
K
Layer2/truncated_normal/stddevConst*
valueB
 *???=*
dtype0
?
'Layer2/truncated_normal/TruncatedNormalTruncatedNormalLayer2/truncated_normal/shape*
T0*
dtype0*
seed2 *

seed 
t
Layer2/truncated_normal/mulMul'Layer2/truncated_normal/TruncatedNormalLayer2/truncated_normal/stddev*
T0
b
Layer2/truncated_normalAddLayer2/truncated_normal/mulLayer2/truncated_normal/mean*
T0
b
Layer2/weight2
VariableV2*
dtype0*
shared_name *
shape
:**
	container 
?
Layer2/weight2/AssignAssignLayer2/weight2Layer2/truncated_normal*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer2/weight2
[
Layer2/weight2/readIdentityLayer2/weight2*
T0*!
_class
loc:@Layer2/weight2
I
Layer2/ones/shape_as_tensorConst*
valueB:*
dtype0
>
Layer2/ones/ConstConst*
valueB
 *  ??*
dtype0
^
Layer2/onesFillLayer2/ones/shape_as_tensorLayer2/ones/Const*
T0*

index_type0
\
Layer2/bias2
VariableV2*
dtype0*
shared_name *
shape:*
	container 
?
Layer2/bias2/AssignAssignLayer2/bias2Layer2/ones*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer2/bias2
U
Layer2/bias2/readIdentityLayer2/bias2*
T0*
_class
loc:@Layer2/bias2
r
Layer2/xw_plus_b/MatMulMatMulLayer1/ReluLayer2/weight2/read*
T0*
transpose_b( *
transpose_a( 
g
Layer2/xw_plus_bBiasAddLayer2/xw_plus_b/MatMulLayer2/bias2/read*
T0*
data_formatNHWC
[
9softmax_cross_entropy_with_logits_sg/labels_stop_gradientStopGradientone_hot*
T0
S
)softmax_cross_entropy_with_logits_sg/RankConst*
value	B :*
dtype0
^
*softmax_cross_entropy_with_logits_sg/ShapeShapeLayer2/xw_plus_b*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_sg/Rank_1Const*
value	B :*
dtype0
`
,softmax_cross_entropy_with_logits_sg/Shape_1ShapeLayer2/xw_plus_b*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_sg/Sub/yConst*
value	B :*
dtype0
?
(softmax_cross_entropy_with_logits_sg/SubSub+softmax_cross_entropy_with_logits_sg/Rank_1*softmax_cross_entropy_with_logits_sg/Sub/y*
T0
?
0softmax_cross_entropy_with_logits_sg/Slice/beginPack(softmax_cross_entropy_with_logits_sg/Sub*

axis *
T0*
N
]
/softmax_cross_entropy_with_logits_sg/Slice/sizeConst*
valueB:*
dtype0
?
*softmax_cross_entropy_with_logits_sg/SliceSlice,softmax_cross_entropy_with_logits_sg/Shape_10softmax_cross_entropy_with_logits_sg/Slice/begin/softmax_cross_entropy_with_logits_sg/Slice/size*
Index0*
T0
k
4softmax_cross_entropy_with_logits_sg/concat/values_0Const*
valueB:
?????????*
dtype0
Z
0softmax_cross_entropy_with_logits_sg/concat/axisConst*
value	B : *
dtype0
?
+softmax_cross_entropy_with_logits_sg/concatConcatV24softmax_cross_entropy_with_logits_sg/concat/values_0*softmax_cross_entropy_with_logits_sg/Slice0softmax_cross_entropy_with_logits_sg/concat/axis*
T0*
N*

Tidx0
?
,softmax_cross_entropy_with_logits_sg/ReshapeReshapeLayer2/xw_plus_b+softmax_cross_entropy_with_logits_sg/concat*
T0*
Tshape0
w
+softmax_cross_entropy_with_logits_sg/Rank_2Rank9softmax_cross_entropy_with_logits_sg/labels_stop_gradient*
T0
?
,softmax_cross_entropy_with_logits_sg/Shape_2Shape9softmax_cross_entropy_with_logits_sg/labels_stop_gradient*
T0*
out_type0
V
,softmax_cross_entropy_with_logits_sg/Sub_1/yConst*
value	B :*
dtype0
?
*softmax_cross_entropy_with_logits_sg/Sub_1Sub+softmax_cross_entropy_with_logits_sg/Rank_2,softmax_cross_entropy_with_logits_sg/Sub_1/y*
T0
?
2softmax_cross_entropy_with_logits_sg/Slice_1/beginPack*softmax_cross_entropy_with_logits_sg/Sub_1*

axis *
T0*
N
_
1softmax_cross_entropy_with_logits_sg/Slice_1/sizeConst*
valueB:*
dtype0
?
,softmax_cross_entropy_with_logits_sg/Slice_1Slice,softmax_cross_entropy_with_logits_sg/Shape_22softmax_cross_entropy_with_logits_sg/Slice_1/begin1softmax_cross_entropy_with_logits_sg/Slice_1/size*
Index0*
T0
m
6softmax_cross_entropy_with_logits_sg/concat_1/values_0Const*
valueB:
?????????*
dtype0
\
2softmax_cross_entropy_with_logits_sg/concat_1/axisConst*
value	B : *
dtype0
?
-softmax_cross_entropy_with_logits_sg/concat_1ConcatV26softmax_cross_entropy_with_logits_sg/concat_1/values_0,softmax_cross_entropy_with_logits_sg/Slice_12softmax_cross_entropy_with_logits_sg/concat_1/axis*
T0*
N*

Tidx0
?
.softmax_cross_entropy_with_logits_sg/Reshape_1Reshape9softmax_cross_entropy_with_logits_sg/labels_stop_gradient-softmax_cross_entropy_with_logits_sg/concat_1*
T0*
Tshape0
?
$softmax_cross_entropy_with_logits_sgSoftmaxCrossEntropyWithLogits,softmax_cross_entropy_with_logits_sg/Reshape.softmax_cross_entropy_with_logits_sg/Reshape_1*
T0
V
,softmax_cross_entropy_with_logits_sg/Sub_2/yConst*
value	B :*
dtype0
?
*softmax_cross_entropy_with_logits_sg/Sub_2Sub)softmax_cross_entropy_with_logits_sg/Rank,softmax_cross_entropy_with_logits_sg/Sub_2/y*
T0
`
2softmax_cross_entropy_with_logits_sg/Slice_2/beginConst*
valueB: *
dtype0
?
1softmax_cross_entropy_with_logits_sg/Slice_2/sizePack*softmax_cross_entropy_with_logits_sg/Sub_2*

axis *
T0*
N
?
,softmax_cross_entropy_with_logits_sg/Slice_2Slice*softmax_cross_entropy_with_logits_sg/Shape2softmax_cross_entropy_with_logits_sg/Slice_2/begin1softmax_cross_entropy_with_logits_sg/Slice_2/size*
Index0*
T0
?
.softmax_cross_entropy_with_logits_sg/Reshape_2Reshape$softmax_cross_entropy_with_logits_sg,softmax_cross_entropy_with_logits_sg/Slice_2*
T0*
Tshape0
3
ConstConst*
valueB: *
dtype0
i
MeanMean.softmax_cross_entropy_with_logits_sg/Reshape_2Const*
	keep_dims( *
T0*

Tidx0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
O
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0
p
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
k
gradients/Mean_grad/ShapeShape.softmax_cross_entropy_with_logits_sg/Reshape_2*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*

Tmultiples0
m
gradients/Mean_grad/Shape_1Shape.softmax_cross_entropy_with_logits_sg/Reshape_2*
T0*
out_type0
D
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0
?
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0
G
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0
j
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0
h
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0
f
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*
Truncate( *

SrcT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
?
Cgradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ShapeShape$softmax_cross_entropy_with_logits_sg*
T0*
out_type0
?
Egradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeReshapegradients/Mean_grad/truedivCgradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/Shape*
T0*
Tshape0
R
gradients/zeros_like	ZerosLike&softmax_cross_entropy_with_logits_sg:1*
T0
u
Bgradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dimConst*
valueB :
?????????*
dtype0
?
>gradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims
ExpandDimsEgradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeBgradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims/dim*
T0*

Tdim0
?
7gradients/softmax_cross_entropy_with_logits_sg_grad/mulMul>gradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims&softmax_cross_entropy_with_logits_sg:1*
T0
?
>gradients/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax
LogSoftmax,softmax_cross_entropy_with_logits_sg/Reshape*
T0
?
7gradients/softmax_cross_entropy_with_logits_sg_grad/NegNeg>gradients/softmax_cross_entropy_with_logits_sg_grad/LogSoftmax*
T0
w
Dgradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dimConst*
valueB :
?????????*
dtype0
?
@gradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1
ExpandDimsEgradients/softmax_cross_entropy_with_logits_sg/Reshape_2_grad/ReshapeDgradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_1/dim*
T0*

Tdim0
?
9gradients/softmax_cross_entropy_with_logits_sg_grad/mul_1Mul@gradients/softmax_cross_entropy_with_logits_sg_grad/ExpandDims_17gradients/softmax_cross_entropy_with_logits_sg_grad/Neg*
T0
?
Dgradients/softmax_cross_entropy_with_logits_sg_grad/tuple/group_depsNoOp8^gradients/softmax_cross_entropy_with_logits_sg_grad/mul:^gradients/softmax_cross_entropy_with_logits_sg_grad/mul_1
?
Lgradients/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyIdentity7gradients/softmax_cross_entropy_with_logits_sg_grad/mulE^gradients/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/softmax_cross_entropy_with_logits_sg_grad/mul
?
Ngradients/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependency_1Identity9gradients/softmax_cross_entropy_with_logits_sg_grad/mul_1E^gradients/softmax_cross_entropy_with_logits_sg_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/softmax_cross_entropy_with_logits_sg_grad/mul_1
u
Agradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/ShapeShapeLayer2/xw_plus_b*
T0*
out_type0
?
Cgradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/ReshapeReshapeLgradients/softmax_cross_entropy_with_logits_sg_grad/tuple/control_dependencyAgradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/Shape*
T0*
Tshape0
?
+gradients/Layer2/xw_plus_b_grad/BiasAddGradBiasAddGradCgradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape*
T0*
data_formatNHWC
?
0gradients/Layer2/xw_plus_b_grad/tuple/group_depsNoOp,^gradients/Layer2/xw_plus_b_grad/BiasAddGradD^gradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape
?
8gradients/Layer2/xw_plus_b_grad/tuple/control_dependencyIdentityCgradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape1^gradients/Layer2/xw_plus_b_grad/tuple/group_deps*
T0*V
_classL
JHloc:@gradients/softmax_cross_entropy_with_logits_sg/Reshape_grad/Reshape
?
:gradients/Layer2/xw_plus_b_grad/tuple/control_dependency_1Identity+gradients/Layer2/xw_plus_b_grad/BiasAddGrad1^gradients/Layer2/xw_plus_b_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Layer2/xw_plus_b_grad/BiasAddGrad
?
-gradients/Layer2/xw_plus_b/MatMul_grad/MatMulMatMul8gradients/Layer2/xw_plus_b_grad/tuple/control_dependencyLayer2/weight2/read*
T0*
transpose_b(*
transpose_a( 
?
/gradients/Layer2/xw_plus_b/MatMul_grad/MatMul_1MatMulLayer1/Relu8gradients/Layer2/xw_plus_b_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(
?
7gradients/Layer2/xw_plus_b/MatMul_grad/tuple/group_depsNoOp.^gradients/Layer2/xw_plus_b/MatMul_grad/MatMul0^gradients/Layer2/xw_plus_b/MatMul_grad/MatMul_1
?
?gradients/Layer2/xw_plus_b/MatMul_grad/tuple/control_dependencyIdentity-gradients/Layer2/xw_plus_b/MatMul_grad/MatMul8^gradients/Layer2/xw_plus_b/MatMul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/Layer2/xw_plus_b/MatMul_grad/MatMul
?
Agradients/Layer2/xw_plus_b/MatMul_grad/tuple/control_dependency_1Identity/gradients/Layer2/xw_plus_b/MatMul_grad/MatMul_18^gradients/Layer2/xw_plus_b/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/Layer2/xw_plus_b/MatMul_grad/MatMul_1
?
#gradients/Layer1/Relu_grad/ReluGradReluGrad?gradients/Layer2/xw_plus_b/MatMul_grad/tuple/control_dependencyLayer1/Relu*
T0

+gradients/Layer1/xw_plus_b_grad/BiasAddGradBiasAddGrad#gradients/Layer1/Relu_grad/ReluGrad*
T0*
data_formatNHWC
?
0gradients/Layer1/xw_plus_b_grad/tuple/group_depsNoOp$^gradients/Layer1/Relu_grad/ReluGrad,^gradients/Layer1/xw_plus_b_grad/BiasAddGrad
?
8gradients/Layer1/xw_plus_b_grad/tuple/control_dependencyIdentity#gradients/Layer1/Relu_grad/ReluGrad1^gradients/Layer1/xw_plus_b_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/Layer1/Relu_grad/ReluGrad
?
:gradients/Layer1/xw_plus_b_grad/tuple/control_dependency_1Identity+gradients/Layer1/xw_plus_b_grad/BiasAddGrad1^gradients/Layer1/xw_plus_b_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Layer1/xw_plus_b_grad/BiasAddGrad
?
-gradients/Layer1/xw_plus_b/MatMul_grad/MatMulMatMul8gradients/Layer1/xw_plus_b_grad/tuple/control_dependencyLayer1/weight1/read*
T0*
transpose_b(*
transpose_a( 
?
/gradients/Layer1/xw_plus_b/MatMul_grad/MatMul_1MatMulPlaceholder8gradients/Layer1/xw_plus_b_grad/tuple/control_dependency*
T0*
transpose_b( *
transpose_a(
?
7gradients/Layer1/xw_plus_b/MatMul_grad/tuple/group_depsNoOp.^gradients/Layer1/xw_plus_b/MatMul_grad/MatMul0^gradients/Layer1/xw_plus_b/MatMul_grad/MatMul_1
?
?gradients/Layer1/xw_plus_b/MatMul_grad/tuple/control_dependencyIdentity-gradients/Layer1/xw_plus_b/MatMul_grad/MatMul8^gradients/Layer1/xw_plus_b/MatMul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/Layer1/xw_plus_b/MatMul_grad/MatMul
?
Agradients/Layer1/xw_plus_b/MatMul_grad/tuple/control_dependency_1Identity/gradients/Layer1/xw_plus_b/MatMul_grad/MatMul_18^gradients/Layer1/xw_plus_b/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/Layer1/xw_plus_b/MatMul_grad/MatMul_1
g
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@Layer1/bias1
x
beta1_power
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_class
loc:@Layer1/bias1
?
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
S
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@Layer1/bias1
g
beta2_power/initial_valueConst*
valueB
 *w??*
dtype0*
_class
loc:@Layer1/bias1
x
beta2_power
VariableV2*
dtype0*
shared_name *
shape: *
	container *
_class
loc:@Layer1/bias1
?
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
S
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@Layer1/bias1
?
5Layer1/weight1/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"*   *   *
dtype0*!
_class
loc:@Layer1/weight1
{
+Layer1/weight1/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@Layer1/weight1
?
%Layer1/weight1/Adam/Initializer/zerosFill5Layer1/weight1/Adam/Initializer/zeros/shape_as_tensor+Layer1/weight1/Adam/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@Layer1/weight1
?
Layer1/weight1/Adam
VariableV2*
dtype0*
shared_name *
shape
:***
	container *!
_class
loc:@Layer1/weight1
?
Layer1/weight1/Adam/AssignAssignLayer1/weight1/Adam%Layer1/weight1/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer1/weight1
e
Layer1/weight1/Adam/readIdentityLayer1/weight1/Adam*
T0*!
_class
loc:@Layer1/weight1
?
7Layer1/weight1/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"*   *   *
dtype0*!
_class
loc:@Layer1/weight1
}
-Layer1/weight1/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
dtype0*!
_class
loc:@Layer1/weight1
?
'Layer1/weight1/Adam_1/Initializer/zerosFill7Layer1/weight1/Adam_1/Initializer/zeros/shape_as_tensor-Layer1/weight1/Adam_1/Initializer/zeros/Const*
T0*

index_type0*!
_class
loc:@Layer1/weight1
?
Layer1/weight1/Adam_1
VariableV2*
dtype0*
shared_name *
shape
:***
	container *!
_class
loc:@Layer1/weight1
?
Layer1/weight1/Adam_1/AssignAssignLayer1/weight1/Adam_1'Layer1/weight1/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer1/weight1
i
Layer1/weight1/Adam_1/readIdentityLayer1/weight1/Adam_1*
T0*!
_class
loc:@Layer1/weight1
u
#Layer1/bias1/Adam/Initializer/zerosConst*
valueB**    *
dtype0*
_class
loc:@Layer1/bias1
?
Layer1/bias1/Adam
VariableV2*
dtype0*
shared_name *
shape:**
	container *
_class
loc:@Layer1/bias1
?
Layer1/bias1/Adam/AssignAssignLayer1/bias1/Adam#Layer1/bias1/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
_
Layer1/bias1/Adam/readIdentityLayer1/bias1/Adam*
T0*
_class
loc:@Layer1/bias1
w
%Layer1/bias1/Adam_1/Initializer/zerosConst*
valueB**    *
dtype0*
_class
loc:@Layer1/bias1
?
Layer1/bias1/Adam_1
VariableV2*
dtype0*
shared_name *
shape:**
	container *
_class
loc:@Layer1/bias1
?
Layer1/bias1/Adam_1/AssignAssignLayer1/bias1/Adam_1%Layer1/bias1/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
c
Layer1/bias1/Adam_1/readIdentityLayer1/bias1/Adam_1*
T0*
_class
loc:@Layer1/bias1
}
%Layer2/weight2/Adam/Initializer/zerosConst*
valueB**    *
dtype0*!
_class
loc:@Layer2/weight2
?
Layer2/weight2/Adam
VariableV2*
dtype0*
shared_name *
shape
:**
	container *!
_class
loc:@Layer2/weight2
?
Layer2/weight2/Adam/AssignAssignLayer2/weight2/Adam%Layer2/weight2/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer2/weight2
e
Layer2/weight2/Adam/readIdentityLayer2/weight2/Adam*
T0*!
_class
loc:@Layer2/weight2

'Layer2/weight2/Adam_1/Initializer/zerosConst*
valueB**    *
dtype0*!
_class
loc:@Layer2/weight2
?
Layer2/weight2/Adam_1
VariableV2*
dtype0*
shared_name *
shape
:**
	container *!
_class
loc:@Layer2/weight2
?
Layer2/weight2/Adam_1/AssignAssignLayer2/weight2/Adam_1'Layer2/weight2/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer2/weight2
i
Layer2/weight2/Adam_1/readIdentityLayer2/weight2/Adam_1*
T0*!
_class
loc:@Layer2/weight2
u
#Layer2/bias2/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@Layer2/bias2
?
Layer2/bias2/Adam
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@Layer2/bias2
?
Layer2/bias2/Adam/AssignAssignLayer2/bias2/Adam#Layer2/bias2/Adam/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer2/bias2
_
Layer2/bias2/Adam/readIdentityLayer2/bias2/Adam*
T0*
_class
loc:@Layer2/bias2
w
%Layer2/bias2/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@Layer2/bias2
?
Layer2/bias2/Adam_1
VariableV2*
dtype0*
shared_name *
shape:*
	container *
_class
loc:@Layer2/bias2
?
Layer2/bias2/Adam_1/AssignAssignLayer2/bias2/Adam_1%Layer2/bias2/Adam_1/Initializer/zeros*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer2/bias2
c
Layer2/bias2/Adam_1/readIdentityLayer2/bias2/Adam_1*
T0*
_class
loc:@Layer2/bias2
?
Adam/learning_rateConst*
valueB
 *??8*
dtype0
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w??*
dtype0
9
Adam/epsilonConst*
valueB
 *w?+2*
dtype0
?
$Adam/update_Layer1/weight1/ApplyAdam	ApplyAdamLayer1/weight1Layer1/weight1/AdamLayer1/weight1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonAgradients/Layer1/xw_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@Layer1/weight1
?
"Adam/update_Layer1/bias1/ApplyAdam	ApplyAdamLayer1/bias1Layer1/bias1/AdamLayer1/bias1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/Layer1/xw_plus_b_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@Layer1/bias1
?
$Adam/update_Layer2/weight2/ApplyAdam	ApplyAdamLayer2/weight2Layer2/weight2/AdamLayer2/weight2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilonAgradients/Layer2/xw_plus_b/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@Layer2/weight2
?
"Adam/update_Layer2/bias2/ApplyAdam	ApplyAdamLayer2/bias2Layer2/bias2/AdamLayer2/bias2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon:gradients/Layer2/xw_plus_b_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@Layer2/bias2
?
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_Layer1/bias1/ApplyAdam%^Adam/update_Layer1/weight1/ApplyAdam#^Adam/update_Layer2/bias2/ApplyAdam%^Adam/update_Layer2/weight2/ApplyAdam*
T0*
_class
loc:@Layer1/bias1

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
use_locking( *
validate_shape(*
_class
loc:@Layer1/bias1
?

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_Layer1/bias1/ApplyAdam%^Adam/update_Layer1/weight1/ApplyAdam#^Adam/update_Layer2/bias2/ApplyAdam%^Adam/update_Layer2/weight2/ApplyAdam*
T0*
_class
loc:@Layer1/bias1
?
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
use_locking( *
validate_shape(*
_class
loc:@Layer1/bias1
?
Adam/updateNoOp^Adam/Assign^Adam/Assign_1#^Adam/update_Layer1/bias1/ApplyAdam%^Adam/update_Layer1/weight1/ApplyAdam#^Adam/update_Layer2/bias2/ApplyAdam%^Adam/update_Layer2/weight2/ApplyAdam
\

Adam/valueConst^Adam/update*
value	B :*
dtype0*
_class

loc:@count
Z
Adam	AssignAddcount
Adam/value*
T0*
use_locking( *
_class

loc:@count
:
ArgMax/dimensionConst*
value	B :*
dtype0
S
ArgMaxArgMaxone_hotArgMax/dimension*
output_type0	*
T0*

Tidx0
<
ArgMax_1/dimensionConst*
value	B :*
dtype0
`
ArgMax_1ArgMaxLayer2/xw_plus_bArgMax_1/dimension*
output_type0	*
T0*

Tidx0
)
EqualEqualArgMaxArgMax_1*
T0	
;
CastCastEqual*

DstT0*
Truncate( *

SrcT0


RankRankCast*
T0
5
range/startConst*
value	B : *
dtype0
5
range/deltaConst*
value	B :*
dtype0
:
rangeRangerange/startRankrange/delta*

Tidx0
A
Mean_1MeanCastrange*
	keep_dims( *
T0*

Tidx0
8

save/ConstConst*
valueB Bmodel*
dtype0
?
save/SaveV2/tensor_namesConst*?
value?B?BLayer1/bias1BLayer1/bias1/AdamBLayer1/bias1/Adam_1BLayer1/weight1BLayer1/weight1/AdamBLayer1/weight1/Adam_1BLayer2/bias2BLayer2/bias2/AdamBLayer2/bias2/Adam_1BLayer2/weight2BLayer2/weight2/AdamBLayer2/weight2/Adam_1Bbeta1_powerBbeta2_powerBcount*
dtype0
e
save/SaveV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
dtype0
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesLayer1/bias1Layer1/bias1/AdamLayer1/bias1/Adam_1Layer1/weight1Layer1/weight1/AdamLayer1/weight1/Adam_1Layer2/bias2Layer2/bias2/AdamLayer2/bias2/Adam_1Layer2/weight2Layer2/weight2/AdamLayer2/weight2/Adam_1beta1_powerbeta2_powercount*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?BLayer1/bias1BLayer1/bias1/AdamBLayer1/bias1/Adam_1BLayer1/weight1BLayer1/weight1/AdamBLayer1/weight1/Adam_1BLayer2/bias2BLayer2/bias2/AdamBLayer2/bias2/Adam_1BLayer2/weight2BLayer2/weight2/AdamBLayer2/weight2/Adam_1Bbeta1_powerBbeta2_powerBcount*
dtype0
w
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*1
value(B&B B B B B B B B B B B B B B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
?
save/AssignAssignLayer1/bias1save/RestoreV2*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
?
save/Assign_1AssignLayer1/bias1/Adamsave/RestoreV2:1*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
?
save/Assign_2AssignLayer1/bias1/Adam_1save/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
?
save/Assign_3AssignLayer1/weight1save/RestoreV2:3*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer1/weight1
?
save/Assign_4AssignLayer1/weight1/Adamsave/RestoreV2:4*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer1/weight1
?
save/Assign_5AssignLayer1/weight1/Adam_1save/RestoreV2:5*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer1/weight1
?
save/Assign_6AssignLayer2/bias2save/RestoreV2:6*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer2/bias2
?
save/Assign_7AssignLayer2/bias2/Adamsave/RestoreV2:7*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer2/bias2
?
save/Assign_8AssignLayer2/bias2/Adam_1save/RestoreV2:8*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer2/bias2
?
save/Assign_9AssignLayer2/weight2save/RestoreV2:9*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer2/weight2
?
save/Assign_10AssignLayer2/weight2/Adamsave/RestoreV2:10*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer2/weight2
?
save/Assign_11AssignLayer2/weight2/Adam_1save/RestoreV2:11*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer2/weight2
?
save/Assign_12Assignbeta1_powersave/RestoreV2:12*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
?
save/Assign_13Assignbeta2_powersave/RestoreV2:13*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
~
save/Assign_14Assigncountsave/RestoreV2:14*
T0*
use_locking(*
validate_shape(*
_class

loc:@count
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
?
initNoOp^Layer1/bias1/Adam/Assign^Layer1/bias1/Adam_1/Assign^Layer1/bias1/Assign^Layer1/weight1/Adam/Assign^Layer1/weight1/Adam_1/Assign^Layer1/weight1/Assign^Layer2/bias2/Adam/Assign^Layer2/bias2/Adam_1/Assign^Layer2/bias2/Assign^Layer2/weight2/Adam/Assign^Layer2/weight2/Adam_1/Assign^Layer2/weight2/Assign^beta1_power/Assign^beta2_power/Assign^count/Assign
?
init_1NoOp^Layer1/bias1/Adam/Assign^Layer1/bias1/Adam_1/Assign^Layer1/bias1/Assign^Layer1/weight1/Adam/Assign^Layer1/weight1/Adam_1/Assign^Layer1/weight1/Assign^Layer2/bias2/Adam/Assign^Layer2/bias2/Adam_1/Assign^Layer2/bias2/Assign^Layer2/weight2/Adam/Assign^Layer2/weight2/Adam_1/Assign^Layer2/weight2/Assign^beta1_power/Assign^beta2_power/Assign^count/Assign
:
save_1/ConstConst*
valueB Bmodel*
dtype0
?
save_1/SaveV2/tensor_namesConst*?
value?B?BLayer1/bias1BLayer1/bias1/AdamBLayer1/bias1/Adam_1BLayer1/weight1BLayer1/weight1/AdamBLayer1/weight1/Adam_1BLayer2/bias2BLayer2/bias2/AdamBLayer2/bias2/Adam_1BLayer2/weight2BLayer2/weight2/AdamBLayer2/weight2/Adam_1Bbeta1_powerBbeta2_powerBcount*
dtype0
g
save_1/SaveV2/shape_and_slicesConst*1
value(B&B B B B B B B B B B B B B B B *
dtype0
?
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesLayer1/bias1Layer1/bias1/AdamLayer1/bias1/Adam_1Layer1/weight1Layer1/weight1/AdamLayer1/weight1/Adam_1Layer2/bias2Layer2/bias2/AdamLayer2/bias2/Adam_1Layer2/weight2Layer2/weight2/AdamLayer2/weight2/Adam_1beta1_powerbeta2_powercount*
dtypes
2
m
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const
?
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*?
value?B?BLayer1/bias1BLayer1/bias1/AdamBLayer1/bias1/Adam_1BLayer1/weight1BLayer1/weight1/AdamBLayer1/weight1/Adam_1BLayer2/bias2BLayer2/bias2/AdamBLayer2/bias2/Adam_1BLayer2/weight2BLayer2/weight2/AdamBLayer2/weight2/Adam_1Bbeta1_powerBbeta2_powerBcount*
dtype0
y
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*1
value(B&B B B B B B B B B B B B B B B *
dtype0
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
?
save_1/AssignAssignLayer1/bias1save_1/RestoreV2*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
?
save_1/Assign_1AssignLayer1/bias1/Adamsave_1/RestoreV2:1*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
?
save_1/Assign_2AssignLayer1/bias1/Adam_1save_1/RestoreV2:2*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
?
save_1/Assign_3AssignLayer1/weight1save_1/RestoreV2:3*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer1/weight1
?
save_1/Assign_4AssignLayer1/weight1/Adamsave_1/RestoreV2:4*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer1/weight1
?
save_1/Assign_5AssignLayer1/weight1/Adam_1save_1/RestoreV2:5*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer1/weight1
?
save_1/Assign_6AssignLayer2/bias2save_1/RestoreV2:6*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer2/bias2
?
save_1/Assign_7AssignLayer2/bias2/Adamsave_1/RestoreV2:7*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer2/bias2
?
save_1/Assign_8AssignLayer2/bias2/Adam_1save_1/RestoreV2:8*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer2/bias2
?
save_1/Assign_9AssignLayer2/weight2save_1/RestoreV2:9*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer2/weight2
?
save_1/Assign_10AssignLayer2/weight2/Adamsave_1/RestoreV2:10*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer2/weight2
?
save_1/Assign_11AssignLayer2/weight2/Adam_1save_1/RestoreV2:11*
T0*
use_locking(*
validate_shape(*!
_class
loc:@Layer2/weight2
?
save_1/Assign_12Assignbeta1_powersave_1/RestoreV2:12*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
?
save_1/Assign_13Assignbeta2_powersave_1/RestoreV2:13*
T0*
use_locking(*
validate_shape(*
_class
loc:@Layer1/bias1
?
save_1/Assign_14Assigncountsave_1/RestoreV2:14*
T0*
use_locking(*
validate_shape(*
_class

loc:@count
?
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
?
inputPlaceholder*
dtype0*
shape:?????????*
?7
Layer1/weight1_1Const*?7
value?7B?7**"?7/??<?,d<1<>??E?????7?=3???x??_9?|e???	??iN??*<?J?0?=?5??wv>???=?ܸ=R{?=wb?=?W=?R,>??F0>?=C?;?҂=?<ͽ$???{~V=??=??=??'=7????.???׋?/?????c?`????8??=5?=?S??r6??"???J#>ͶP???F?L?>?i
<?O???<?_>???
??>M???"q??ʧ=Ej??? =(?8?ҫ#???%??|+?2?<S8q?????*A??-?;I?????'X??)?w????=n)=k??;?~?*?=?????=?e>&+f?4e>?;?(????;}?p=?I???i=	x???zJ=???F?=??y=?????=Y=?N,>R?=?????!)>l?G?|J???z???>p}>??(<?!>?罢? >	3=?92=?9<u?????=??
??? ;?Q?<???<??????	?m6?A;??==???<%??Ynb?[? >?I:=5?	=V_?<.?>??????=???=W??=%C.?T??:?_?=?>?=?I????Z?ݿ?G
D>??<S=???<R?=8?=?Y????=%5?????U???Z?ҽ?U????	???ܺ???M;U?????f?=k=F?=?@2??>?[?=1??=?X?ɷ??;??<???=?8???b???h=?Ž?'?=???:??=ZC??L4?$??=!?>?q??N@?;XRE???5?????3?,>}*=,?????7>)W??)k=??=????b?G?<?t?ؼ}e?=??=S?)<i??<? ?=? =????C?=??+?ͼ?ِ<??<?Sx?U?=0?c?v??9????.E??<X?4?4Ñ=x"?<Du<?D??=n??=:?;?x=???	 ;?????=c
=?>?̱;?t?=3?c?nN?=??=c??;֏?<&K???UŻ??????=??	=???=g	h??C=}&>??ռ?M=?Є=???=??<A>?????6>-???!?	=?G:???=???????ݞ(=???=???_G?=?Y=h???WK?????L?+????$>?????:=5<>b??w?>Aø=??=8?u??ï???ӽ?&???,=?ڿ<???;-?b?9>re%??Yڽ?|?CN??>M????]????ZKv=?3]=-z=n????À==??r?i?????˚?=???/Nm?/?>*????<??a?(cH?ç??+y=?o=0?????=(?<??M޽NC????)u?<>J?=??<>?>8>?0????"?6??????=J??<?m??W???W?{??o?=??=?????_=7?	>*??ld?=7??=??q??*?=x?????%>??=?v????/???1?????&??=??>?^X??%=??a=????,?W??P?<?xe=4??=??=z罽??I<ǌp=;8???:?J:=?ʽ(???\߁;??	?2??y?=?>?<Ad??#??uBl??W??O???}??=?/???=?갽??=Eڽ ????ok??z=g?нx?<?_???,?;H1???????<>?
>???=?.?=eI??㳻" ?=?o?<??t??E=?1ɼ?? u$=9??<x뽙F?=EWl??}M???>??ѽ?>u?=?[?<??}????(?I>??&>*c?<ب<??;?D?=???vRٽj*=@$>??>??R:?ج?ʍֽe??"Sf????k?=?X??X,??.???*???=?5̽w??<Q?0<e}?="!?=??g??<Φ+=?u?=?9??	?=????>??#?.?5=?????ཫ,@>?&?=?>0??!?P?	??=lLY=?O?=?8=?O???q
????=? ?????++??&?=?t&?1????dW=??=??½?UZ=?`G????=Y/??蕥=?2??c?a?FGa=??+Д<?Ok??4? Y?<?F>?f?<Px=0?%?>?_ڽ??"?֊?<?+w??5=*'?\?<??[?7c?=???<? ?=VK=?J?=Z???2!?p?>??=Q????Yν ??<@??<h?&??Fo??Xѽ??>?=3?I|?????=??{???t?E??=?>q????J=38??GU<???ѫh?<?=ȡ?=}????????8="O=?W?;s?C?@?_?;?3=?<???	>ݘ2=?D=??ջno????K>?+??Ҏڽ??"??3:???=??=oy=M49>?AG?9J??p??qB?=]???l߉??????ֳ??%n<CR?<?_#=?e?=?f?;.??I?=i?;=PY ?	>?.P;_??D?\?I?f=?ɉ<?:?????lC8=g ????Խ??[B??{=???=?68?_t????*????=??%???????=??????=?X?<?#???)????Qk?A????o=?#<?=??/?m???^4??]=???=?ݼ??f??ua9?(/<??T?A$?M?#????=??v?7>r?M????<#??=̿t?:c$??Rͽ?u"=?<???=b??[?K>???=??6>???=?17?KꣽBܧ=Kf?????̣?????ě??ɼ`??Z=@??=???????5>w?$=@?=??>?z?=???̊	??]?=?? >?*?<)G???_<?}?<,?=B?"?ho?{?=+?=???=???=?{?;l??<?2X= ?B??Ud=??F<??>=
?Z= ,>??????<?d>?n???Vc<o&?=??d<???<hvI?ۛ]????s??<??&>NQ@=?5?<R?=-=b?>_?۽n??=0?h???=vy?r?*>??>?Ma<A?k??????<?3?b6>G?<?SI????;_?<*??<??4>?+>?????s??Z>???=2"??[?=???=w?;SP;-UI?׻???R?=???<,U??F??=3.=??a<???<#DO>"3üg>???<???= ?I??q=t???k??=f????ԍ?	x=??ӽ?!?<X?%???<??????q=?K8=?????`I=??B>???=?%?<j<<F(?=\?????1<Jd&??o?=? )?sU??h??=S?潆W=?/?<??r=?D>?z?A??@=?O<g??2??)8?Y#W???????=?y???!???I<т?<??{=ء=@?.?m?g;>T<;?z?<?,=?_?;?N=<?rF????ʱ?=?FP=)?B??=R????h?<??;=x>[??<?&>??>?M?<?A>?7??
?=;@?2?=?g ?޼???2?=?^>?H >???=Յ?<??C??NμCg?=?Ný?7=?n?%6?=?5??>?=F`?5??=??>???=?|= ??=EK=??[?0o]?*r?=??>?3????=?????=??u?B?=???=v>?Hƽ?<??U???t????Inｎ?@???=o?ཁ?>???=B????;??\?>Է!>?+$=?t??k?.>?r???'>	?a?X9l?=1 1>zF??p>&>&*>É??𘽮?n= D?=/??<H?>?}????E=?iF>!f?;
???g?E=&?q???i=͞h;R7????H????k???,5??B???3?<q??%?'=
?<t?B? ?.??/׽??<>?|?=OiL<??????=????@?=?Ў=?N?<y????
9?b|?=?">?:"<??>|_n?x?I?q?h=?'?=?AH??t?=?e;??L>?צ??T?=ϱ?;?M?$ =2%-=??һ??X????_4???ب=???????=?b??;??=?|?=?=Z???~???B>?qI?xҁ=?.(??m˽?D>?v潖aȽHR???/??(>??>?IW=?????$?: s?≧??N=j?b?sm=?=żUQ?=?%?:??߽??b=?????J??e.<7?=?=????X??c??<
???S}?=???<??H=??#>??5=Fv=l*<????S+t??]?=?󻷂ͽix$??,K=?8?=?!>?T?=??Ƚ???<yMԼo?=kw?6?={Dx?E?罼:?=?e??R?ٽ?]?y??<?m<s?=???[f?<?N?=??-?#/????=ʶ)>LL)>U?????\?y??{??=??3?A?,>?b? >Em???iz??r9?k?	??Ň?1??<|S?=}??=g3.=f??=i?r=q????,>?J?=@f???? >????qI=-???C1?Pb????=9????E="?f=??=?b??q???{r???n?=P?=???=+??=v?P??J=NV?=?	???????<?8?K?\?ty?<!B?=????ܽ???C?=GU=???????vx6<Q >4???Q?6?Jؼ???=?30=????(=0y?????=???[)???<>/??䚐???콇??<??B=?????9=?V?=?5??8??&?Q??Pz?"??=t??`Z?=??{????z?<? ?=?]?<??;>??F?r?>k????7=?1?<4%??Nk???M=?p?=?gؽ??ӽ_D">[???+??=?&=??=*??V?-=֗??FP??L?=/!H??p??vH!>?j >?=???????=???G?_???f?l???Y?;d??<gƽa??f,>T.z?????ď?;J???e}?=๽q0??_?=?f-??>??????q=?3??	??x?G??j?=q?>T??=????$S=뽍<? ?;?Y?=?>?=???=??????=(????????<? H??1Ҽ?=?=??Խb???'?=)7???? ??s??=n??=?'9>_!?????=?5=?O=?]?<(PϽs??:?G=?=??a?=??нؼ?&x?????=%#=?]?<?????K>???=ҟ??&|?<?1=?A{???<?w?=s?N=g?(=?2>D??=o??=?]ؼ5?X=?Ƞ??s?^?x<?No?T?μ?*?;>?>͂?=.?u??s?=??ҽm??@ݪ??$???y)?_
=?4??J?߰;???$=Pb?<?^?=|r=}?>??=?-??sH=*??=]j??'Ľ???@??? ?%?B?*????.&?<7C+>??o=J? ?x>WD?=b?̽c?,???=R?wyI:?-?ʴ=?L???=4P=?i?f????V???ԽI?=?e ??T??v:<??0??C??$S\=w????=?*?=?=?Ir?IAܽz(?93?=?3?=?T??y#=:?+b??L?%>h??=z%>	^=`???????e??3??؟s?)??<uӁ?a0???|->?f?<?Tp=???<=????.k=???轭?>??<??(???{<j??=Q???*7?????????t0?<'y?y}?<??>??:X6?????Q;$?????
?;??ֽj????º?F?=?,?<1GC>oμ?<;???=y2?=*i?<??m????A}+?)?=?ٻ=F(????????=??n;?i??? ?`??uH>Є????!=??>p7?=?=?=#<??)?RA???<L?G ?H5g?y4=?򠽋?y?l???ؼ?b??&9>Phٽ(?=z0???????%>Å}???=?=?_?0=?B?=A&F=5?<1??g$??瞻=A???????????.=ji<=#?m??Z??f?`?????IL?aM?=??
???!<?Sʽ????\??óý???<UP?=???=3??]X=M̓8v;#>?u=z˳=???=xm?=?????f?????f=?&>??g=?&?<?̾??6?<?é?&y?<? ?=㥒<??=?ğ=L?????=??!=??Y=??=Q?-=F????<2뽽?J?=??L???i;Vҹ?h??????<ۂ>??=.`??ZL?;[?@?a\>.?ٽ??C}?=0????=?? ?@e?=????u?kpc=?M???G$>?ѓ????N<?_m>?b??????i>??3??Tļ?ݩ=?ߐ??V?~??=?m<??>Si=z??=q}??Fƻ`??*?s=?*R=??1??O=??????&>羅?8佽&???????F!???>g??_??=~??8?ZB>eB5?y??>?R?<:?@=`??U?>%g=?E???OE?=?B?b6>???=???<??M;ݹ?;B?=>}??V?K<?5
??8???Ǣ;Lh???ƾ=??z?? ?
????=>?H????=?Z?=?-???'<b?E<oD?=C?<?4	?B?Ѽ>=??U?Y=3?=S?_?2?Z=?{2>	x?=4?)?L?J>"?>e`?=????ټ??;??=??H=?fg???=?*?????ٽ??{??-???ջ??;?Jw?? ???2??1?-?گi=??	?/??=5?һ)?N>[ª??cM=?@{=? >@p=>?=M? <[???D(?=J8???????w<?U??zb><_,)? ?*>Q<J=mKZ???E????=??ϻ?y??V??=??=?t??ׁ<?;=??(?ݺ?=쭉????=~#=]d??D????P???????#;?Žs?=?Ɠ<???K??0?%=????O/?O"????6>Er<?D">O?罗Ze??O???Y??????މ=
Ѱ=?:?<??w=?}?=jd?o??<? ?????=tE3=?>\)?}@?7(???k?#?3?$?2?@a?=_	?=?????;???=p??<???=??G?A?l=t??5b?.???h???[??=????6=???n$?=?????Զ?ܣ??(?=???=?a????H?l?$<?g?=w??=??$=?u?=n??=#֍?1mu?j|???9ʼ?,?<??3?yH=f86?`?=???=??=m+S=??=??L<??????<#?=n3ܼ?q<h?B??H=?"?=A?>\
<6?8?R?I????tX)???l=V?>??W???????=csQ>u\>??`?YH?=?i?=?"=h??=T??<=?U=???=??I=Yw???@??T??????֐=,??%/<d;??????
?:Z?;???=??????G*༦?=???;????溽6Ѽ?X?+=$&?^g?=*
dtype0
?
Layer1/bias1_1Const*?
value?B?*"?????'?  ???H???"~?  ??q5??r?}?4?}??A???c??7? ??????f}?&ʀ?M΀??Z??Cq??  ??m???e?M?|??ˀ???z?|T????|?]???KV?$?}?''????????~?t<~???~?  ??5??????'|?t????K??*
dtype0
b
xw_plus_b/MatMulMatMulinputLayer1/weight1_1*
T0*
transpose_b( *
transpose_a( 
V
	xw_plus_bBiasAddxw_plus_b/MatMulLayer1/bias1_1*
T0*
data_formatNHWC
 
ReluRelu	xw_plus_b*
T0
?
Layer2/weight2_1Const*?
value?B?*"??E???0 >0?&??'?<?J=g???$
?=???????|3??s?<$ν???<m?>(?t=?Լ??,????=??-<?ް?N???g?Q?=?1>be???.?=?g?=;??2y>9??=4E?y!=??D=&?6?cn???a߽??#>?9??T??~=n???\؂=7??? ?<?&?-?R????<+r??q???-??(??~2????=????2.>G>????o?A?RG?=???????<???=?|?<M?>k?=???<?#??TX???ի=GƘ?????)?1???r?=??vC?U??=*???Jw=?.=X@???????=cw?=?i.?=۳?=?? ?d˽B?X??????????????m=e?=W??? ???f???&L??=`?q׳????ݍ=????0v<<?c?=???????=?s??E???ݼ?" >???9?h<Ev<??=??%>7?0=???=?а????=?g??/:???????=?L???9ȼ???E,?=??<?f?;l?=?P<&94>?$?=?h?<??l=?s?=7????=Co?;^?=?$???Q?=?K;??F=Y=y6"?^?<]? >?~????????Ź&?%\P??%??^???Y?4?'?=I??<{>42c??_???ݗ?<ӽCj=?<Ƌ/??vɼ{?>K??=IbK??89???
=?-H??ᚽo?j=lcн^?Ͻ?텼?U=?????t?=%???n?۽^?????c<+?;?{??mн??=VfԺ?????N??J%??????=?f,???<??<}?;>j?=???=??[??8<Z>?<G??=Gk?<t?:?_?V=?f??? ??E=/??W??=????4??=?iS;E0H=խ/?/? ?8Κ?G??=?????Iw?3??=?????I<qc????=???2???m>??;?e >_???7H??(?𽄒F>r???E?? ?u?@??=Q??<麥?~?A?Hﵻ??弦D=[?F???>Bؗ?*
dtype0
S
Layer2/bias2_1Const*-
value$B""Ǩ?????{~??e??
?}?????*
dtype0
c
xw_plus_b_1/MatMulMatMulReluLayer2/weight2_1*
T0*
transpose_b( *
transpose_a( 
Z
xw_plus_b_1BiasAddxw_plus_b_1/MatMulLayer2/bias2_1*
T0*
data_formatNHWC
'
outputSoftmaxxw_plus_b_1*
T0"