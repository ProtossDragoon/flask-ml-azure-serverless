??
?&?&
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
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
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.22v2.8.2-0-g2ea19cbb5758??
?
embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?9*'
shared_nameembedding_3/embeddings
?
*embedding_3/embeddings/Read/ReadVariableOpReadVariableOpembedding_3/embeddings*
_output_shapes
:	?9*
dtype0
{
dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
* 
shared_namedense_33/kernel
t
#dense_33/kernel/Read/ReadVariableOpReadVariableOpdense_33/kernel*
_output_shapes
:	?
*
dtype0
r
dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_33/bias
k
!dense_33/bias/Read/ReadVariableOpReadVariableOpdense_33/bias*
_output_shapes
:
*
dtype0
z
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

* 
shared_namedense_34/kernel
s
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes

:

*
dtype0
r
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_34/bias
k
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes
:
*
dtype0
z
dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:

* 
shared_namedense_35/kernel
s
#dense_35/kernel/Read/ReadVariableOpReadVariableOpdense_35/kernel*
_output_shapes

:

*
dtype0
r
dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_35/bias
k
!dense_35/bias/Read/ReadVariableOpReadVariableOpdense_35/bias*
_output_shapes
:
*
dtype0
z
dense_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedense_36/kernel
s
#dense_36/kernel/Read/ReadVariableOpReadVariableOpdense_36/kernel*
_output_shapes

:
*
dtype0
r
dense_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_36/bias
k
!dense_36/bias/Read/ReadVariableOpReadVariableOpdense_36/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
m

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name38718*
value_dtype0	
?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_31466*
value_dtype0	
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
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes	
:?9*
dtype0*??
value??B???9BcallBgetBokBknowBltgtBgoBfreeBillBlikeBgoodBgotBcomeBdayBtimeBsendBloveBtextBgoingBwantBtxtBoneBsorryBneedBrBstillBlorBbackBhomeBnBseeBwellBthinkBstopBtodayBreplyBhiBnewBdaBhappyBtakeBphoneBpleaseBlaterBtellBweekBmobileBìBnightBmuchBdearBgreatBclaimBcantBwayBohBhopeBheyBworkBsaidBgiveBalreadyBsayBplsBeBthatsBprizeBmakeBtomorrowBrightBwatB1BreallyBmsgBcBampBnumberBmorningBmissByesBmessageBmeetBaskBwinBfindBeveryByeahBwouldBbabeBiveBthanksBsureBlolBdidntBcashBwentBlifeBletBcosBalsoBlastBfeelBurgentBsomeoneBsentBpickBkBfirstBnokiaBlateBcontactBalwaysB	somethingBperBkeepBbBwaitB3BplaceBmoneyBgettingBevenBcouldBbuyBaroundBanythingByaBsoonBserviceBfriendsBcareByetByearBwaitingBvBhahaBusBsleepBnextBdoneBchatBwontBthkBmanyBhelpB16BthingBniceBmanBliveBleaveBdunBcustomerB18ByoureBspecialBjobBclassBmayBhelloB
guaranteedBgonnaBtoldBthingsBpeopleBmindBlunchBgudB5BwishBwanBlineBdrawBbestBìïByoBtonightBtoneBtalkBsmsBguessBendBbetterBwannaBtryBcomingBcheckBtryingBthoughtBroomBpayBlarBheartBfineBeatBchanceBcarBlongBhalfBfriendBfinishBbitByupBxxxBxBspeakBsmileBreceiveBnameBminBmightBmeetingBluvBholidayBguysBeverBcostBbirthdayBawardedBaccountBå£2000BworldBuseBrealBreadyBreachBnothingBjusBhaventBearlyBdaysBdatBcoolBanotherB150ppmBwhatsBthanxBstuffBshowsBshitBpoBplayBneverBlatestBgirlBenjoyBboxBwordBtvBsexyBrememberBpersonBpaBofferBminsBliaoBlandlineBhowsBhouseBhearBgodBdunnoBdenBcalledBbedB1stBå£1000BxmasBwkBwatchingBwatchBtwoBtmrBthankBsirBprincessBmustBmonthBlotBcameraBbigB6BworkingBwantedBtodaysBtillBtcsBstartBsatBputBprobablyBmissingBmaybeBmakingBmailBmadeBlookingBidBentryBcameBapplyBaightBahB	afternoonBactuallyBworryBshallBquiteBproblemBorangeBokayBofficeBltdecimalgtBjoinBhourBhesBgoesBfuckBforgotBeveningBdoesntBdinnerBbabyB7B500B2ndBvideoBtimesBtheresBsinceBselectedBpartBpainBnetworkBminutesBlittleBkissBhavBenoughBeasyBchangeBbusBbonusBbadBå£150BweeklyBtonesBtilBtextsBsweetBrunBplusBplanBmobBloseBhairBfoodB
everythingBdudeBdisBcallsBboyBaskedBalrightBabtB9Bå£100ByearsBwithoutBwidBwakeBtopBthoughBshoppingBplzBpicsBosoBmeansBmakesBlookBlehBhurtBgiftBfunBeitherBcollectBcodeBbtBawardBableB150pBå£500B	yesterdayBweekendBvalidBtrueBtookBstayBsmokeBsleepingBshowBsaysBringtoneBmessagesBleftBlandBhotBhappenBguyBfullBfinalBfeelingBdrivingBdeBcozBcomesB	beautifulBanswerBaftB8007BwotBworthBwordsBwifeBwifBwenBvouchersBtscsBtestBstoryBshopBorderBmusicBforgetBfamilyBeveryoneBdeliveryBdadB
collectionBawesomeBattemptB86688B150pmsgBwholeBwantsBupdateBunsubscribeBtownBtomoBsisBservicesBsearchBschoolBschBsayingBsawBsadBpoundsBpostBmovieBlotsBletsBleiBhoursBhafBgr8BgoinB
friendshipBfinishedBelseBdoubleBclubBcloseBchooseBcauseBcaseBbusyBbringBbreakBboutBboredBbookBardBanywayBanyoneBaddressB8ByrBweeksBtriedBshesBsetBrateBquizBquestionBpriceBpicBonlineBokieBnoeBnewsBmuBmissedBminuteBmeantBmeanBluckyBjuzBisntBheadBfeltBfastBfarBdntBdetailsBdateBcontentBchargeBcallerBawayB12hrsBå£250BwinnerBwhateverBvoucherBughBtripBtreatBthinksBtenBtakingBsunBsimpleBsecretBsecondBseaBsaeBreadBprobBpointBplayerBoutsideBoldBneedsBmsgsBlovelyBlostBlightBlessonB	importantBhuhBhardBhappenedBhandBfridayBfriBfoundBfancyBeveBenteredBemailBearlierBdownloadBdatingBdarlinBcongratulationsBcompanyBcollegeBcarlosBcallingBbdayBangryBalmostB150B10ByouveByoullByarBwanaBwalkBtouchBtotBthoBthinkingBthBtellingBtcBtakesBsoundsBseeingBsavamobBsaturdayBringBreadingBpubBprivateBpickingBparentsBorediBoptBntBnopeBnevaBmumBmonthsB
mobileupd8BmarchBmahBltdBleavingBlaptopBkindBhungryBgoodmorningBgameBgBfuckingBfrBfinallyBfeelsBegBdropBdoggingBdecidedBcutB	currentlyBcumBcsBcreditBcorrectBcolourB	christmasBchennaiBcardBbrotherBboytoyBbelieveBbathBb4BawaitB	availableBassBaskdBareaBageBabiolaB08000839402Bå£5000BûBwrongBwklyBwithinBwelcomeB
valentinesBusedBukBtruthBtiredBstartedBstBsomebodyBsnowBsmilingBsisterBsickBrockBriteB	questionsBprojectBpolyBpointsBpoboxBphonesBpaperBoperatorBopenBoffersBnttBnoonBniteBnationalBmetBlovableBlogBknowsBjohnBinvitedBimmediatelyBhitBheeBhaBgottaBgoneBgirlsBgettinBgdBgamesBfatherBfaceBenterBendsBdriveBdrinkBdiscountBcrazyBcoupleBcongratsBconfirmBblueBbcozBbankBauctionBanytimeBaloneB750B10pB0800Bå£800BûòBxxBworriedB	wonderfulBwhosBwarmBwapBwBvisitB	unlimitedBtermsBtalkingBswingBsunshineBstartsBsongB	sometimesBsideBsendingBsafeBrplyBreasonBrainBpassBpartyBnahBmoveBmateBloverBlovedBloanBloadsBlectBleavesBleastBkindaBjayBipodBindiaBhopingBholdBhmmmBhellBheardB	happinessBgasBfreemsgB	forwardedBfigureBextraBetcBehBdirectBdieBdecideBcomplimentaryBchargedB
callertuneBbossBbatheBaskingBasapB	apartmentBanymoreBansBagoBacrossB87066B2dayB12B100Bå£300ByrsBwowBworriesBwonderBwokeBwivBwishingBwineBwilBwedBwatsBviaB
unredeemedBuksBtypeBtxtsBtxtingBtrustBtogetherBtelBsurpriseBsupposedBsubBstoreB	statementBspentBspendBsoundBsortB	somewhereBsmallBslowlyBsilentBshowingB	seriouslyBsemesterBpromiseBpressBparkB	otherwiseBnaBmrngBmrBmotorolaBmondayBmomBmodeBmobilesBmmBmineBmerryBmenuBmatesBmatchesBmatchBluckBlovingBlistenBlessonsBldnBlazyBknwBknewBjoysB
identifierBhoweverBhmvBgetsBfrndsBfrmBfoneBflirtBfactBexpiresBexamBdvdBdreamsBdisturbB	difficultBdarrenBcupBcreditsBcompBcominBcinemaBchikkuBcheapBcatchBbookedBbillBaintBaheadBadmirerB85023B50B2niteByepByahooBwwwgetzedcoukBwunBwitBwishesBwheresBwheneverBwerBweightBwaterBvoiceBvaluedBuncleBummaBtowardsBtoughBtoniteBticketsBtheyreBtenerifeBtampaBsundayBstyleBstudyBstudentsBsofaBsmthBslowBslaveB	situationBshowerBsexBsenseBsellBseenBseemsBsaveBsaleBroadBrestBrepresentativeBrentalBrentBremoveB
registeredBrcvdBqBprettyBprayBpowerBpoliceBplansBpersonsBpayingBoptoutBopinionBoopsBomwBnytBnumbersBnormalBno1BnetBnearBnakedBmurdererBmurderedBmurderBmoviesBmomsBmoBmistakeBmiracleBmidBmenBmelleBmeiBmehBmaximizeBmarriedBmarriageBlooksBlibraryBlessBladyBkidsBkeptBkbBkateBkallisBjoinedBjanuaryBinfoBilBideaBhopBhighBhgsuite3422landsBheavyB	happeningBgymBgrinsBfunnyBfrensBforeverBfixedBfbBfacebookBfBenvelopeBenergyBdrugsBdreamBdoorBdinBdeepBdeadBdaddyBcuzBcuteBcustcareBcroydonBcr9BcourseBcountryBcopyBconveyB
completelyB
colleaguesBcineBchangedBcashinBcashbalanceB	camcorderBbuzzBbugisBbslvylBbidBbedroomBalBadvanceBactivateBaccessBacceptB800B5wbB4uB25pB20pB20B1327B11mthsB11B08707509020B08000930705Bå£350Bå£200ByoudByogasanaByogaBworkinB	wonderingBwntBwillingBwetBweekendsBweedBweatherBwasteBwasntBwakingBvaryBusuallyBusualBusfBunsubBunlessB
understandBufindBtwiceBtuesdayBttylBtroubleBtrainingBtrainBtrackBtncsBticketBthtBthnkBteasingBstraightBstdB	speciallyBspecialcallBsonyBsightBshuhuiBshortBshdBselfBsecB	screamingBscreamBsamBrrevealBroundBrequestBreplyingBrepliedB	referenceBreceiptBreachedBratherBputtingBpoorBpobox84Bpobox36504w45wqBpmBpleasureBpleasedBplanningBplaneBpizzaBpixBphotoBpeteBpastBpasswordBpageBpBothersBorchardBonesBnoticeBnoneBnobodyBnigeriaBni8BmuzBmrtBmp3BmonBmoanBmidnightBmemberBmedicalBmarryBlttimegtBloyaltyBloginBliftBlaughBlaBkingBkiBishBimmaBimagineBiceBiamBhowzBhoBhmmBhlBhaiBgotoBgladBgayBgaveBgalBfrndB	freephoneBflightsBfiveBfingersBfilmBfetchBfaultB	fantasticBfallBeyesB
experienceBeuro2004BendingBendedBemptyBemBeatingBeatinBdrugB
donû÷tBdigitalB	differentBdiedBdidtBdependsBdealBdamnBdaiBcraveBcomputerBcompetitionBcoldBcoffeeBclickBcleanBchoiceBchineseBcheckedB	characterBcdBccBcabinBbtnationalrateBbrandBbotherBbooB	bluetoothBbecomeBbatteryBbalanceBbakBarriveBalriteBalexBaiyahBairBaftrB8thB87077B80062B4thB40gbB2003B10pminB1000sB1000Bå£3Bå£1500ByunByoucleanByestByayByanBxyBwriteBweakBwalkingBwahBversionB	valentineBuveBusingBuserBurselfBurnBurgntBturnsBtuitionBtransactionBtourBtktsBthruBthrowBthreeBthinkinBteamBteachesBteachBtatBsystemBsurfingBsurelyBsuperBsupBsummerB
subscriberBstreetBstrBstayingBstationBstartingBstandardBsptyroneBsportBspokeBspaceBsouthBsonyericssonBsome1BsolveBsittingBsinglesBsingleBsimplyBsimBsignBsighsBshouldntBshellBsettledBseriousBseriesBsellingBsedB	searchingBrunningBrudeBrsBroseB	roommatesBreviewBrevealBresearchBrecentlyBraysBratesBquitBquickBqatarBpoundBpostedBpossibleBpornBpolysBpicturesBphotosBpgBperfectBpcB
passionateBpartnerBoruBnumBnaughtyBnatureBnaturalBmoodBmomentBminutsBmaybBmatterBmarkBmandaBm263uzB	locationsBlocalBlmaoBlistBlinkB
linerentalBlikedBlectureBlearnBleadBlatrBkickBkettodaBjokeBjiuBjBiû÷mBitplsplsB	interviewBinterestingB	insuranceBinsteadBindianBincBhurryBhospitalB	hopefullyBhookBholdingBhiyaBheightBhasntBguideBgtBgroupBgrlBgravityBgoogleB	goodnightBgodiBgivingBgivesBgeBgalsBfutureBfrndshipBfrenBforwardB	followingBfmlBflowerBfilesBfasterB	fantasiesBfaBexplainB	excellentBexactlyBexBevngB
especiallyBenjoyedBenglandB
embarassedBeerieBeasierBdryBdrinksBdonåõtBdollarsBdoctorB
dictionaryBdeyBdelBdailyBcudBcouldntBcookingB	contactedBconnectB
confidenceB
conditionsBcoinsBclockBchildishBcheersBcheckingBchargesBcdsB	carefullyBcampusBcallersBcakenBcafeBbyeBbuyingBbucksBbringsB	brilliantBbowlBbodyB	bloodsendBblackBbitchBbinBbfBbetBbellyBbcumsBbbBbarelyBbahamasBaveBaskinBarrestedBarrangeBargumentBarentBaprilB
appreciateBappointmentBappBanywaysBansrB	affectionBaddictedBaddBacB86021B8552B83600B82277B6hrsB3rdB3gB36504B3030B25B2004B2000B1x150pwkB150ptoneB150pmB08718720201B0870B020603Bå£900B	å£75000Bå£3wkBå£1450B	å£10000Bå£10BzedBymByijueByetundeByesheBxchatBxavierBwwwldewcom1win150ppmx3age16BwwwcomuknetBworseBwondersBwomenBwomanBwinsBwifehowBwhiteBwhetherBweveBweirdB	wednesdayBwebsiteBwearBwc1n3xxBwantingBwallsBwalkedBwaitinBw45wqBvryB	voicemailBvodkaBvodafoneBvodaBvlBvipBvillageBvikkyBvijayBvettamBverifyB
vegetablesBvaluableB
valid12hrsBuptoBupgradeBuniBunclesBullBu4BtylerBtxtinBttBtrulyBtreeBtravelBtotallyBtorchBtomBtoaBtitlesBtitleBtisBtimingBtickBthursdayBthursBthtsBthroatBtheoryBthemobB	thatåõsBtextoperatorBtextingBtestsBterribleBtermBtenantsBtempleBtellsBtearBteacherBteaBtcsstopBtcrw1BtbBtabletsBtaB	surprisedBsuraBsuprmanBsupportBsupplyB
supervisorBsuntecBsunnyBsucksBsuccessfullyBsubsBstylishBstupidBstrongB	starwars3BstarsBstandBspreeBsportsBspookBspokenBsplBspkBspellBspeedBsoonerBsomethinBsolBsoftBsocialBsnakeBsmokesBslippersBsleptBslapBsk38xhBsixBsiteBsitBsiriBsipixBsingBsiBshorterBshootBshippingBsheetsBshareBshaBsettleB	selectionBseemedBsecondsBseBscreenBscotlandBsaucyBrunsBroww1jhlB	roww1j6hlBronBromanticBroleBroastBreturnsBreturnedBreturnBresultsBresultB
respondingBrespondBrespectBremindB
rememberedBregularBregardsBrefusedBrecordBrecentBrecdBrealyBrealityBreachingBrandomBranBrainingBrailwayBquotingBquoteBquicklyB
questionedBqueenBqualityBpurposeBpurityBpurchaseBpublicBpsBprovidedB	prospectsBpromisesBproblemsB
previouslyBprepareBpreferBppmBppleBpplBpongalBpodBpocketbabecoukBplentyBplayingBplayedBplacesBpissedBpinBpilatesBpiecesBpickedB
philosophyBpersonalityBpersonalBpeaceBpayohBparkedBpaidBpagesBpackageBpackBorderedB
or2stoptxtBontoBomgBoicB	obviouslyBnxtBnwBnurunguBnosBnorm150ptoneBnormBnightsBmumsBmotherBmornBmoralBmoonBmonthlyBmodelBmobilesdirectBmiteBmissinBminnaminunginteBmilkB
messageitsB	meanwhileBmeaningBmealBmaturedBmatrix3BmasBmapB
managementBmagicalBlturlgtBlovesBloverboyBlousyBlotrBlookinBlongerBlonelyBlogoBlivingB	listeningBlikelyBlifetimeBlieBlidoBletterBleonaBlemmeBlaughingBlargestBlaidBladiesBl8rBkusruthiBkkhowBkidzBkeyBkeralaBkeepingBkadeemBjuneBjoyBjokesBjesusBjazzBjaysBjanBjadaBizzitBitalianBinviteBintroB
interestedBintelligentBinsideBinformedBinformationB	inclusiveBincidentBinchesBidkBideasBhvBhurtsBhugBhrsB	housemaidBhotelBhostelBhorribleBhornyBhoneyB
homeownersBholsBhollaBholderBhmBhipBhintBhgsuite3422landsroww1j6hlBheadacheBhavinBhateBhardcoreBhappensBhappendBhangingBhandsBhamBgreenBgrandBgramBgovtinstituitionsBgorgeousBgodsB	gentlemanBgeeeeBgeeBgapBfullonsmscomBfryingBfreezingBfreakBfranBfourBforceB
footprintsBfollowedBfollowBfloorBflatBfishB	finishingBfinishesBfilmsBfillBfileBfightngBfightingBfifteenBfeverBfeetBfebruaryBfearBfavourBfaveBfatBfantasyBfanciesB	expectingBexpectB	exhaustedBexcuseBexcitingBexceptBexactBentitledBenglishB	elsewhereBec2aBearthBdroppedBdotBdoggyBdogBdislikesBdirtyBdirectlyBdignityBdificultBdietBdickBdemBdeletedB
definitelyBdefBdecemberBdearerBdatsBdatesBdarlingBcw25wxBcustBcreditedBcreatedBcrabBcoverBcostsBcostaBcontractBcompleteB	communityB	collectedBcoBcloserBclosedincludingBclearedBclearBcleaningBclaireBcityBchurchBcheaperBcharityBchainBcentreBcenterBcellBcbeBcaughtBcatchingBcartoonBcarefulBcannotBcancelBcamBcallsmessagesmissedBcalBbx420ip45weBbuzyBbuttBburgerBbuffBbudgetBbtwBbroughtBbringingBboyeB	box97n7qpBbostonBboringBboostBboldBboatBbloodBblooBblahBbiteBbishanBbirlaBbirdsBbiggestBbiggerBbewareBbelovdBbehaveBbeginBbeerBbecozBbayBbathingBawakeBawaitingBaventBavatarBattendBatlantaBateBassumeBasleepBapptBappsB
apparentlyB	apologiseBanywhereBanybodyBantiBannouncementBamtBalertBalcoholBaiyoBaiyaBairportBahmadBage16BafraidBadviseBadultBactionBaccB
aathiwhereB
8neighbourB89555B88600B88066B87575B87239B87131B87121B87021B84025B83222B81303B80488B7thB	7childrenB7250iB6thB
6housemaidB5thB5gentlyB	5gardenerB542B530B4pressB4mthsB4infoB4cookB3wifeB3dB3coverB300B2uB2policeB2optoutB28B21stB2005B1hisB1956669B18onlyB123B121B11414B10kB10am7pmB09066612661B09066362231B09061209465B08717898035B08712460324B08712405020B08712300220B08000938767BìllBå£450Bå£1250Bå£1BzoeByuoByummyByckBxuhuiBxamBwwwtxttowincoukBwwwtextpodnetBwwwtextcompcomBwwwmovietriviatvBwwwldewcomsubs161win150ppmx3B
wwwldewcomB	www4tcbizBwww07781482378comBwtfBwsBwouldntB	worldveryBworldsBwoBwldBwkgBwkent150p16BwiskeyBwishinBwiseBwindowsBwindBwicklowBwhoseBwhnBwhereverBwhenevrBwhatsupBwelpBweirdestBweighBwebBwearingBwavesBwalmartBwalesBwaituBwaheedBwaBvuBvthBvoteBvomitBvioletBviolatedBvideophonesB	videochatBvdayBvavaBvariousBvaazhthukkalBuuButterBusualiamBusherBusefulBusbBurgentlyitsB	urgentbutB	updatenowBup4BunsoldBunknownBuniqueBunfortunatelyB
unemployedB	underwearBunableB	ummmmmaahB	ultimatumBuhBubiBtxtnoB
txtauctionBtwilightBtwelveBturnBtulipBtuesBtsunamisBtsandcsBtrufflesBtradeBtouchedBtotalBtortillaBtootBtoolBtonsBtones2youcoukBtomarrowBtollBtokBtodaysundaysundayB	todayfromBtoclaimBtmrwBtmingBtlkBtiwaryBtihsBthxBthotBthgtBthesisBtheatreBthatû÷sBthanksgivingBthangamBtextpodB	textbuddyBtestingBtessyplsBtellyBteeB	technicalBtechBtcsbcm4235wc1n3xxBtaxiBtasteBtariffsBtankBtalentBtakinBtakenBsymbolBswtheartBswtBswissBsweetsBsweetieBsweetestBsuzyBsuxBsurveyBsuperiorBsuperbBsumBsuggestBsugarB
sufficientBsueB
successfulB
subscribedBsubpolyBstudyingBstrangerBstoresBstoppedBstompsBstomachB	stockportBstockBstickBsteamBstayinBstarBstandingBstampsBstampedBstaffBsptvBspringBspendingB	speedchatBspeakingBspareBsourceBsoulBsorydarealyfrmBsoryBsorryinBsoreBsoooooBsongsBsolvedBsoireeBsoftwareBsnowmanBsnBsmokingBsmeoneBslotsBsliceBsleepwellamptakeBsleepingandBskypedBskypeBskyBsincoBsimplerBsilentlyBsigningBsianBshoutedBshotBshortlyBshortageBshirtsBshirtBshijasBshesilB	sheffieldBshampainBshameBshaggedBsevenBsettingsBservingBseptBsentenceBsentdateB
sendernameBsenBsellsBseemBsecretlyBseasonBscroungeBscreamedBscotchBscoreBschoolsBscheduleBscaryBscaredBsavedB	satisfiedBsaryBsarcasmBsalonBsalaryBsaidifBsachinBrushBrumourBrumBruBrowBroomsBrogerBroflBrocksBroadsBriverB	ringtonesBrideBrichBriceBrhythmBrewardBrevisionBrevealedBretrieveB
restaurantBresponsibilityBresponseBresponcewhatBresendBrequestsBreportBreplacementBrentlBremovedB	remindingBreminderBremainsBremainBremBreleasedBregisterB	regardingBrefilledBrefBredB	recogniseB	recessionBreceivedBreasonsBrealizeBreactionBrdBrcvBratetcsBranjithBrangBrandyBrallyBrajiplsBraiseBradioBracingBquestionstdBptboBproofBprofitB
professorsBprocessBprobsBprivacyBprintedBpreyBpresentBpreparedBprepaidBpremierB
preferablyB	practicalBprabhaimBpoutsB	potentialBpostcodeBpostcardBpositionBpoppedB
polyphonicBpolyphBpoliticiansBpoleBpoemBpobox45w2tg150pBpobox334BplmBplazaBplayersBpigBpieceBpieB	picsfree1BpickleBphpBperiodBpenceBpeacefulBpayeeBpassedBpartnershipBparcoBpanBpaintingBpainfulBozBownsB	ovulationBosBoriginalBoreoBoptionBopportunityBopinionsBopeningBonwardsBoniBolaB
ofå£2000BoftenB
officiallyBofficialBofficeunderstandBodiBo2BnydcBnycBnowiBnounBnormallyBnolineBnokBnoiBnitBnimyaplsBnimyaBnicholsBnicenicehowBnicBnewestBneftBnedBnecklaceBnearlyBneBndBnbBnastyBnapBnamesBnamedBname2Bname1BnahiBnagBmysteryBmusthuBmunstersBmumtazsBmumtazBmummyBmuchiBmtBmsgs150pBmsgingBmovesBmovedBmouthBmostlyBmonoBmonkeysBmomentsBmojiBmobyBmobnoBmobilesvaryBmmmmmBmmmmBmmmBmixB
misbehavedBminiBmidsBmessyB	messengerB	messagingBmessagesomeB	messagenoBmessagedB
membershipBmembersBmelBmeetinBmedBmcatBmaxå£7B	max10minsBmaneeshaBmandanBmajorBmaintainBmailsBmailboxBmahalBmagaBmachanBmacBm95Bm26BlyfuBlyfB	lvblefrndBlucyBlt3BltBls15hbBloxahatcheeBloversBlovemeBloudBlosingBlosesBlooseBlookatmeBlondonBlogopicBlocationBloBlkBlivesB	liverpoolBlinesBlilyBlikesBlikB	lifpartnrBlicksBlettersBlegalBldnw15hBlaysBlaughedB	lacsthereB	lacsthatsBlabBkzB
kudiyarasuBkrBknockB	knackeredBkkwhyBkkwhereBkkimBkissesBkindlyBkillsBkillingBkilledBkiddingBkicksBkickoffBkgBkeysBkeralacircleBkeggerBkayBk52BjulyBjstfrndBjscoBjourneyB	jordantxtBjordanBjoltBjokingBjokinBjoBjessBjennyBjenBjeansBjealousBjavaBjaneBjamesB	iû÷llBissuesBissueBislandsBiqBip4BinvestBinternetB
interfloraBinterestBinstructionsB	instantlyBinrBinningsBinfowww100percentrealcomBinformBindiansBinconsiderateB	includingBincludeBinchBimprovedB
impossibleB	impatientBimpBikeaBignoreBieBidiotBidealBicicibankcomBibizaBibhltdBhydeBhwBhusbandBhurtingBhurriedBhunnyBhunBhttpwwwurawinnercomBhttpwwwetlpcoukexpressofferBhrBhowardB	hospitalsBhoroBhopedBhoneybeeBhonB	holidaysoBholBhillBherloveBheriBhenceBhelplineBhelp08712400602450pBhellaBhelenBheldBheadsBheadingBheadinBhavntB
havenåõtBhardlyBhangB	halloweenBhallaqBgudnitetcpracticeB	greetingsBgreetB
greatbhajiBgpuBgottenBgossipBgoodoBgoodnoonBgonaBgoldBgmgngegnBgivenBginBgimmeBgibbsBghostBgfBgetstopBgeorgesBgenuineBgentBgeniusB	generallyBgenderBgaytextbuddycomBgauthamBgaryBgarageBgapsBgangBganeshBg696gaBfyiBfujitsuBfuckinBfrommBfringeBfreefoneBfree2dayBfraudsBforumB	formclarkBforgetsBforeignBfoolBfoBflowingBflightBflashBflameBflagB	fixedlineBfixBfitBfinewhenBfilthyBfillsBfiguresBfightBfieldBfemaleBfebB	favouriteBfavorBfathimaBfanBfallsBfallingBfairBfailedBeyBexorcistBexeterB	executiveBevnBeverydayB
everybodysBeventBeuropeBeuroB	essentialB	esplanadeBescapeBenuffBenemyBenBelectricityBelaBeireBeightBeeBebayBeasterB
eastendersBdueBdrunkBdrivinBdriverBdrinkinBdresserBdressedBdraculaB	downloadsBdormBdoorsBdocsBdloadBdiwaliBdivorceBdistractBdisplayBdiscussBdiscreetBdiscloseBdintBdimeBdhinaBdevelopBderekB	depressedBdeliveredtomorrowB	deliveredBdeliverBdelhiBdeleteB	dedicatedBdedicateB	decisionsBdecisionBdecidingBdeathBdearlyBdeariBdear1BdayuBdaysheBdaveBdatebox1282essexcm61xnBdareBdancingBdanceBdahowBcutefrndBcustcare08718720201BcurryBcurrentBcuriousBcsh11BcryBcruiseBcrossBcroreB	cricketerBcreepyBcrapBcrackB	cr01327btBcoversBcountinBcostå£150pmBcostingBcontentsBcontactsBconstantBconsideringBconsiderB
connectionBconfusedBconductsBconcentrateB	completedB	complaintBcompareBcombineBcolorB
collectingBcoinBcockBcochinBcoatBcnBclosesBclosedBclos1BcleverBchinaBchillinBchillBchildrenBchildBchickenBcheerBchechiBchattingBchasingBcharlesBchancesBchaB	certainlyB	celebrateBceleb4BcatBcastorBcashtoBcaringBcaresBcareerB
cappuccinoBcancerBcanadaB&callså£1minmoremobsemspobox45po139waB%callså£1minmobsmorelkpobox177hp51flBcallfreefoneBcalldBcallcostBcall09050000327BcakeBc52BbusesBburningBbunsBbuildingBbuffetBbudBbtoothBbstfrndBbrosBbrokenBbrokeBbroBbritneyBbristolBbrightBbriefBbreatheBbreathBbrayBbrandyBboysBbox95quBboughtBborrowBborinBbooksBbmwBbluffBbloodyBblokeBblindBblessingBblessedBblehBblameBblakesB
blackberryBbillionBbidsBbest1BbeneficiaryBbenBbeinBbeggingBbegBbecomesBbecBbcm1896wc1n3xxBbatchBbatB	basicallyBbasicBbarBbanksBbangBbagiBbagBbabesBbaBb4280703Bb4190604BawwBavoidBauntyBauntBarunBarngBarmsBargueBarghBarcadeBarBapproxBapplicationBapartBaomBanthonyBanswersB	answeringBansweredBannoyingBandrosBamongstBamericanBamazingBalwysBalgarveBakaBahsenBahaBagesBagallaBaffectionateB	aeroplaneBaeronauticsBadviceBadsBadministratorBaddedBaddamsfaBadamBadBactorBacheBaccountsBaccidentallyBaburoBabtaBabilityBabiB	aathiloveB9tB9jaB9am11pmB9aeB930B8pmB8amB89693B89545B89080B88222B85069B85B84128B83383B83355B82468B82242B80608B80182B80086B80082B7ishB
7876150ppmB786B6pmB6monthsB6daysB69888B69698B630B61610B60pminB5weB5minB5kB50pB5000B4filB4dB4aB4742B45239B41685B40B3uzB3qxj9B3minsB3510iB350B326B
31pmsg150pB300pB2mrwB2morrowB2morowB2goB2endB2cB26thB250B24hrsB24B
21870000hiB21B20000B1sB1hrB16onlyB153B150pwkB150pmtmsgrcvd18B$150pmsgrcvdhgsuite3422landsroww1j6hlB150pminB150pdayB145B12mthsB125giftB113B1030B09094646899B09071512433B09066364589B09065174042B09064012160B09064011000B09063458130B09061790121B09061221066B09058099801B09058094565B09056242159B09050090044B09050003091B09050002311B09050001808B08719181513B08719180248B08718727870B08718727868B08718726270150gbpmtmsg18B08715705022B0871277810810B08712405022B0870kB08706091795B0870241182716B08452810075over18sB08452810073B0845B08081560665B0808B08002986906B08002888812B08001950382B08000776320B08000407165B07xxxxxxxxxB07821230901B07786200117B07742676969B07123456789B071104B0578B050703B0207B01223585334B	åôrentsB
åômorrowBåòitsBåðBå£sBå£79Bå£71Bå£6B
å£5monthBå£54Bå£50å£500Bå£50awardB
å£500000Bå£50Bå£48Bå£3365Bå£250kB å£1minmobsmorelkpobox177hp51flBå£1millionB	å£150wkB2å£150pmmorefrommobile2bremovedmobypobox734ls27yfB	å£150pmBå£150perwksubB
å£150msgBå£12B
å£100000BûïharryBûïBzyadaBzoukB	zogtoriusBzindgiBzhongBzahersBzBywhereByupzByunnyByummmmByoyyoooByowifesByouû÷llByouwhenByouwannaByouuuuuByoutoByouthatsByourjobByourinclusiveByouphoneByoumyByoumoneyByouldB	youkwhereByouiByouhowByoudearwithB	youcarlosByouanyByorByohereBymcaByijuehotmailcomByifengByiByettysByessuraByesimByeshereByesgautiByesfromByesbutByes434ByerByenByelowiByellowByellingByehByeeshByeahandBydayByaxxByavntByamByalruByagoingBy87BxxxxxxxxxxxxxxBxxxxxxxxBxxxxxxxBxxxxxxBxxxxxBxxxxB#xxxmobilemovieclubcomnqjkgighjjgcblBxxxmobilemovieclubBxxukBxxspBxoxoBxnetBxclusiveclubsaisaiBx29Bx2BwylieBwwwwin82050coukBwwwtxt82228comBwwwtxt43comBwwwtxt2shopcomB
wwwtklscomBwwwsmsconetBwwwsmsacubootydeliousBwwwringtonescoukBwwwringtonekingcoukBwwwregalportfoliocoukB
wwwphb1comBwwworangecoukowBwwwmusictrivianetB
wwwidewcomBwwwfullonsmscomBwwwflirtpartyusB
wwwdbuknetBwwwcnupdatescomnewsletterBwwwbridalpetticoatdreamscoukBwwwb4utelecomBwwwasjesuscomBwwwareyouuniquecoukBwwwapplausestorecomBwww80488bizBwuldntBwuldBwudBwtcBwtBwroteBwronglyBwrnogBwrldBwrksBwrkingBwrkiBwrkBwrithingBwrightBwrenchBwreckedBwrcB	wquestionBwoulBwotzBwotuB	worthlessBworstBworryuseBworryingBworriedxBworldmayB	worldgnunBworksBworkloveBworkandBworkageB	wordstartBwordcollectBwoozlesBwoouldBwoohooBwoodsB
wondarfullBwondarB
womdarfullBwokenBwnevrBwnBwksBwkendBwizzleBwitotBwitinBwitherBwithdrawBwishedsBwisdomBwire3netBwiproyouBwiproBwinterstoneBwinningBwinnersclubBwingsBwinedBwindyBwindowBwin150ppmx3age16BwildlifeBwildBwikipediacomBwihtuotBwifiBwifesBwickedBwiB	whilltakeBwhileampBwherresBwherebtwBwhereareBwhensBwhenreB	wheellockBwheelBwhassupBweåõveB
weû÷reB
weû÷llBwetherspoonsB	westshoreBwestonzoylandBwestlifeBwesternBwestBwesleysBwesleyBweretheBwerentB	wereboredBwendyBwelldaBwelcomesBweiyiBweirdoB
weightlossB
weighthahaBweighedBweekstopBweeddeficientBweeBwedsBweddingfriendBweddingBweddinB
websitenowBwebpageB
web2mobileBweaselsB	weaselingB
weaknessesBweaknessBwcBwaythisB
way2smscomBwattsBwatingBwatevrBwatchinBwatchesBwastingBwastedB	wasnåõtBwashobBwarrantyBwarningBwarnedBwarmingBwaqtB	want2comeBwan2BwalsallBwalletBwallBwalkinB	walkaboutBwalikingB
waitshouldBwaitedBwahtBwahleykkumsharingBwahayBwahalaBwadebridgeiBwadBwaaaatBwa14Bw4Bw1t1jyBw14rgBw111wxBvtiredBvsBvpodBvoucherstextBvomitingBvomitinB	volcanoesBvoilaBvivaBvitaminBvisitorsB	visitneedBvisitingBvisionsmscomBvirginsBvirginBviolenceBvillBvideosounds2B
videosoundBvideopicBvidBvictorsBvibratorBvibrateB	verifyingB	venugopalBvenaamBvellyB	velacheryBvehicleBveggieBvatianBvatBvasaiBvarguBvarayaBvaluesBvaleBvaiBvaguelyB	uûªveBuxxxxBuvBuspsBusnoBusmleBusletBusceduBuscBurmomiB	urinationBurgoinB	urfeelingBupyehBuptownBupstairsBupsetiBupsetBupsBuppingBuploadBupgrdcentreBupdatBupd8BunusualBunsubscribedB	unsoldnowB
unsoldmikeBunniBunnecessarilyBunmitsBunitedBuniqueiBuniformBunhappyBunfortuntlyBunfoldsB
undrstndngB
understoodBunderstandingBuncountableBunconsciouslyBunconsciousBunconditionallyBuncomfortableB	unclaimedBunbelievableBunB	ummmawillBumB
ultimatelyBuinBuhhhhrmmBugadiBucallBubanduBtypicalBtypesBtypelykBtxtxB
txtjourneyBtxtauctiontxtB	txt250comB
twitteringBtwiggsBtwentyBtwatBtvlolBturningBturnedBtunjiBtuneBtundeBtulBtuiBtueBttsBtshirtBtscs087147403231winawkage16BtsBtrywalesBtryinBtruthfulBtruroBtruckBtroubleshootingBtronB	triumphedBtripsBtrialBtrendsBtrekBtreblesBtreatedB	travelingBtravBtraumaBtrashB	transportB	transfredBtransfrBtransferredB
transferedBtransferaccBtransferBtranscribingBtrainsB	trainnersBtrafficB
traditionsBtrackmarqueBtpBtoxicBtowndontmatterBtoughestBtotesBtossBtoshibaBtosendBtorrentsBtorBtoppolyBtoppedB
topicsorryBtootsieB
toothpasteBtoooB	tookplaceBtonitethingsB
tonitebusyBtonghtB
tonesreplyBtomorwBtomorrowcallBtomorroBtomocantBtomeandsaidthisBtoledoBtoldsheBtolBtokenBtodoBtodayheBtodaybutBtobaccoB
tmorrowplsBtmobileBtmBtizBtisscotayseerBtirupurBtirunelvaliB
tirunelvaiBtiringBtimingsBtiminBtimeslilBtimehopeB	timedhoniBtimBtiimeBtigressBtightlyBtightBtigerBtiempoBthyBthusBthuglyfeBthsBthrurespectBthrowsBthrowingBthrillerBthrewBthreatsBthreadB	thousandsB	thoughtsiBthoughtsBthnxBthnqBthmBthkinBthirunelvaliBthinlBthinkedBthinghowBthinBthiaBtheyllBthewendB
theseyoursB	thesedaysBtherexxBtherereBtheregoodnightBthenwillBthempBthemobyoBthemedBthekingsheadBthedailydrawBtheaterBtheacusationsBthe4thBthatnowBthatllBthatdontBthatdBthat2worzelsBthasaBthanxxxBthanx4BthankyouBthanks2B
thangamitsBtgxxrzBtextsweekendBtextinBtextbookBtextandB	text82228BtexBtescosBterryBterrificBteresaBtensionBtensedB
tendenciesBtemperBtempB
teluguthtsBteluguBtelphoneBteletextB
telephonicB	telephoneBtejuBteethisBteenagerBtechnologiesBteaseBtearsB	teacoffeeBteachingBtddnewsletteremc1coukBtcscBtcllcBtayseertisscoBtaylorsBtaylorBtaxtBtaxlessBtaxesBtaughtBtauBtattoosBtataBtasBtarotBtapeBtapBtallentBtallBtalksBtalkinBtalkedBtalentsB	takenonlyBtajBtaiBtahanBtaggedBtagBtadaaaaaBtactlessBtactfulBtacosBtackleBtabletBtablesBtableBt91BsystemsBsyriaBsympatheticBsyllabusBswitchBswimsuitBswimmingBswellB
sweetheartBsweatterBswearBswayBswatchBswapBswannBswalpaBsw73ssBsw7BsvcBsutraBsuryaB
surroundedBsurnameBsurgicalBsupremeBsupportveryBsupportsBsuppliesB	suppliersBsuposeBsuplyB	sunscreenBsunroofBsunocoB	sundayishBsun0819BsumthinBsummonBsummersBsum1BsullivanBsuitsBsuiteBsugardadBsuganyaBsufferBsuckersBsuckerBsuccessB
subtoitlesBsubscritionBsubscriptn3gbpwkBsubscriptionsBsubscriptionB	subscribeB
submittingB	submittedBstylistBstylingB	stupiditsBstuffedBstuff42moroBstudynBstudioBstudentfinancialB	studdyingBstuckBstubbornBstsB
strugglingBstronglyB	strongbuyBstrokesBstripsBstripesBstrikeBstrictBstrewnBstretchBstressedBstressBstreetshallBstreamBstrangersawBstrangeBstrainBstr8BstormingBstoriesB	storelikeBstoptxtstopå£150weekBstoptxtBstopsBstopcostBstopbcmB	stop2stopBstop2BstoolBstonersBstockedB
stillmaybeBstifledBsthBstewartsizeBsterlingBstereophonicsBstereoBsteedB	steamboatBstealingBstealBsteakB
stdtxtrateBstaysBstatusBstationsB
statementsBstatedBstashBstarvingBstartiB	starshineBstarringBstaringBstapatiBstandsBstalkingBstalkBstairsBstagwoodB)staffsciencenusedusgphyhcmkteachingpc1323BstadiumBstableB	ssnervousBssindiaBssiBsryBsrtBsrslyBsrsBsquishyBsquidB
squeeeeezeB	squattingBsq825BspysBspunoutBsprwmBsprintBspreadsheetBsppokBspouseBspottyBsposeBsportsxBspoonsBspontaneouslyBsponsorsBspoiltBspoiledBspoilBsplleingBsplendidBsplashmobileBspiritBspileBspiffingBspellingBspelingBspeedingB
speechlessBspecsBspecificB
specialiseBspecialisationBspecialeBspatulaBsparkBspanishBspainB
spageddiesBspacesBspB
souveniersBsoupB
soundtrackBsoundingBsosoBsortsBsortingB	sortedbutBsortedBsortaBsorryiBsorrowsiBsophasBsooooBsoooBsoonlotsBsooncBsooB	sonetimesB	sonathayaBsomewhrBsomewheresomeoneBsomewhatBsometmeBsometimerakheshvisitorB
somethingsBsomersetB	someplaceBsomeonesBsoladhaBsoilBsochteBsnowballBsnoringtheyBsnogsBsnoB
snickeringBsnatchBsnapBsmsservicesBsmsdBsms08718727870BsmoothlyBsmokinBsmokedBsmithswitchBsmithBsmilesBsmiledBsmidginBsmellBsmearBsmashedBsmartthoughBsmarterB	smartcallBsmartBslurpBslowingBslowerBslovelyBslobBslo4msgsBsloBslipperyBslipBslightlyBslidingBslideBslicesBsleepyB
sleepsweetBsleepingwithB	slaaaaaveBskirtBskipBskillsBskillgame1winaweekB	skillgameBskilgmeBskallisBsk3BsizeBsivaBsittinBsitterBsitllBsirjiiBsipsBsipBsinkBsingingBsinduBsimulateBsimonwatson5120BsilverBsillyBsilenceBsiguviriBsigninBsignificantBsignificanceBsignalBsighBsifBsicomoBsicBshyBshutBshunBshrinkBshrekBshracomorsglsuplt10BshowroomscityBshowersBshovingBshoveBshoutingB	shouldersBshoulB	shortcodeBshoretheBshoreBshoranurBshoesBshockingBshockBshldxxxxBshldBshjasB	shivratriB	shitstormBshitloadBshitinBshippedBshinyBshiningBshincoBshifadBshhhhhBsherawatBshelvesBsheetBshbBshavedB	shatteredBshapingBshantBshanghaiBshakingBshakespeareBshakeBshakaraB
shahjahansB	shahjahanBshagBshadowBshadesBshBsfromBsfirstBsfineBsfBsexualBsextextukcomBseveralB	seventeenBsettlingBsettingBserverBservedB	septemberBsensibleB	senrddnotBsenorBsendsBsenderBsemiBselflessnessBselfishBsehwagBsehBsefBseesBseenoBseekingBseekersB	secretaryB	secondaryBseatBsdryb8iBsdB	sculptureBscrumptiousBscrewdB
scratchingB	scratchesBscrappyBscoringBscoresBscorableBscoldBscienceBsceneryBscenarioB	scarcasimBscammersBscBsayyBsayinBsayaskBsatìBsatsoundåõsB
satsgettinBsatloveBsatisfyBsathyBsatanicBsariyagBsaristarB	sarcasticBsaraBsarBsapnaBsaoBsanthaB	sankrantiBsangBsamusBsamesoB
sambarlifeBsamanthaB	samacharaBsalespeeBsalesBsalamBsakeBsafetyBsafelyBsaeedB	sacrificeBsackedB
sachinjustBsacBs89BryderBryanBrvBrupaulBrunningletsBrummerBrulesBruleBruiningBruinBrugbyBrudiBrubberBrubBrtoBrtkingBrstmBrrBrplBrp176781BroundsBroughBrosesBrosBroommateBronsB
romcapspamBrolledBrolesBrodgerBrodds1BrobsBrobBroadsrvxBrisksBrinuBringtonegetBringsreturnBringingBrimacBrileysBrightsBrightlyBrightioBriddenBrgentBrgdsBrg21B	rewardingBreverseBreunionB	returningBretiredBretardBresumeBresubmitB	resubbingBresubBrestuwudBrestrictionsB	restockedBrestockBresponsibleB
resolutionBresloveBresizingB	residencyBresetBreservesBreservedBreserveBreservationsBrequiresBrequirementsBrepublicBreppurcussionsB	replys150BreplybeB	replacingBrepentBrepairsBrepairBrenewalBremovalBremindsBremindedBremembrsBremembrB	rememberiBrembB	reltnshipBrelievedBreliantBrelaxingBrelaxB	relativesBrelationBrelatedBrejectedB	regrettedBregretBregistrationBregBrefundedthisBrefundB	refreshedBreformatBreflexB
reflectionB
referencesBredredBredimB
redeemableB	recyclingBrecoveryBrecordsB
recognisesBreckonBrecieveBrechargerakheshB	rechargedBrechargeB	receptionB	receivingBreceiveaBrecdthirtyeightBrecBrebtelBrebootBrealizesBrealizedBrealisedBreadyallB	readinessBreadersBreactingBreacheBrctBrcdB	rcbbattleBrawringBraviyogBratioBrapingBrangeBrandomlyB	randomllyBralphsBrakshaB	rajnikantBrajiniBrajBraisedBraidenBraelBraedBracalBr836BquizzesBquizwinBquizclubBquietBquesBqueBqlynnbvBqingBpå£399Bpx3748BpuzzlesBpuzzelesBputtinBpussyBpushesBpushBpurseBpurpleuBpuraBpunishBpunchBpumpBpullsBpullingBpullBpudungaBpublishBpthisBpt2BpsychologistBpsychicBpsychiatristBps3BprovinceBproviderBproverbBprosBpropsdBpropsBproposeBpropertyBproperlyBprooveBproneBpromptsBpromptlyBpromoBpromisedB	prominentBprollyBprojectsBprogressBprogramsBprofilesBprofileBprofessionalBproductsBprodsBprocessnetworkingB
processitsBprocessexcellentB	processedBprobthatBproblumBproblemiBproblemfreeB
problembutBproblematicBproBprizetoB
prizeswithBprizesBpriyaBprixB
priscillasBpriorityBpriorBprintingBprinterBprinceBpriestBpricesoBpricesBpreviewsBpreventB	pretsovruBpretsorgintaBpretendBprestigeBpressureBpressiesBpresleysBpresenceBprescriptionBprescripitonB
prepaymentBpremiumBpremaricakindlyBpremB
predictionB
predictingBpredictBprebookBpreBprayingBprayersBprashanthettansBprasadBprapsBprakeshBpraisesB
practisingB	practicumB
practicingBpractBprabuBppt150x3normalBppm150Bpple700B!poyyarikaturkolathupalayamunjalurBpoursBpouredBpoundedBpouchBpotterBpotatoBpostsB	postponedB	posterodeBpostalBpossiblyBpossiblehopeBpossessivenessB
possessiveB	positionsBposibleBposhBposeBportalBporridgeBpoppingBpopcornBpopB
poortiyagiBpoopBpookieB
ponnungaleBpongaldoBpolycBpoly3Bpoly200pBpokkiriBpokingBpokerBpoetBpocyBpocketsBpoboxox36504w45wqBpobox365o4w45wqBpobox12n146tf150pBpobox12n146tf15Bpobox11414tcrw1Bpobox1BpmtBplyrBpluralBplumbingremixedBplumbersBplsiB	ploughingBpleassssssseeeeeeBpleasantBplayngB	playerwhyBplattBplateBplannedBplanetiBplaidBplacenoB	placementBplacedBplBpixelsBpinkuBpimplesevenBpillowsBpileBpiggyBpierreBpictxtBpictureBpiahBphonedBphone750BphoenixBphneBphilosophicalBphilBphewsBphdBphasingBpharmacyBph08704050406Bph08700435505150pBpetrolBpeteynoiåõmBpeteyBpeteisBpestB
personmeetB
personallyB
person2dieB
perseveredB	perpetualBpermissionsB
permissionB	permanentBperipheralsBperilBperhapsB	performedBperformanceBpercentagesBpeoplesBpenisBpendingiBpendingBpenBpeiBpehleBpeepsBpearsBpeakBpdatenowBpaypalBpaymentsBpaymentBpayedBpaybackBpayasamBpattysBpattyBpatternBpathsBpathayaBpathBpatentBpasstheyBpassionBpassableBpasesBparuBpartsBparticularlyB
particularBparticipateBparkinBpark6phB	parisfreeBparisBparentsiBparchiBparanoidB
paragraphsBparagonB	parachuteBparacetamolB	paperworkBpapersBpapaBpapBpansyBpanrenBpanicksBpanicBpandyB	panasonicBpalmBpaleBpainingBpainhopeBpaiBpadhegmBpacksBpackingBpackalsoBpacesBoyeaBowoBownyouveBownedBowlBoweBovrBovertimeBoverheatingBoverdoseBoveraBovarianBouttaBoutstandingBoutreachB
outrageousBoutl8rBouthaveBoutgoingBoutforBoutfitBoutbidBourssoBotsideBoscarBorsBornoBorigB	organizerBorganiseBoreosBoreBorcBorangesBorangeiBoralBor2optouthv9dBoptinB
optimisticBoptedBoppsBopposedBopportunityplsBopportunityallBoperateBopeninBopenedBooooohBooohBoohBonumBonlydonB	onlybettrB	only1moreBonluyB	onlinewhyBonitBonetaBonedgeBonduBonamBolympicsBolowoyeyBololBollubutBolageBokvarunnathuBokthenwhatsBoktakeBokokBokmailBokiesBokeyBokdenBoilBoiBohasB	ogunrindeBofsiBoficegotBoficeBofflineBofficewhatsBofficethenampetBoffertheBofferingBofferedB	offcampusBoffcB	odalebekuBoctoberBoclockBoceandBoccurBoccupyBoccupiedBoccasionBoblisingatelyB	objectionBobeyBobeseBobedientBoathBo2coukgamesBnzBnyusaBnytec2a3lpmsg150pBnysBnvqBnvmBnverBnutterBnusBnursesBnurseryBnumbersoBnuerologistBnudistBnuclearBntwkBntswtBnteBnriBnowuseBnowtcsBnowstillBnowskyBnowsavamobmemberBnowreplyBnowonionBnowcanBnowadayslotBnowadaysBnow4tBnoveltyBnotixiquatingBnotifiedBnotificationsBnothisBnothinBnotebookBnoteBnosyBnoshBnorthamptonB	nordstromBnoraBnookiiBnonenowhereBnoncomittalBnonBnolistened2theBnokiasB	nokia6650B	nokia6600B	nokia150pBnojstBnoisyBnoheBnofewBnobutBnobleBnobbingBno83355Bno81151Bno434BnitzBnitrosBnite2BnipostBninoBninishB
nikiyu4netBnikeBnigroBnigpunBnightsexcellentBnightnobodyBnightersBnigBnickeyBnickBngageB
newspapersBnewshypeB
newscasterBnewsbyBnewquaysendBnevilleBneveringBnetworksBnetnoBnethingBnetflixB	netcollexBneshanthtelBneo69BnelsonBneitherB	neighborsBneighborBnegletBneglectBneedyBneedleBneedingBneededsalaryBneededBneedaBneckB	necessityB	necessaryBnecessarilyBnearerBnearbyBnavBnauseousBnatwestB	natuitionBnaseebBnasdaqB	narcoticsBnannyBnangeBnanBnammannaBnamemyBnalliBnagarBnaalBmysB	myparentsBmymobyBmylifeBmwahsB	mutationsBmutaiBmusicalBmushyBmushBmusBmuraliBmundheBmultisBmudyadhuBmuchandBmthsBmssumanBmsnBmsgweBmsgsubscriptionBmsgsdB	msgrcvd18Bmsg150pBmsBmrurBmoviewatBmotiveBmoseleyBmorphineBmorningsBmoraloneBmoonsBmonthnotBmonthlysubscription50pmsgBmonsterBmonosBmonocBmonl8rsxBmonkeyaroundBmonkeyBmonkeespeopleBmoneyasBmoneeppolumB	mondaynxtBmolestedsomeoneB	mojibiolaBmofoBmodulesBmoduleBmodlB	modelsonyBmobsicomBmobsBmobcudbBmmstoBmmmmmmBmlBmk45BmittelschmertzBmitsakeBmistBmissyBmissunderstdingBmisssBmissionsB
missionaryBmisscallB	misplacedBmirrorBminusBmintBminstandBmins100txtmthBminimumB	minecraftBmineallBmindsetbelieveBmindedBminapnBmiltazindgiBmillionsBmillersBmilesBmiiiiiiissssssssssBmiddleBmiaBmiBmfBmessedBmessagestextBmessBmesheBmerememberinBmeowdBmeowB
mentionnedBmentionedtomorrowBmentionBmentalBmeneedBmemoryB	memorableBmelodyBmelniteBmelikeBmeiveBmeimBmeetsBmeetitzBmeetinsB	meetgreetBmeeBmedsBmedontBmedicineBmecauseBmeatBmeasureBmeareBmeaninglessB
meaningfulBmcrBmcaBmcBmbBmaximumB	max6monthBmatthewBmattersB	mattermsgBmatricBmatraBmathematicsBmatheBmathBmatchedBmatBmastersBmasteriasteringBmassagetieposBmassagesBmaryBmarsmsBmarriageprogramBmarrgeremembrBmarleyBmarkingB	marketingBmarketBmargaretBmaretareB	maraikaraBmapsBmanualBmaniacBmanegeBmandyBmanageBmallikaBmallBmaleBmalarkyBmalariaBmakinBmakiingBmainBmagicalsongsblogspotcomBmagicBmaggiBmagBmadthenBmadstiniBmadokeBmadoduBmadamregretBmadamBmad2Bmad1BmadBmacsBmackBmachinesBmachianyBmachaB	macedoniaB
maangalyamBmaaaanBm8sBm8Bm6Bm39m51Bm221bpBlykBlyingBlvBluxuryBluxBluvsBluvdBlutonBlunchyouB	lunchtimeBlulBluksBlucyxxBlucozadecoukwrcBlucozadeBluckilyBlttrsB	ltemailgtBls278bbBls1BlowerBlowcostBlowBlovinglyBlovinBloverakheshBlovejenBloveableBlovBloungeBlotwillBlottaBlotslyBlosersBlordBloolBlookedBlololoBlolniceBlokoBlogosmusicnewsBlogosBlogoffBlodgingBlodgeBlocksBlockBloansBlnlyBlmaoniceBlmBlkpobox177hp51flBlivedBlistnBlistening2theBlistenerBliquorBlipoBlipBlionsBlionpBlionmBlionBlinuxBlinksBlingoBlingerieBlinedBlindsayBlimitsBlimBlilBlikingbeBlikeyourBlightlyBlightersBliftingBliftedBlifethisBlifeisBlifebookBlifeandBliesBlickB
libertinesBlevelBleuBlesserBlesBleonasBleonardoBleoBlennonBlengthBlekdogBlegsB	leftoversBlearnedB
leannewhatBleagueBleadsB
leadershipBleBlccltdBlayingBlaxinorficatedBlawBlaurieBlaundryBlaughsBlatestsB	latelyxxxBlatelyBlateiBlastingBlastestBlasagnaBlarkBlargeBlaraB	lapdancerBlapBlanguageBlaneBlandlineonlyBlambdaBlakhsBlagerBlagBladenBlackingBlacBlaborBla32wuBl8BlBkyouBkvbBkuchBkuBktvBkthenBkorteBkorliBkoreanBkorcheBkonwBkodthiniBkodstiniBkochiBkoBknowyetundeBknowwaitBknowthisBknownBknowingBknowheBknockingBknickersBkneesBkl341BkkyesterdayBkkwhenBkkwhatBkkitsBkkgoodstudyBkkfromBkkareBkkapoBkkanyB	kkadvanceBkittyBkissingBkisiBkingdomBkimBkilosBkidB
kickboxingBkicchuBkgoodBkgiveBkeywordBkerisBkentBkensBkeluviriBkeepsBkeenBkeBkdoBkbutBkatexxxBkaroBkaraokeBkanowhrBkanoilBkanoBkanjiBkanaguBkamaBkalstiyathenBkallB
kalisidareBkalainarBkaitlynBkaiezBkaajBk718BjustifyBjustbeenBjurongBjunnaBjungleBjulesBjuicyBjuanBjsutBjstBjsBjpBjotBjosB
jorgeshockBjontinBjonesBjonBjollyBjoiningB
joinedhopeBjohnåósoundsBjogBjodBjobsBjoannaBjjcBjideBjiayinBjiaBjezBjetBjerseyBjerryBjeriBjeremiahBjenneBjellyBjeeteyBjeBjdBjaykwonBjayaBjasonBjapaneseBjapBjanxBjaninexxBjanarigeBjamzB
jamstergetBjamstercoukBjamsterBjaklinBjacksonBjackpotBjacketBjackBjaboBj89BiåõveBiåõmBiåõllspeakBiåõdBiûªmBizBiwasmarinethatåõsBiwanaBivatteBitåõsB	itû÷sBitxtBitwhichturnedintoBituBittbBitried2tellBitorBitnaBitmayBitmailBitllBitletBitleaveBitjustBithisBiterBitemsBitcouldB
isnû÷tB
isnûªtBishtamayoohappyBiscomingBisareBisaiahdB
irritatingB	irritatesBironingBironBireneereBiraqBiphoneBipadsBipaditanBipBiouriBinvolveBinvoicesBinvntedBinvitingB
invitationBinvestigateBinvadersBintrudeBintrepidBintimateBinthaBinterviwB
interviewsBinternetserviceB
intentionsB	intentionBintendBinstantB
installingBinstallationBinstallBinstB
inspectionBinshaBinsectsBinpersonationBinperialmusicBinourBinnuBinnocentBinnerBinludeBinkBinitiateBingredientsBingBinfrontBinfraBinfovipclub4uBinfotxt82228coukBinformedrgdsrakheshkeralaBinforingtonekingcoukBinfernalBineverBindyarockscomBindividualtimeBindependenceBindeedBindeB	incorrectBincommBincludesBin2BimprtantBimproveBimpressivelyB	impressedBimpressBimposterBimposedBimportantlyBimmunisationBiminBimfBimaginationmyBimagesBimageBilolBiknowBiknoBijustBignorantBifinkBiffBiduBidpsBidcBiconBickyBicicBicchaBicB
ibuprofensBibmBibhBiasB"hypotheticalhuagauahahuagahyuhaggaBhypertensionBhvaeBhusseyB
hurricanesBhuntingBhuntBhunonbusBhunnywotB	hunnyhopeBhunksBhungoverBhundredsB	hundredheBhundredBhumansBhumBhuimingBhugsBhughBhugeBhubbyBhuaiBhttpwwwetlpcoukrewardBhttpwwwbubbletextcomBhttpwapBhttpimgBhttpgotbabescoukBhttpdoitBhttpcareersBhrishiBhp20BhpBhowveBhowreBhowdyBhowdaB	houseworkBhousefulBhourishBhottestBhotmixBhotelsB	hostbasedBhorseBhorniestBhorBhopesBhopefulB	honeymoonBhonestyBhonestlyBhonestBhomeloveBhomeleftB	homecheckBhomebutBholyB
hollalaterBholeBhogoloBhogliBhogidhechinnuBhockeyBhmv1BhmmmyBhmmmkbutBhmmmhowBhmmbadBhmeBhlpBhittngBhitteranywayBhistoryBhimthenBhimsoBhillsboroughBhillsBhilariousalsoBhighestBhidingBhideBhictsBhhahhaahahahBheåõsBheygreatBhexB
hesitationBhesitateBherwillBherwhoBhersheBheronBheroiBhermyBhererememberBhepBhenBhelpfulBhelp08714742804Bhelp08700621170150pBhelp08700469649BhelloyouBhellooooBhellodrivby0quitBheeheeB	heartsnotBheartsB
heartheartBhearingBhealerBhealBheadûB	headstartBhddBhclBhaventcnBhavaBhaulBharryBharriBharishsBhariBhardestBhappilyBhappierBhappeninB	hanumanjiBhanksBhanginBhangerB	handsomesBhandsomeBhandsetBhandleBhandingBhandedBhamsterBhamperBhallaBhallBhalf8thBhairdressersBhailB	hahahauseBhadyaBhadntBhackBhabitBhabbahwBhB
gymnasticsBgvingBgvBgurlBguitarBguiltyBguildBguessinBguessesBgudniteBgudni8BgudkBguaBgsBgrumpyBgrrBgrownBgrowingBgrowB
groundamlaB	groovyingBgroovyBgrinuleBgrinderBgriefBgreetingBgreeniB	greatnessBgreatbyeBgrayBgravelBgraveBgratefulBgrantedBgraniteBgrandmasBgramsB	grahmbellBgraceBgrabBgr8funBgowerBgowaitBgottoBgotanyBgotaBgoshB
gopalettanBgoodwhenBgoodtimeoliBgoodsBgoodnoBgoodniteBgoodmateBgoodiesBgoodfineBgoodeveningBgoodenvironmentBgooddhanushB
gonnamissuBgoneuBgonBgoldenBgoin2bedBgogglesBgodtakenBgobiB	goalsteamBgoalBgnBgmwBgmBgloryBgloriousBglobalBglassBglasgowBgivBgistBgirlieBgirlfrndBgirldBgiggleBgiftsBgiftedBgibeB
ghodbandarB
getzedcoukBgetsleepBgermanyBgepBgentleBgeiBgeelaterBgeeeeeBgdtheBgdnowBgbpweekBgbpsmsB	gbp5monthB
gbp150weekBgbpBgazeBgayleBgaugeBgateBgariBgarbageBgandhipuramBgamestarBgalileoBgainedBgaBg2BfwiwBfusionB	furnitureBfunsBfunkyBfundamentalsBfunctionBfulfilBfuelledBfudgeBfucksBftBfrwdBfrostyBfrontBfrogBfroBfrntBfrndzB	frndsshipBfrndshpBfringBfriendshipsB'friendshipmotherfatherteacherschildrensB
friendsareBfridgeB
fridayhopeBfretBfreshersBfreshBfrenchBfreesendBfreeringtonereplyB	freenokiaBfreemsgfeelinB
freemsgfavBfreemessageBfreelyBfreekBfreedomBfredericksburgBfreakyBfreakedB
franyxxxxxB	frankgoodBfractionBfpsBfoxBfourthB
forwardingBforumsBformatBformalB	forgottenBforgivenBforgiveBforfeitBforcedBfootyBfootieBfootblcrcktBfootballBfootBfoolsBfooledBfonesBfondlyBfondBfollowinBfolksBfoleyBfmyouBflyngBflyingBflyBfluteBflungBfluidsBflowersBflowBfloatingBflirtingBflippinBflipBflimBfliesBfletcherBfleaBflakyBflakedBfixesBfishheadBfiresareB	fireplaceBfirefoxBfireBfinnsBfinkBfinestB
fineinshahBfindsBfindingB	financialBfinanceBfinaliseB
filthyguysBfilthBfillingBfilledBfiguringBfightsBfiftyBfifthBfifaBfidalficationB
ffffffffffBfffffBfetchingBfestivalBfengBfellowBfeesBfeelingwaveringBfedexBfeatheryBfavBfaultfedBfaultalBfattyBfatedBfastplsBfastestBfarmBfansBfamousBfamamusBfalsBfallenB	falconerfBfalBfakeBfaithBfaintingBfailsBfaglordBfaggyBfadedBfactsBfactoryBfaberBfabBeå£ndBeyeBexwifeBextremeBexterminatorBextB
expressionBexpressBexposesB	explosiveB
explicitlyBexpiryBexpiredBexpertB
experimentB	expensiveBexpectedBexpBexmpelBexistB
exhibitionBexhaustBexerciseBexeBexcusesBexcusedBexcitedBexamsBewBevrydyBevreyBevrBevoBevilB
everywhereB	everytimeB	everythinBeverysoB	everyonesBeveryboyB	everybodyBevery1BeveningsBeveiBevebB
evaporatedB
evaluationB
eurodisincB	ethnicityBeternalB	establishBeseB	escalatorBeruptBerukuBerrorsBerrBermBericssonBericsonBerBenvyBentropicationBentrepreneursBentirelyBentireBentertainingB	entertainBentersBenketaBenjoyinBenginBengalndBengagedBengBendowedBencBenamousB	employersBemployeeB	emigratedB	emergencyBembassyBembarrassedBembarassingBemailedBelvisBelloBelliotBelephantBeldestBelayaBelamaBelaineBelaboratingBelBeightishBeighthBeh74rrBegoBeggspertB	eggpotatoBeggBegbonBeg23gBeg23fBeffectsBeffectBeerulliBedukkukayeeBeducationalBedrunkBeditionBedisonBedhaeBecstasyBeastBeasilyBeasiestBearsBearningBearnBearliestB	earlierweBearB	eachotherBe14BdyingBdwnBdustBduskBdurhamBdurbanBduoB	dungereesBdumbBdufferBdudesBduckingBduchessBdubBdtBdryerBdrvgstoBdrunkenBdrunkardBdrumB
drugdealerBdrpdBdroveBdropsBdrmsB	drizzlingBdrinkpaBdrinkingBdressB	dreamloveBdrawsB
drawpleaseBdramaticBdramastormsBdramaBdrBdpsBdozensBdownstemBdownsBdownonB
downloadedBdoughBdougBdoubtB	doubletxtBdoublesB
doubleminsBdoublefaggotBdosomethingBdoseBdorothykiefercomBdoomsBdonytBdont4get2textBdonnoBdonewantBdolldBdollarBdokeBdointerestedBdoinghowBdoinatBdoggB	dogbreathB
doesnåõtBdoesnû÷tBdoesdiscountshitinnitBdoddaB	documentsBdoctorsBdockBdobbysBdobbyBdobBdlfBdledBdlBdizzeeBdivisionBdivertBdittoB
disturbingBdisturbancemightBdistanceB
dismissialBdismayBdiskyouB	discussedBdisconnectedBdiscB
disastrousB	disastersBdisappearedBdirtB	directorsBdirectorBdippeditinadewB	dinnermsgBdingBdineroBdinedBdineB	dimensionBdileepthankBdigitsBdigiBdifficultiesBdifferbeBdifferBdiffBdietingBdieselB	didnåõtBdidnû÷tB	didntgiveBdiddyBdictBdiceBdiamondsBdialogueBdiBdhaB	devouringBdevilsB	developerB	developedBdeusBdetroitB
determinedB	determineBdetailsiBdetailedBdetailBdestinyBdestinationBdessertB	desperateBdesparatelyB	desparateBdesiresBdesignationBdeserveBdescriptionBdescribeBderpBdereksBderB	depositedBdepositB
dependentsB
dependableB
departmentBdentistBdentBdenaBdemandBdeltomorrowBdelayBdehydrationBdegreeBdefoBdefiniteBdeerajBdeepakBdeductBdeckingBdeckBdecB	dearshallB
dearregretBdearrakheshBdearmeBdeamBdealsBdealfarmBdealersBdeadwellBddBdaywithBdaytimeB	daysì¬nBdayswillBdayssoB	dayexceptBdawnsBdawhatsBdaurgentBdatodayBdataBdasaraBdasB	dartboardBdarlingsBdarkerBdarkBdaoBdangerBdangBdaneBdancinBdancceBdanallaBdanBdammitBdagoodBdadsBdabooksBdabblesBdaalBcystsBcyaBcuttingBcutterBcutieBcutestBcustomBcurtseyBcurfewBcuppaBcuminBculturesBcudntBcuddlingBcuddledBcuddleBcuckBctterggBctterBcttarggBctlaBcthenBctarggBctaggBcstoreBcryingBcrushesBcruisinBcrucifyBcrucialBcro1327B	crisisspkBcriedB
crickitingBcresubiBcreepB
creativityBcreamBcrazyinBcraziestBcravingBcrashingBcrashedBcrashBcrampsBcrammedBcrBcozyBcozsomtimesBcoveragdBcousinB	courtroomB
courageousBcouplaBcountinlotsBcountBcoughingBcoughB	cougarpenBcostumesBcosignB	corvettesBcorruptBcorrectionorB
correctionBcorrctBcorporationBcornwallBcorectBcopingBcopiesBcopiedBcoopedBcookiesBcookedBcookBconvincingjustB
convincingBconvinceB	converterB	convertedBconvenienceBcontrolBcontinueB
constantlyBconsoleBconsistentlyB	consensusBconsBconnectionsB	connectedBconfusesBconformB	configureB
conferenceBconectedB	conditionB
conclusionB	concernedBconcernBconcentrationBconcentratingBconactedBcomuk220cm2B	computersBcomputerlessBcomputationalB
compulsoryBcompromisedBcomprehensiveBcompofstuffBcomplexitiesB
completingBcomplementaryBcomplainingBcomplainBcompassB	companionB	companiesBcommitB
commercialBcommentBcomingtmorowB
comingdownBcomeiB
comedycantBcombinationBcombBcomBcoloursB	collegexxBcollagesB
coimbatoreBcocksuckersB
coccooningBcocacolaBcoaxingBcnlBcmBclueBclub4mobilescomBclub4BcloudBclothBclosingdate040902BclocksBclipBcliffsBcliffBclearingBcldBclaypotB
classmatesBclassicBclassesBclashBclarificationBclaimsB	claimcodeBclBcitylinkBcitizenBchuckinBchristmasmerryB
christiansBchristBchrgd50pBchosenBchoresBchordsBchoicesB	chocolateBchkBchipBchiongBchinkyBchinchillasB	chinatownB	chillaxinB	chikkuwatBchikkusimpleBchikkuilBchikkugoingBchikkudbB	chikkualiBchikB	chickenedBchgsBchezBcheyyamoandBchestBcherthalainBchequeBchennaiiBchefBcheesyBcheeryBcheeredBcheekBcheckupBcheckinB
checkboxesBcheatingBcheatBchatterB	chat80155BchaseBchartsBchartBcharmingBcharlieBchapsBchannelBchangesB	champneysBchamplaxigatingBchampBchallengingB	challengeBchadBchachiBcertificateBcerealsBcerBcenturyBcensusBcelebrationsB
celebratedBcelebBcedarBcdgtBccnaB	cc100pminBcaveboyBcaveBcausesB
categoriesBcasualtyBcastBcasingBcashedBcartonsBcarsoBcarsBcarryinBcarryBcarparkBcarolineBcarlosllBcarlieBcarenteBcaredB	careaboutBcardinBcardiffB
captainingBcantdoBcanntBcanloveBcandontB	cancelledBcanaryBcanalBcameravideoBcalmBcallså£1minmobsmoreBcallonBcallingforgotBcallinB	calldroveBcallbackBcall2optoutyhlBcall2optoutn9dxBcall2optoutlf56Bcall2optoutj5qBcall2optoutjBcall2optoutf4qBcall2optout4qf2BcalisBcalicutBcaliB
calculatedBcakesBcageB
bû÷hamBbyåóleafcutterBbyatchBbx420BbxBbuzzzzBbuyersBbuyerBbuttonsBbuttingB	buttheresBbusyiBbustyBbusinessBbusetopBbus822656166382BburntBburnsBburnBburialBburgundyBbunkersBbundleBbullBbuildBbuffyBbuenBbuddysBbsnlBbruvBbrumBbruceBbrowsinBbrowseBbrownieBbrowniBbrothersBbrothasB	broadbandBbroadBbritishBbrinBbrilliantlyBbrilliant1thingiBbrightenB
bridgwaterBbridgeBbribeBbreezeBbreatherBbreathe1BbreakingBbreakinB	breakfastB
breadstickBbreadBbrdgetBbravedBbratsBbrasBbrainyBbrainsB	brainlessBbrainBbpoB	boyfriendBboyfBbox61m60Bbox434sk38wp150ppm18B
box42wr29cBbox420Bbox403Bbox39822Bbox385Bbox334sk38chBbox334Bbox326Bbox245c2150pmBbox177Bbox139Bbox1146BbowlsBbowaBboutxxBboughtåóbraindanceåóaBbottomB	botheringBbootydeliousBbootyBbooooB	bookshelfBbookmarkBbookingBboltblueBbolloxBbold2BbognorBboggyBboardBblueuBbluetoothhdsetBblownBblowBbloombergcomB	bloombergB
bloodbloodBblokesBbloggingBblogBblockedBblockBblimeyB	blessingsBblessgetBblessBbleakBblastinBblanketsBblanketBblankedBblackimBblackandBbkBbitsBbitesB	birthdateBbirthBbiroBbiolaBbiloBbillsBbilledBbikeBbiatchBbianB	bhayandarBbforeBbeyondBbettersnBbettaBbethBbetaBbestrplyBbestcongratsBbenefitsBbeneathBbendBbelovedBbelongsBbelligerentBbellearlierBbellBbeliveBbehindBbegunBbeginsBbeggarB
beforewentB
beforehandBbeforBbeerageBbeehoonBbedroomloveBbedrm900BbeczBbecausetheyBbecausBbeautifulmayBbeautiesBbearsBbeachBbcumBbcmsfwc1n3xxBbcm4284BbcmBbckBbcBbbsBbbqBbbdpoojaBbbcBbattBbatsmanBbathroomB	basqihaveBbasketsBbashBbaseBbarsBbarredBbarollaB	barcelonaBbarbieBbaoBbanterBbannedukBbannedBbaniB	bangbabesBbangbBbamblingBbamBballoonBbakridBbakraBbaigBbagsBbadrithBbadlyBbackdoorBbackaBbacBbabysittingBbabysitB
babyjontetBbabyhopeBbabiesBbaaaaabeBba128nnfwfly150ppmBb4uBaå£150BaynBayBaxisBaxBavoidsBavoidingBavoBavengeBavbleBavalarrB
availableiBavailaBavaBavBautocorrectBautoBaustBauntsBauntiesBauntieBaugustBaudrieBaudreysBauctionpunjBatyourB
attributedBattractioniBattitudeB	attendingBattenBattachedBattachB	atrociousBatmBatleastBathomeBathleticBasusual1BasusBastoundinglyBastneBasthereBassumedBassholeBaspectsBasksBashleysBasaBarulBartyBartsBartistsBartBarsenalBarrowBarrivedBarrivalB	arrangingBarrBaroundnBarntBarngdBarmeniaBarmandBarmB
arithmeticBarisesBariseBariesB	argumentsBarguingB	argentinaB	aretakingBarestaurantBarabianBaptitudeBaptBaproachBappropriateBapproachingB
approachesBappreciatedBappointmentsBapplyingBapply2BapplespairsallB	applebeesBappendixBappearBappealB	apologizeB
apologeticB
aphexåõsBapeshitBapesBanythingtomorrowBanythinB	anyplacesBanyhowBanybodysBanswrBanotBannoyinB	announcedBannoncementBanniversaryBannieBannaBanjolasBanjieBanimalBangelsB
andrewsboyBandorBanandBanalysisBanalBanaBamyBamxBamsBamritaB
amplikaterBamountBamoreBamongBammoBamkBamigosBamiBambrithmaduraimetB	ambitiousBalwaBalthoughBalternativehopeBalterBalsoorB
alritehaveBalrightokayBalreadysabarishBalongBallsBallowedBallowBalloBalleBallaloBallahrakheshB	allahmeetBalivebetterBaliveBalibiBalianBaliB
algorithmsBalfieBalexsBalertsB	alertfromB
albumquiteBalbumBalaipayutheBakBaiyarBairtelBair1BaigBaidsBaidBahwhatBahtheBaholdBahnowBahhhBahgeeBagreeBagingBagidhaneBagesringBagentsBagentBage16150ppermesssubscriptionB	againcallBagB
afternoonsBafternonBafricanBafghanistanBaffordB	affidavitBaffectionsampBaffairB	adventureBadultsBadrianBadoringBadoreBadmitiBadmitBadminBadewaleB
addressullBaddieBacwicmb3cktz8r74B
activitiesBactiveBactingBactinBactBacsmsrewardsB
acoentry41BacntBacl03530150pmBacknowledgementBacidBachieveBaccumulationBaccordinglyorBaccordinglyBaccordinBaccomodationsB
accomodateBaccommodationBaccidentBaccidantB	accentureBabusersBabroadBaboutasB
abnormallyBabjBaberdeenBabelBabegBabbeyBabBaaoooorightBaaniyeBaahBa30Ba21B9ytB9thB9pmB9funnyB9amB9996B97n7qpB95paxB945B924B9153B
9061100010B900B8wpB8oB8lbB8attractiveB89105B89034B88888B	88877freeB88877B88800B8830B88088B688039skilgmetscs087147403231winawkage16å£150perwksubB88039B87070B863B861B85555B85233B85222B850B84199B84122B84B83435B83370B83332pleaseB83110B83049B83021B830B82324B
82277unsubB816183B81618B81151B81010B80sB80878B8077B80488bizB8027B80160B80155B80122300pwkB7shyB7pmB7ozB	7mahaveerB7amB78pminB
7732584351B7548B730pmB730ishB730B7250B725B700B6wuB	6romanticB	6ramaduthB6missedB6ishB69988B69969B69911å£150pB69888nytB69876B69855B69696B69669B69200B68866B67441233B650B645B62468B6230B61200B60pB6031B600B5yearsB5wqB5wkgB5sankatmochanB5pmB5ishB5fulB5digitalB5903B54B532B528B526B5226B515B505060B4wB4uiB4txtì¼120B4txt120pB4theB4tctxtB4some1B4rowdyB4pavanaputraB4oB4luxB4jxB4gotenB4gotB4giveB4getB4fewB4882B46B450pB450B449monthB449071512431B449050000301B448712404000pleaseB447perB447801259231B447797706009B4403ldnw1a7rw18B44B434B42478B420B41782B415B40533B4041B400minscallB400B3xå£150pwB3unkemptB3uB3ssB
3sentimentB3poundB3opticalB3milesB3marutiB3lpB3gbpB3dbB3daysB3ajB391784B	3680offerB3650B35pB330B32fB32323B3230B311004B310303B3100B31B30thB30aprB300603B2yrB2yearsB2wtB2wksB2waxstoB2untamedB2stoptxtB2stoptxB2stopB2rcvB2pxB2optoutd3wvB	2nitetellB2nhiteB2naughtyB2morroB2moroB2marrowB
2kbsubjectB2hrsB2gthrB2godidB2gevaB2gethaB2exitB2channelB2bajarangabaliB290305B
28thfebtcsB28thB28daysB285B2814032B27603B2703B24mB247mpB241004B230ishB220cm2B22B21mB215B20m12aqB2007B2006B1yfB	1winaweekB1unbreakableB1uB1stchoicecoukB	1st4termsB1pmB1monthB	1mcflyallB1imB1hanumanB1erB1daB	1childishB18yrsB186å£150morefrmmobB1843B181104B169B1680B15pminB150psmsB150prcvdB150ppmsgB150ppmpobox10183bhamb64xeB150ppermesssubscriptionB	150pmtmsgB150pmtB	14thmarchB140ppmB1405B12priceB1225B1205B12000pesB120B1148B1131B1120B10thB10ppmB10am9pmB10amB10803B101megaB1010B100sB100psmsB100603B10000B
0anetworksB09701213186B09111032124B09111030116B09099726553B09099726481B09099726429B09099726395B09099725823B09096102316B09094100151B09090900040B09090204448B09071517866B09066382422B09066368753B09066368470B09066368327B09066364349B09066362220B09066362206B09066358361B09066358152B09066350750B09065989180B09065394973B09065394514B09065171142stopsms08B09065069154B09065069120B09064019788B09064019014B09064018838B09064012103B09063442151B09063440451B09061749602B09061743811B09061743810B09061743806B09061701939B09061701461B09061701444B09061221061B09061104283B09058098002B09058097218B09058097189B09058095201B09058094599B09058094597B09058094594B09058094455B09058094454B09058091854B09057039994B09053750005B09050280520B09050005321B09050001295B09050000928B09050000878B09050000555B09050000460B09050000301B09041940223B08719899230B08719899217B08719181503B08718738034B08718738001B08718730666B08718730555B08718729755B08718726978B08718726971B08718726970B08718725756B08718723815B08718711108B08717205546B08717168528B08715500022B08715203694B08715203677B08715203028B08714719523B08714714011B08714712394B08714712388B08714712379B0871277810910pminB08712404000B08712402972B08712402902B08712402779B08712402050B08712400603B08712400200B08712317606B087123002209am7pmB0871212025016B08712103738B08712101358B08709222922B08708800282B08708034412B08707808226B0870753331018B0870737910216yrsB08704439680tscsB08702840625comukB08702840625B08702490080B087018728737B08701752560B	087016248B0870141701216B08701417012150pB08701417012B08701237397B08700621170150pB08452810071B08450542832B08448714184B0844B0825B08081263000B08006344447B08002988890B08002986030B0794674629107880867867B07815296484B07808B07801543489B077xxxB0776xxxxxxxB07753741225B07734396839B07732584351B0721072B07090201529B07046744435B06B021B020903B02072069400B
0125698789B01223585236B0089myB008704050406B0
??
Const_5Const*
_output_shapes	
:?9*
dtype0	*??
value??B??	?9"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
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
GPU2*0J 8? *#
fR
__inference_<lambda>_95186
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
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
GPU2*0J 8? *#
fR
__inference_<lambda>_95191
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?1
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?1
value?1B?1 B?1
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
;
_lookup_layer
	keras_api
_adapt_function*
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
?

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*
?

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses*
?

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses*
?

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses*
:
Biter
	Cdecay
Dlearning_rate
Emomentum*
C
1
"2
#3
*4
+5
26
37
:8
;9*
C
0
"1
#2
*3
+4
25
36
:7
;8*
* 
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Kserving_default* 
7
Llookup_table
Mtoken_counts
N	keras_api*
* 
* 
jd
VARIABLE_VALUEembedding_3/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_33/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_33/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

"0
#1*

"0
#1*
* 
?
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_34/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_34/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

*0
+1*

*0
+1*
* 
?
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_35/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_35/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

20
31*

20
31*
* 
?
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_36/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_36/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

:0
;1*

:0
;1*
* 
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
0
1
2
3
4
5
6
7*

m0
n1*
* 
* 
* 
R
o_initializer
p_create_resource
q_initialize
r_destroy_resource* 
?
s_create_resource
t_initialize
u_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*
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
8
	vtotal
	wcount
x	variables
y	keras_api*
H
	ztotal
	{count
|
_fn_kwargs
}	variables
~	keras_api*
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

v0
w1*

x	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

z0
{1*

}	variables*
{
serving_default_input_10Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_10
hash_tableConstConst_1Const_2embedding_3/embeddingsdense_33/kerneldense_33/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/biasdense_36/kerneldense_36/bias*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_95014
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename*embedding_3/embeddings/Read/ReadVariableOp#dense_33/kernel/Read/ReadVariableOp!dense_33/bias/Read/ReadVariableOp#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOp#dense_35/kernel/Read/ReadVariableOp!dense_35/bias/Read/ReadVariableOp#dense_36/kernel/Read/ReadVariableOp!dense_36/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst_6* 
Tin
2		*
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
GPU2*0J 8? *'
f"R 
__inference__traced_save_95279
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameembedding_3/embeddingsdense_33/kerneldense_33/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/biasdense_36/kerneldense_36/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumMutableHashTabletotalcounttotal_1count_1*
Tin
2*
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
GPU2*0J 8? **
f%R#
!__inference__traced_restore_95343??

??
?	
B__inference_model_8_layer_call_and_return_conditional_losses_94897

inputsY
Utext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_4_string_lookup_4_equal_y3
/text_vectorization_4_string_lookup_4_selectv2_t	5
"embedding_3_embedding_lookup_94864:	?9:
'dense_33_matmul_readvariableop_resource:	?
6
(dense_33_biasadd_readvariableop_resource:
9
'dense_34_matmul_readvariableop_resource:

6
(dense_34_biasadd_readvariableop_resource:
9
'dense_35_matmul_readvariableop_resource:

6
(dense_35_biasadd_readvariableop_resource:
9
'dense_36_matmul_readvariableop_resource:
6
(dense_36_biasadd_readvariableop_resource:
identity??dense_33/BiasAdd/ReadVariableOp?dense_33/MatMul/ReadVariableOp?dense_34/BiasAdd/ReadVariableOp?dense_34/MatMul/ReadVariableOp?dense_35/BiasAdd/ReadVariableOp?dense_35/MatMul/ReadVariableOp?dense_36/BiasAdd/ReadVariableOp?dense_36/MatMul/ReadVariableOp?embedding_3/embedding_lookup?Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2`
 text_vectorization_4/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_4/StaticRegexReplaceStaticRegexReplace)text_vectorization_4/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_4/SqueezeSqueeze0text_vectorization_4/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_4/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_4/StringSplit/StringSplitV2StringSplitV2%text_vectorization_4/Squeeze:output:0/text_vectorization_4/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_4/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_4/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_4/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_4/StringSplit/strided_sliceStridedSlice8text_vectorization_4/StringSplit/StringSplitV2:indices:0=text_vectorization_4/StringSplit/strided_slice/stack:output:0?text_vectorization_4/StringSplit/strided_slice/stack_1:output:0?text_vectorization_4/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_4/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_4/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_4/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_4/StringSplit/strided_slice_1StridedSlice6text_vectorization_4/StringSplit/StringSplitV2:shape:0?text_vectorization_4/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_4/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_4/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_4/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_4/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_4/StringSplit/StringSplitV2:values:0Vtext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_4/string_lookup_4/EqualEqual7text_vectorization_4/StringSplit/StringSplitV2:values:0,text_vectorization_4_string_lookup_4_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_4/string_lookup_4/SelectV2SelectV2.text_vectorization_4/string_lookup_4/Equal:z:0/text_vectorization_4_string_lookup_4_selectv2_tQtext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_4/string_lookup_4/IdentityIdentity6text_vectorization_4/string_lookup_4/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_4/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_4/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_4/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_4/RaggedToTensor/Const:output:06text_vectorization_4/string_lookup_4/Identity:output:0:text_vectorization_4/RaggedToTensor/default_value:output:09text_vectorization_4/StringSplit/strided_slice_1:output:07text_vectorization_4/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_94864Atext_vectorization_4/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*5
_class+
)'loc:@embedding_3/embedding_lookup/94864*+
_output_shapes
:?????????*
dtype0?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/94864*+
_output_shapes
:??????????
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_6/ReshapeReshape0embedding_3/embedding_lookup/Identity_1:output:0flatten_6/Const:output:0*
T0*(
_output_shapes
:???????????
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype0?
dense_33/MatMulMatMulflatten_6/Reshape:output:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0?
dense_34/MatMulMatMuldense_33/BiasAdd:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0?
dense_35/MatMulMatMuldense_34/BiasAdd:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_36/MatMulMatMuldense_35/BiasAdd:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_36/SoftmaxSoftmaxdense_36/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_36/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp^embedding_3/embedding_lookupI^text_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2?
Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?t
?
B__inference_model_8_layer_call_and_return_conditional_losses_94343

inputsY
Utext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_4_string_lookup_4_equal_y3
/text_vectorization_4_string_lookup_4_selectv2_t	$
embedding_3_94266:	?9!
dense_33_94288:	?

dense_33_94290:
 
dense_34_94304:


dense_34_94306:
 
dense_35_94320:


dense_35_94322:
 
dense_36_94337:

dense_36_94339:
identity?? dense_33/StatefulPartitionedCall? dense_34/StatefulPartitionedCall? dense_35/StatefulPartitionedCall? dense_36/StatefulPartitionedCall?#embedding_3/StatefulPartitionedCall?Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2`
 text_vectorization_4/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_4/StaticRegexReplaceStaticRegexReplace)text_vectorization_4/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_4/SqueezeSqueeze0text_vectorization_4/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_4/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_4/StringSplit/StringSplitV2StringSplitV2%text_vectorization_4/Squeeze:output:0/text_vectorization_4/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_4/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_4/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_4/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_4/StringSplit/strided_sliceStridedSlice8text_vectorization_4/StringSplit/StringSplitV2:indices:0=text_vectorization_4/StringSplit/strided_slice/stack:output:0?text_vectorization_4/StringSplit/strided_slice/stack_1:output:0?text_vectorization_4/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_4/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_4/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_4/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_4/StringSplit/strided_slice_1StridedSlice6text_vectorization_4/StringSplit/StringSplitV2:shape:0?text_vectorization_4/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_4/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_4/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_4/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_4/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_4/StringSplit/StringSplitV2:values:0Vtext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_4/string_lookup_4/EqualEqual7text_vectorization_4/StringSplit/StringSplitV2:values:0,text_vectorization_4_string_lookup_4_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_4/string_lookup_4/SelectV2SelectV2.text_vectorization_4/string_lookup_4/Equal:z:0/text_vectorization_4_string_lookup_4_selectv2_tQtext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_4/string_lookup_4/IdentityIdentity6text_vectorization_4/string_lookup_4/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_4/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_4/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_4/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_4/RaggedToTensor/Const:output:06text_vectorization_4/string_lookup_4/Identity:output:0:text_vectorization_4/RaggedToTensor/default_value:output:09text_vectorization_4/StringSplit/strided_slice_1:output:07text_vectorization_4/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_4/RaggedToTensor/RaggedTensorToTensor:result:0embedding_3_94266*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_94265?
flatten_6/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_94275?
 dense_33/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_33_94288dense_33_94290*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_94287?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0dense_34_94304dense_34_94306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_94303?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0dense_35_94320dense_35_94322*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_94319?
 dense_36/StatefulPartitionedCallStatefulPartitionedCall)dense_35/StatefulPartitionedCall:output:0dense_36_94337dense_36_94339*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_36_layer_call_and_return_conditional_losses_94336x
IdentityIdentity)dense_36/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCallI^text_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2?
Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_dense_33_layer_call_fn_95050

inputs
unknown:	?

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_94287o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_36_layer_call_fn_95107

inputs
unknown:

	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_36_layer_call_and_return_conditional_losses_94336o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
'__inference_model_8_layer_call_fn_94372
input_10
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?9
	unknown_4:	?

	unknown_5:

	unknown_6:


	unknown_7:

	unknown_8:


	unknown_9:


unknown_10:


unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_94343o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_model_8_layer_call_fn_94595
input_10
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?9
	unknown_4:	?

	unknown_5:

	unknown_6:


	unknown_7:

	unknown_8:


	unknown_9:


unknown_10:


unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_94535o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_save_fn_95170
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
?
+__inference_embedding_3_layer_call_fn_95021

inputs	
unknown:	?9
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_94265s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
,
__inference__destroyer_95136
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
'__inference_model_8_layer_call_fn_94782

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?9
	unknown_4:	?

	unknown_5:

	unknown_6:


	unknown_7:

	unknown_8:


	unknown_9:


unknown_10:


unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_94343o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_model_8_layer_call_fn_94813

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?9
	unknown_4:	?

	unknown_5:

	unknown_6:


	unknown_7:

	unknown_8:


	unknown_9:


unknown_10:


unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_8_layer_call_and_return_conditional_losses_94535o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_951318
4key_value_init38717_lookuptableimportv2_table_handle0
,key_value_init38717_lookuptableimportv2_keys2
.key_value_init38717_lookuptableimportv2_values	
identity??'key_value_init38717/LookupTableImportV2?
'key_value_init38717/LookupTableImportV2LookupTableImportV24key_value_init38717_lookuptableimportv2_table_handle,key_value_init38717_lookuptableimportv2_keys.key_value_init38717_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init38717/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?9:?92R
'key_value_init38717/LookupTableImportV2'key_value_init38717/LookupTableImportV2:!

_output_shapes	
:?9:!

_output_shapes	
:?9
?

?
C__inference_dense_36_layer_call_and_return_conditional_losses_94336

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
`
D__inference_flatten_6_layer_call_and_return_conditional_losses_95041

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_35_layer_call_and_return_conditional_losses_94319

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
__inference_restore_fn_95178
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?t
?
B__inference_model_8_layer_call_and_return_conditional_losses_94535

inputsY
Utext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_4_string_lookup_4_equal_y3
/text_vectorization_4_string_lookup_4_selectv2_t	$
embedding_3_94510:	?9!
dense_33_94514:	?

dense_33_94516:
 
dense_34_94519:


dense_34_94521:
 
dense_35_94524:


dense_35_94526:
 
dense_36_94529:

dense_36_94531:
identity?? dense_33/StatefulPartitionedCall? dense_34/StatefulPartitionedCall? dense_35/StatefulPartitionedCall? dense_36/StatefulPartitionedCall?#embedding_3/StatefulPartitionedCall?Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2`
 text_vectorization_4/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_4/StaticRegexReplaceStaticRegexReplace)text_vectorization_4/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_4/SqueezeSqueeze0text_vectorization_4/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_4/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_4/StringSplit/StringSplitV2StringSplitV2%text_vectorization_4/Squeeze:output:0/text_vectorization_4/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_4/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_4/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_4/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_4/StringSplit/strided_sliceStridedSlice8text_vectorization_4/StringSplit/StringSplitV2:indices:0=text_vectorization_4/StringSplit/strided_slice/stack:output:0?text_vectorization_4/StringSplit/strided_slice/stack_1:output:0?text_vectorization_4/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_4/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_4/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_4/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_4/StringSplit/strided_slice_1StridedSlice6text_vectorization_4/StringSplit/StringSplitV2:shape:0?text_vectorization_4/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_4/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_4/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_4/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_4/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_4/StringSplit/StringSplitV2:values:0Vtext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_4/string_lookup_4/EqualEqual7text_vectorization_4/StringSplit/StringSplitV2:values:0,text_vectorization_4_string_lookup_4_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_4/string_lookup_4/SelectV2SelectV2.text_vectorization_4/string_lookup_4/Equal:z:0/text_vectorization_4_string_lookup_4_selectv2_tQtext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_4/string_lookup_4/IdentityIdentity6text_vectorization_4/string_lookup_4/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_4/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_4/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_4/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_4/RaggedToTensor/Const:output:06text_vectorization_4/string_lookup_4/Identity:output:0:text_vectorization_4/RaggedToTensor/default_value:output:09text_vectorization_4/StringSplit/strided_slice_1:output:07text_vectorization_4/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_4/RaggedToTensor/RaggedTensorToTensor:result:0embedding_3_94510*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_94265?
flatten_6/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_94275?
 dense_33/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_33_94514dense_33_94516*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_94287?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0dense_34_94519dense_34_94521*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_94303?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0dense_35_94524dense_35_94526*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_94319?
 dense_36/StatefulPartitionedCallStatefulPartitionedCall)dense_35/StatefulPartitionedCall:output:0dense_36_94529dense_36_94531*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_36_layer_call_and_return_conditional_losses_94336x
IdentityIdentity)dense_36/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCallI^text_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2?
Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_951868
4key_value_init38717_lookuptableimportv2_table_handle0
,key_value_init38717_lookuptableimportv2_keys2
.key_value_init38717_lookuptableimportv2_values	
identity??'key_value_init38717/LookupTableImportV2?
'key_value_init38717/LookupTableImportV2LookupTableImportV24key_value_init38717_lookuptableimportv2_table_handle,key_value_init38717_lookuptableimportv2_keys.key_value_init38717_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init38717/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?9:?92R
'key_value_init38717/LookupTableImportV2'key_value_init38717/LookupTableImportV2:!

_output_shapes	
:?9:!

_output_shapes	
:?9
?	
?
C__inference_dense_33_layer_call_and_return_conditional_losses_95060

inputs1
matmul_readvariableop_resource:	?
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_95014
input_10
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	?9
	unknown_4:	?

	unknown_5:

	unknown_6:


	unknown_7:

	unknown_8:


	unknown_9:


unknown_10:


unknown_11:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2		*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*+
_read_only_resource_inputs
		
*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_94201o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
C__inference_dense_33_layer_call_and_return_conditional_losses_94287

inputs1
matmul_readvariableop_resource:	?
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_34_layer_call_fn_95069

inputs
unknown:


	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_94303o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?	
?
C__inference_dense_35_layer_call_and_return_conditional_losses_95098

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
F__inference_embedding_3_layer_call_and_return_conditional_losses_94265

inputs	)
embedding_lookup_94259:	?9
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_94259inputs*
Tindices0	*)
_class
loc:@embedding_lookup/94259*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/94259*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
C__inference_dense_34_layer_call_and_return_conditional_losses_94303

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?t
?
B__inference_model_8_layer_call_and_return_conditional_losses_94671
input_10Y
Utext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_4_string_lookup_4_equal_y3
/text_vectorization_4_string_lookup_4_selectv2_t	$
embedding_3_94646:	?9!
dense_33_94650:	?

dense_33_94652:
 
dense_34_94655:


dense_34_94657:
 
dense_35_94660:


dense_35_94662:
 
dense_36_94665:

dense_36_94667:
identity?? dense_33/StatefulPartitionedCall? dense_34/StatefulPartitionedCall? dense_35/StatefulPartitionedCall? dense_36/StatefulPartitionedCall?#embedding_3/StatefulPartitionedCall?Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2b
 text_vectorization_4/StringLowerStringLowerinput_10*'
_output_shapes
:??????????
'text_vectorization_4/StaticRegexReplaceStaticRegexReplace)text_vectorization_4/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_4/SqueezeSqueeze0text_vectorization_4/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_4/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_4/StringSplit/StringSplitV2StringSplitV2%text_vectorization_4/Squeeze:output:0/text_vectorization_4/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_4/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_4/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_4/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_4/StringSplit/strided_sliceStridedSlice8text_vectorization_4/StringSplit/StringSplitV2:indices:0=text_vectorization_4/StringSplit/strided_slice/stack:output:0?text_vectorization_4/StringSplit/strided_slice/stack_1:output:0?text_vectorization_4/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_4/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_4/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_4/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_4/StringSplit/strided_slice_1StridedSlice6text_vectorization_4/StringSplit/StringSplitV2:shape:0?text_vectorization_4/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_4/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_4/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_4/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_4/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_4/StringSplit/StringSplitV2:values:0Vtext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_4/string_lookup_4/EqualEqual7text_vectorization_4/StringSplit/StringSplitV2:values:0,text_vectorization_4_string_lookup_4_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_4/string_lookup_4/SelectV2SelectV2.text_vectorization_4/string_lookup_4/Equal:z:0/text_vectorization_4_string_lookup_4_selectv2_tQtext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_4/string_lookup_4/IdentityIdentity6text_vectorization_4/string_lookup_4/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_4/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_4/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_4/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_4/RaggedToTensor/Const:output:06text_vectorization_4/string_lookup_4/Identity:output:0:text_vectorization_4/RaggedToTensor/default_value:output:09text_vectorization_4/StringSplit/strided_slice_1:output:07text_vectorization_4/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_4/RaggedToTensor/RaggedTensorToTensor:result:0embedding_3_94646*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_94265?
flatten_6/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_94275?
 dense_33/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_33_94650dense_33_94652*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_94287?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0dense_34_94655dense_34_94657*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_94303?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0dense_35_94660dense_35_94662*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_94319?
 dense_36/StatefulPartitionedCallStatefulPartitionedCall)dense_35/StatefulPartitionedCall:output:0dense_36_94665dense_36_94667*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_36_layer_call_and_return_conditional_losses_94336x
IdentityIdentity)dense_36/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCallI^text_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2?
Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
E
)__inference_flatten_6_layer_call_fn_95035

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_94275a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
__inference__creator_95141
identity: ??MutableHashTable?
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_nametable_31466*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
?
(__inference_dense_35_layer_call_fn_95088

inputs
unknown:


	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_94319o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?J
?

!__inference__traced_restore_95343
file_prefix:
'assignvariableop_embedding_3_embeddings:	?95
"assignvariableop_1_dense_33_kernel:	?
.
 assignvariableop_2_dense_33_bias:
4
"assignvariableop_3_dense_34_kernel:

.
 assignvariableop_4_dense_34_bias:
4
"assignvariableop_5_dense_35_kernel:

.
 assignvariableop_6_dense_35_bias:
4
"assignvariableop_7_dense_36_kernel:
.
 assignvariableop_8_dense_36_bias:%
assignvariableop_9_sgd_iter:	 '
assignvariableop_10_sgd_decay: /
%assignvariableop_11_sgd_learning_rate: *
 assignvariableop_12_sgd_momentum: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: 
identity_18??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*d
_output_shapesR
P::::::::::::::::::::*"
dtypes
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp'assignvariableop_embedding_3_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_dense_33_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp assignvariableop_2_dense_33_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_dense_34_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp assignvariableop_4_dense_34_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_35_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_35_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_36_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_36_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_sgd_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp%assignvariableop_11_sgd_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp assignvariableop_12_sgd_momentumIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:13RestoreV2:tensors:14*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 _
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_17Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_18IdentityIdentity_17:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_18Identity_18:output:0*9
_input_shapes(
&: : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_class
loc:@MutableHashTable
?	
?
C__inference_dense_34_layer_call_and_return_conditional_losses_95079

inputs0
matmul_readvariableop_resource:

-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:

*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
F__inference_embedding_3_layer_call_and_return_conditional_losses_95030

inputs	)
embedding_lookup_95024:	?9
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_95024inputs*
Tindices0	*)
_class
loc:@embedding_lookup/95024*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/95024*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?-
?
__inference__traced_save_95279
file_prefix5
1savev2_embedding_3_embeddings_read_readvariableop.
*savev2_dense_33_kernel_read_readvariableop,
(savev2_dense_33_bias_read_readvariableop.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop.
*savev2_dense_35_kernel_read_readvariableop,
(savev2_dense_35_bias_read_readvariableop.
*savev2_dense_36_kernel_read_readvariableop,
(savev2_dense_36_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*;
value2B0B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_3_embeddings_read_readvariableop*savev2_dense_33_kernel_read_readvariableop(savev2_dense_33_bias_read_readvariableop*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop*savev2_dense_35_kernel_read_readvariableop(savev2_dense_35_bias_read_readvariableop*savev2_dense_36_kernel_read_readvariableop(savev2_dense_36_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *"
dtypes
2		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*{
_input_shapesj
h: :	?9:	?
:
:

:
:

:
:
:: : : : ::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?9:%!

_output_shapes
:	?
: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:

: 

_output_shapes
:
:$ 

_output_shapes

:
: 	

_output_shapes
::


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
:
__inference__creator_95123
identity??
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name38718*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
??
?
 __inference__wrapped_model_94201
input_10a
]model_8_text_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handleb
^model_8_text_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value	8
4model_8_text_vectorization_4_string_lookup_4_equal_y;
7model_8_text_vectorization_4_string_lookup_4_selectv2_t	=
*model_8_embedding_3_embedding_lookup_94168:	?9B
/model_8_dense_33_matmul_readvariableop_resource:	?
>
0model_8_dense_33_biasadd_readvariableop_resource:
A
/model_8_dense_34_matmul_readvariableop_resource:

>
0model_8_dense_34_biasadd_readvariableop_resource:
A
/model_8_dense_35_matmul_readvariableop_resource:

>
0model_8_dense_35_biasadd_readvariableop_resource:
A
/model_8_dense_36_matmul_readvariableop_resource:
>
0model_8_dense_36_biasadd_readvariableop_resource:
identity??'model_8/dense_33/BiasAdd/ReadVariableOp?&model_8/dense_33/MatMul/ReadVariableOp?'model_8/dense_34/BiasAdd/ReadVariableOp?&model_8/dense_34/MatMul/ReadVariableOp?'model_8/dense_35/BiasAdd/ReadVariableOp?&model_8/dense_35/MatMul/ReadVariableOp?'model_8/dense_36/BiasAdd/ReadVariableOp?&model_8/dense_36/MatMul/ReadVariableOp?$model_8/embedding_3/embedding_lookup?Pmodel_8/text_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2j
(model_8/text_vectorization_4/StringLowerStringLowerinput_10*'
_output_shapes
:??????????
/model_8/text_vectorization_4/StaticRegexReplaceStaticRegexReplace1model_8/text_vectorization_4/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
$model_8/text_vectorization_4/SqueezeSqueeze8model_8/text_vectorization_4/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????o
.model_8/text_vectorization_4/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
6model_8/text_vectorization_4/StringSplit/StringSplitV2StringSplitV2-model_8/text_vectorization_4/Squeeze:output:07model_8/text_vectorization_4/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
<model_8/text_vectorization_4/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
>model_8/text_vectorization_4/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
>model_8/text_vectorization_4/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
6model_8/text_vectorization_4/StringSplit/strided_sliceStridedSlice@model_8/text_vectorization_4/StringSplit/StringSplitV2:indices:0Emodel_8/text_vectorization_4/StringSplit/strided_slice/stack:output:0Gmodel_8/text_vectorization_4/StringSplit/strided_slice/stack_1:output:0Gmodel_8/text_vectorization_4/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
>model_8/text_vectorization_4/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@model_8/text_vectorization_4/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@model_8/text_vectorization_4/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8model_8/text_vectorization_4/StringSplit/strided_slice_1StridedSlice>model_8/text_vectorization_4/StringSplit/StringSplitV2:shape:0Gmodel_8/text_vectorization_4/StringSplit/strided_slice_1/stack:output:0Imodel_8/text_vectorization_4/StringSplit/strided_slice_1/stack_1:output:0Imodel_8/text_vectorization_4/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
_model_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast?model_8/text_vectorization_4/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
amodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastAmodel_8/text_vectorization_4/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
imodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapecmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
imodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
hmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdrmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0rmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
mmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
kmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterqmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0vmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
hmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastomodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
kmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
gmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxcmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0tmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
imodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
gmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2pmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0rmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
gmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMullmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0kmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
kmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumemodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0kmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
kmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumemodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0omodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
kmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
lmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountcmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0omodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0tmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
fmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
amodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumsmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0omodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
jmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
fmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
amodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2smodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0gmodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0omodel_8/text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Pmodel_8/text_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2LookupTableFindV2]model_8_text_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handle?model_8/text_vectorization_4/StringSplit/StringSplitV2:values:0^model_8_text_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
2model_8/text_vectorization_4/string_lookup_4/EqualEqual?model_8/text_vectorization_4/StringSplit/StringSplitV2:values:04model_8_text_vectorization_4_string_lookup_4_equal_y*
T0*#
_output_shapes
:??????????
5model_8/text_vectorization_4/string_lookup_4/SelectV2SelectV26model_8/text_vectorization_4/string_lookup_4/Equal:z:07model_8_text_vectorization_4_string_lookup_4_selectv2_tYmodel_8/text_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
5model_8/text_vectorization_4/string_lookup_4/IdentityIdentity>model_8/text_vectorization_4/string_lookup_4/SelectV2:output:0*
T0	*#
_output_shapes
:?????????{
9model_8/text_vectorization_4/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
1model_8/text_vectorization_4/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
@model_8/text_vectorization_4/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor:model_8/text_vectorization_4/RaggedToTensor/Const:output:0>model_8/text_vectorization_4/string_lookup_4/Identity:output:0Bmodel_8/text_vectorization_4/RaggedToTensor/default_value:output:0Amodel_8/text_vectorization_4/StringSplit/strided_slice_1:output:0?model_8/text_vectorization_4/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
$model_8/embedding_3/embedding_lookupResourceGather*model_8_embedding_3_embedding_lookup_94168Imodel_8/text_vectorization_4/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*=
_class3
1/loc:@model_8/embedding_3/embedding_lookup/94168*+
_output_shapes
:?????????*
dtype0?
-model_8/embedding_3/embedding_lookup/IdentityIdentity-model_8/embedding_3/embedding_lookup:output:0*
T0*=
_class3
1/loc:@model_8/embedding_3/embedding_lookup/94168*+
_output_shapes
:??????????
/model_8/embedding_3/embedding_lookup/Identity_1Identity6model_8/embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????h
model_8/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
model_8/flatten_6/ReshapeReshape8model_8/embedding_3/embedding_lookup/Identity_1:output:0 model_8/flatten_6/Const:output:0*
T0*(
_output_shapes
:???????????
&model_8/dense_33/MatMul/ReadVariableOpReadVariableOp/model_8_dense_33_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype0?
model_8/dense_33/MatMulMatMul"model_8/flatten_6/Reshape:output:0.model_8/dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
'model_8/dense_33/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_33_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
model_8/dense_33/BiasAddBiasAdd!model_8/dense_33/MatMul:product:0/model_8/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
&model_8/dense_34/MatMul/ReadVariableOpReadVariableOp/model_8_dense_34_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0?
model_8/dense_34/MatMulMatMul!model_8/dense_33/BiasAdd:output:0.model_8/dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
'model_8/dense_34/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_34_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
model_8/dense_34/BiasAddBiasAdd!model_8/dense_34/MatMul:product:0/model_8/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
&model_8/dense_35/MatMul/ReadVariableOpReadVariableOp/model_8_dense_35_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0?
model_8/dense_35/MatMulMatMul!model_8/dense_34/BiasAdd:output:0.model_8/dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
'model_8/dense_35/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_35_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
model_8/dense_35/BiasAddBiasAdd!model_8/dense_35/MatMul:product:0/model_8/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
&model_8/dense_36/MatMul/ReadVariableOpReadVariableOp/model_8_dense_36_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
model_8/dense_36/MatMulMatMul!model_8/dense_35/BiasAdd:output:0.model_8/dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'model_8/dense_36/BiasAdd/ReadVariableOpReadVariableOp0model_8_dense_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_8/dense_36/BiasAddBiasAdd!model_8/dense_36/MatMul:product:0/model_8/dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
model_8/dense_36/SoftmaxSoftmax!model_8/dense_36/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"model_8/dense_36/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^model_8/dense_33/BiasAdd/ReadVariableOp'^model_8/dense_33/MatMul/ReadVariableOp(^model_8/dense_34/BiasAdd/ReadVariableOp'^model_8/dense_34/MatMul/ReadVariableOp(^model_8/dense_35/BiasAdd/ReadVariableOp'^model_8/dense_35/MatMul/ReadVariableOp(^model_8/dense_36/BiasAdd/ReadVariableOp'^model_8/dense_36/MatMul/ReadVariableOp%^model_8/embedding_3/embedding_lookupQ^model_8/text_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2R
'model_8/dense_33/BiasAdd/ReadVariableOp'model_8/dense_33/BiasAdd/ReadVariableOp2P
&model_8/dense_33/MatMul/ReadVariableOp&model_8/dense_33/MatMul/ReadVariableOp2R
'model_8/dense_34/BiasAdd/ReadVariableOp'model_8/dense_34/BiasAdd/ReadVariableOp2P
&model_8/dense_34/MatMul/ReadVariableOp&model_8/dense_34/MatMul/ReadVariableOp2R
'model_8/dense_35/BiasAdd/ReadVariableOp'model_8/dense_35/BiasAdd/ReadVariableOp2P
&model_8/dense_35/MatMul/ReadVariableOp&model_8/dense_35/MatMul/ReadVariableOp2R
'model_8/dense_36/BiasAdd/ReadVariableOp'model_8/dense_36/BiasAdd/ReadVariableOp2P
&model_8/dense_36/MatMul/ReadVariableOp&model_8/dense_36/MatMul/ReadVariableOp2L
$model_8/embedding_3/embedding_lookup$model_8/embedding_3/embedding_lookup2?
Pmodel_8/text_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2Pmodel_8/text_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
`
D__inference_flatten_6_layer_call_and_return_conditional_losses_94275

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
C__inference_dense_36_layer_call_and_return_conditional_losses_95118

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
,
__inference__destroyer_95151
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
.
__inference__initializer_95146
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?o
?
__inference_adapt_step_92382
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*
_output_shapes
: *
output_shapes
: *
output_types
2P
StringLowerStringLowerIteratorGetNext:components:0*
_output_shapes
: ?
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*
_output_shapes
: *6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite d
StringSplit/stackPackStaticRegexReplace:output:0*
N*
T0*
_output_shapes
:^
StringSplit/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
%StringSplit/StringSplit/StringSplitV2StringSplitV2StringSplit/stack:output:0&StringSplit/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:|
+StringSplit/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-StringSplit/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-StringSplit/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
%StringSplit/StringSplit/strided_sliceStridedSlice/StringSplit/StringSplit/StringSplitV2:indices:04StringSplit/StringSplit/strided_slice/stack:output:06StringSplit/StringSplit/strided_slice/stack_1:output:06StringSplit/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskw
-StringSplit/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/StringSplit/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/StringSplit/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'StringSplit/StringSplit/strided_slice_1StridedSlice-StringSplit/StringSplit/StringSplitV2:shape:06StringSplit/StringSplit/strided_slice_1/stack:output:08StringSplit/StringSplit/strided_slice_1/stack_1:output:08StringSplit/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
NStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast.StringSplit/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
PStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast0StringSplit/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
XStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeRStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
XStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
WStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdaStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0aStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
\StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreater`StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0eStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
WStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCast^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
VStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxRStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0cStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
XStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
VStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2_StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0aStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
VStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMul[StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumTStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumTStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ZStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
[StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountRStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0cStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
UStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
PStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumbStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
YStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
UStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
PStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2bStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0VStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0^StringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:?????????w
-StringSplit/RaggedGetItem/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
/StringSplit/RaggedGetItem/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????y
/StringSplit/RaggedGetItem/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
'StringSplit/RaggedGetItem/strided_sliceStridedSliceYStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:06StringSplit/RaggedGetItem/strided_slice/stack:output:08StringSplit/RaggedGetItem/strided_slice/stack_1:output:08StringSplit/RaggedGetItem/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_masky
/StringSplit/RaggedGetItem/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1StringSplit/RaggedGetItem/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: {
1StringSplit/RaggedGetItem/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)StringSplit/RaggedGetItem/strided_slice_1StridedSliceYStringSplit/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat:output:08StringSplit/RaggedGetItem/strided_slice_1/stack:output:0:StringSplit/RaggedGetItem/strided_slice_1/stack_1:output:0:StringSplit/RaggedGetItem/strided_slice_1/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*
end_masky
/StringSplit/RaggedGetItem/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1StringSplit/RaggedGetItem/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1StringSplit/RaggedGetItem/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)StringSplit/RaggedGetItem/strided_slice_2StridedSlice0StringSplit/RaggedGetItem/strided_slice:output:08StringSplit/RaggedGetItem/strided_slice_2/stack:output:0:StringSplit/RaggedGetItem/strided_slice_2/stack_1:output:0:StringSplit/RaggedGetItem/strided_slice_2/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_masky
/StringSplit/RaggedGetItem/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1StringSplit/RaggedGetItem/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1StringSplit/RaggedGetItem/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)StringSplit/RaggedGetItem/strided_slice_3StridedSlice2StringSplit/RaggedGetItem/strided_slice_1:output:08StringSplit/RaggedGetItem/strided_slice_3/stack:output:0:StringSplit/RaggedGetItem/strided_slice_3/stack_1:output:0:StringSplit/RaggedGetItem/strided_slice_3/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
/StringSplit/RaggedGetItem/strided_slice_4/stackPack2StringSplit/RaggedGetItem/strided_slice_2:output:0*
N*
T0	*
_output_shapes
:?
1StringSplit/RaggedGetItem/strided_slice_4/stack_1Pack2StringSplit/RaggedGetItem/strided_slice_3:output:0*
N*
T0	*
_output_shapes
:{
1StringSplit/RaggedGetItem/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.StringSplit/RaggedGetItem/strided_slice_4/CastCast:StringSplit/RaggedGetItem/strided_slice_4/stack_2:output:0*

DstT0	*

SrcT0*
_output_shapes
:?
)StringSplit/RaggedGetItem/strided_slice_4StridedSlice.StringSplit/StringSplit/StringSplitV2:values:08StringSplit/RaggedGetItem/strided_slice_4/stack:output:0:StringSplit/RaggedGetItem/strided_slice_4/stack_1:output:02StringSplit/RaggedGetItem/strided_slice_4/Cast:y:0*
Index0	*
T0*#
_output_shapes
:?????????r
/StringSplit/RaggedGetItem/strided_slice_5/ConstConst*
_output_shapes
: *
dtype0*
valueB ?
)StringSplit/RaggedGetItem/strided_slice_5StridedSlice2StringSplit/RaggedGetItem/strided_slice_4:output:08StringSplit/RaggedGetItem/strided_slice_5/Const:output:08StringSplit/RaggedGetItem/strided_slice_5/Const:output:08StringSplit/RaggedGetItem/strided_slice_5/Const:output:0*
Index0*
T0*#
_output_shapes
:?????????P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ?

ExpandDims
ExpandDims2StringSplit/RaggedGetItem/strided_slice_5:output:0ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????m
ReshapeReshapeExpandDims:output:0Reshape/shape:output:0*
T0*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCountsReshape:output:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
*
__inference_<lambda>_95191
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
??
?	
B__inference_model_8_layer_call_and_return_conditional_losses_94981

inputsY
Utext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_4_string_lookup_4_equal_y3
/text_vectorization_4_string_lookup_4_selectv2_t	5
"embedding_3_embedding_lookup_94948:	?9:
'dense_33_matmul_readvariableop_resource:	?
6
(dense_33_biasadd_readvariableop_resource:
9
'dense_34_matmul_readvariableop_resource:

6
(dense_34_biasadd_readvariableop_resource:
9
'dense_35_matmul_readvariableop_resource:

6
(dense_35_biasadd_readvariableop_resource:
9
'dense_36_matmul_readvariableop_resource:
6
(dense_36_biasadd_readvariableop_resource:
identity??dense_33/BiasAdd/ReadVariableOp?dense_33/MatMul/ReadVariableOp?dense_34/BiasAdd/ReadVariableOp?dense_34/MatMul/ReadVariableOp?dense_35/BiasAdd/ReadVariableOp?dense_35/MatMul/ReadVariableOp?dense_36/BiasAdd/ReadVariableOp?dense_36/MatMul/ReadVariableOp?embedding_3/embedding_lookup?Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2`
 text_vectorization_4/StringLowerStringLowerinputs*'
_output_shapes
:??????????
'text_vectorization_4/StaticRegexReplaceStaticRegexReplace)text_vectorization_4/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_4/SqueezeSqueeze0text_vectorization_4/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_4/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_4/StringSplit/StringSplitV2StringSplitV2%text_vectorization_4/Squeeze:output:0/text_vectorization_4/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_4/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_4/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_4/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_4/StringSplit/strided_sliceStridedSlice8text_vectorization_4/StringSplit/StringSplitV2:indices:0=text_vectorization_4/StringSplit/strided_slice/stack:output:0?text_vectorization_4/StringSplit/strided_slice/stack_1:output:0?text_vectorization_4/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_4/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_4/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_4/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_4/StringSplit/strided_slice_1StridedSlice6text_vectorization_4/StringSplit/StringSplitV2:shape:0?text_vectorization_4/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_4/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_4/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_4/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_4/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_4/StringSplit/StringSplitV2:values:0Vtext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_4/string_lookup_4/EqualEqual7text_vectorization_4/StringSplit/StringSplitV2:values:0,text_vectorization_4_string_lookup_4_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_4/string_lookup_4/SelectV2SelectV2.text_vectorization_4/string_lookup_4/Equal:z:0/text_vectorization_4_string_lookup_4_selectv2_tQtext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_4/string_lookup_4/IdentityIdentity6text_vectorization_4/string_lookup_4/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_4/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_4/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_4/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_4/RaggedToTensor/Const:output:06text_vectorization_4/string_lookup_4/Identity:output:0:text_vectorization_4/RaggedToTensor/default_value:output:09text_vectorization_4/StringSplit/strided_slice_1:output:07text_vectorization_4/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_94948Atext_vectorization_4/RaggedToTensor/RaggedTensorToTensor:result:0*
Tindices0	*5
_class+
)'loc:@embedding_3/embedding_lookup/94948*+
_output_shapes
:?????????*
dtype0?
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/94948*+
_output_shapes
:??????????
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   ?
flatten_6/ReshapeReshape0embedding_3/embedding_lookup/Identity_1:output:0flatten_6/Const:output:0*
T0*(
_output_shapes
:???????????
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype0?
dense_33/MatMulMatMulflatten_6/Reshape:output:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0?
dense_34/MatMulMatMuldense_33/BiasAdd:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes

:

*
dtype0?
dense_35/MatMulMatMuldense_34/BiasAdd:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
dense_36/MatMul/ReadVariableOpReadVariableOp'dense_36_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
dense_36/MatMulMatMuldense_35/BiasAdd:output:0&dense_36/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_36/BiasAdd/ReadVariableOpReadVariableOp(dense_36_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_36/BiasAddBiasAdddense_36/MatMul:product:0'dense_36/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_36/SoftmaxSoftmaxdense_36/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_36/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp ^dense_36/BiasAdd/ReadVariableOp^dense_36/MatMul/ReadVariableOp^embedding_3/embedding_lookupI^text_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp2B
dense_36/BiasAdd/ReadVariableOpdense_36/BiasAdd/ReadVariableOp2@
dense_36/MatMul/ReadVariableOpdense_36/MatMul/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup2?
Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?t
?
B__inference_model_8_layer_call_and_return_conditional_losses_94747
input_10Y
Utext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handleZ
Vtext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value	0
,text_vectorization_4_string_lookup_4_equal_y3
/text_vectorization_4_string_lookup_4_selectv2_t	$
embedding_3_94722:	?9!
dense_33_94726:	?

dense_33_94728:
 
dense_34_94731:


dense_34_94733:
 
dense_35_94736:


dense_35_94738:
 
dense_36_94741:

dense_36_94743:
identity?? dense_33/StatefulPartitionedCall? dense_34/StatefulPartitionedCall? dense_35/StatefulPartitionedCall? dense_36/StatefulPartitionedCall?#embedding_3/StatefulPartitionedCall?Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2b
 text_vectorization_4/StringLowerStringLowerinput_10*'
_output_shapes
:??????????
'text_vectorization_4/StaticRegexReplaceStaticRegexReplace)text_vectorization_4/StringLower:output:0*'
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite ?
text_vectorization_4/SqueezeSqueeze0text_vectorization_4/StaticRegexReplace:output:0*
T0*#
_output_shapes
:?????????*
squeeze_dims

?????????g
&text_vectorization_4/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
.text_vectorization_4/StringSplit/StringSplitV2StringSplitV2%text_vectorization_4/Squeeze:output:0/text_vectorization_4/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
4text_vectorization_4/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
6text_vectorization_4/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
6text_vectorization_4/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
.text_vectorization_4/StringSplit/strided_sliceStridedSlice8text_vectorization_4/StringSplit/StringSplitV2:indices:0=text_vectorization_4/StringSplit/strided_slice/stack:output:0?text_vectorization_4/StringSplit/strided_slice/stack_1:output:0?text_vectorization_4/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
6text_vectorization_4/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8text_vectorization_4/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8text_vectorization_4/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0text_vectorization_4/StringSplit/strided_slice_1StridedSlice6text_vectorization_4/StringSplit/StringSplitV2:shape:0?text_vectorization_4/StringSplit/strided_slice_1/stack:output:0Atext_vectorization_4/StringSplit/strided_slice_1/stack_1:output:0Atext_vectorization_4/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Wtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast7text_vectorization_4/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast9text_vectorization_4/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShape[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
`text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdjtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0jtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
etext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreateritext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ntext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
`text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastgtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMax[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0ltext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
atext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2htext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0jtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMuldtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum]text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum]text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
ctext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
dtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincount[text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0ltext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
^text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumktext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
btext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
^text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Ytext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2ktext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0_text_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0gtext_vectorization_4/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Utext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_table_handle7text_vectorization_4/StringSplit/StringSplitV2:values:0Vtext_vectorization_4_string_lookup_4_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
*text_vectorization_4/string_lookup_4/EqualEqual7text_vectorization_4/StringSplit/StringSplitV2:values:0,text_vectorization_4_string_lookup_4_equal_y*
T0*#
_output_shapes
:??????????
-text_vectorization_4/string_lookup_4/SelectV2SelectV2.text_vectorization_4/string_lookup_4/Equal:z:0/text_vectorization_4_string_lookup_4_selectv2_tQtext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
-text_vectorization_4/string_lookup_4/IdentityIdentity6text_vectorization_4/string_lookup_4/SelectV2:output:0*
T0	*#
_output_shapes
:?????????s
1text_vectorization_4/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
)text_vectorization_4/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????       ?
8text_vectorization_4/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor2text_vectorization_4/RaggedToTensor/Const:output:06text_vectorization_4/string_lookup_4/Identity:output:0:text_vectorization_4/RaggedToTensor/default_value:output:09text_vectorization_4/StringSplit/strided_slice_1:output:07text_vectorization_4/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:?????????*
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
#embedding_3/StatefulPartitionedCallStatefulPartitionedCallAtext_vectorization_4/RaggedToTensor/RaggedTensorToTensor:result:0embedding_3_94722*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_embedding_3_layer_call_and_return_conditional_losses_94265?
flatten_6/PartitionedCallPartitionedCall,embedding_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_94275?
 dense_33/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_33_94726dense_33_94728*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_94287?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0dense_34_94731dense_34_94733*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_94303?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0dense_35_94736dense_35_94738*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_94319?
 dense_36/StatefulPartitionedCallStatefulPartitionedCall)dense_35/StatefulPartitionedCall:output:0dense_36_94741dense_36_94743*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_36_layer_call_and_return_conditional_losses_94336x
IdentityIdentity)dense_36/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall!^dense_36/StatefulPartitionedCall$^embedding_3/StatefulPartitionedCallI^text_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2D
 dense_36/StatefulPartitionedCall dense_36/StatefulPartitionedCall2J
#embedding_3/StatefulPartitionedCall#embedding_3/StatefulPartitionedCall2?
Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2Htext_vectorization_4/string_lookup_4/hash_table_Lookup/LookupTableFindV2:Q M
'
_output_shapes
:?????????
"
_user_specified_name
input_10:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
input_101
serving_default_input_10:0?????????>
dense_362
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
		optimizer

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
P
_lookup_layer
	keras_api
_adapt_function"
_tf_keras_layer
?

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
?

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
?

*kernel
+bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
?

2kernel
3bias
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
?

:kernel
;bias
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
I
Biter
	Cdecay
Dlearning_rate
Emomentum"
	optimizer
_
1
"2
#3
*4
+5
26
37
:8
;9"
trackable_list_wrapper
_
0
"1
#2
*3
+4
25
36
:7
;8"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics

	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_model_8_layer_call_fn_94372
'__inference_model_8_layer_call_fn_94782
'__inference_model_8_layer_call_fn_94813
'__inference_model_8_layer_call_fn_94595?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_model_8_layer_call_and_return_conditional_losses_94897
B__inference_model_8_layer_call_and_return_conditional_losses_94981
B__inference_model_8_layer_call_and_return_conditional_losses_94671
B__inference_model_8_layer_call_and_return_conditional_losses_94747?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_94201input_10"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
Kserving_default"
signature_map
L
Llookup_table
Mtoken_counts
N	keras_api"
_tf_keras_layer
"
_generic_user_object
?2?
__inference_adapt_step_92382?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
):'	?92embedding_3/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_embedding_3_layer_call_fn_95021?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_embedding_3_layer_call_and_return_conditional_losses_95030?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
?2?
)__inference_flatten_6_layer_call_fn_95035?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_flatten_6_layer_call_and_return_conditional_losses_95041?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
": 	?
2dense_33/kernel
:
2dense_33/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_33_layer_call_fn_95050?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_33_layer_call_and_return_conditional_losses_95060?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:

2dense_34/kernel
:
2dense_34/bias
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_34_layer_call_fn_95069?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_34_layer_call_and_return_conditional_losses_95079?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:

2dense_35/kernel
:
2dense_35/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
?
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_35_layer_call_fn_95088?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_35_layer_call_and_return_conditional_losses_95098?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
!:
2dense_36/kernel
:2dense_36/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_36_layer_call_fn_95107?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_36_layer_call_and_return_conditional_losses_95118?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
#__inference_signature_wrapper_95014input_10"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
j
o_initializer
p_create_resource
q_initialize
r_destroy_resourceR jCustom.StaticHashTable
P
s_create_resource
t_initialize
u_destroy_resourceR Z
table?
"
_generic_user_object
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
N
	vtotal
	wcount
x	variables
y	keras_api"
_tf_keras_metric
^
	ztotal
	{count
|
_fn_kwargs
}	variables
~	keras_api"
_tf_keras_metric
"
_generic_user_object
?2?
__inference__creator_95123?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_95131?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_95136?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_95141?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_95146?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_95151?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
:  (2total
:  (2count
.
v0
w1"
trackable_list_wrapper
-
x	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
z0
{1"
trackable_list_wrapper
-
}	variables"
_generic_user_object
?B?
__inference_save_fn_95170checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_95178restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_56
__inference__creator_95123?

? 
? "? 6
__inference__creator_95141?

? 
? "? 8
__inference__destroyer_95136?

? 
? "? 8
__inference__destroyer_95151?

? 
? "? A
__inference__initializer_95131L???

? 
? "? :
__inference__initializer_95146?

? 
? "? ?
 __inference__wrapped_model_94201zL???"#*+23:;1?.
'?$
"?
input_10?????????
? "3?0
.
dense_36"?
dense_36?????????]
__inference_adapt_step_92382=M?2?/
(?%
#? ?	
? IteratorSpec 
? "
 ?
C__inference_dense_33_layer_call_and_return_conditional_losses_95060]"#0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? |
(__inference_dense_33_layer_call_fn_95050P"#0?-
&?#
!?
inputs??????????
? "??????????
?
C__inference_dense_34_layer_call_and_return_conditional_losses_95079\*+/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? {
(__inference_dense_34_layer_call_fn_95069O*+/?,
%?"
 ?
inputs?????????

? "??????????
?
C__inference_dense_35_layer_call_and_return_conditional_losses_95098\23/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????

? {
(__inference_dense_35_layer_call_fn_95088O23/?,
%?"
 ?
inputs?????????

? "??????????
?
C__inference_dense_36_layer_call_and_return_conditional_losses_95118\:;/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? {
(__inference_dense_36_layer_call_fn_95107O:;/?,
%?"
 ?
inputs?????????

? "???????????
F__inference_embedding_3_layer_call_and_return_conditional_losses_95030_/?,
%?"
 ?
inputs?????????	
? ")?&
?
0?????????
? ?
+__inference_embedding_3_layer_call_fn_95021R/?,
%?"
 ?
inputs?????????	
? "???????????
D__inference_flatten_6_layer_call_and_return_conditional_losses_95041]3?0
)?&
$?!
inputs?????????
? "&?#
?
0??????????
? }
)__inference_flatten_6_layer_call_fn_95035P3?0
)?&
$?!
inputs?????????
? "????????????
B__inference_model_8_layer_call_and_return_conditional_losses_94671tL???"#*+23:;9?6
/?,
"?
input_10?????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_8_layer_call_and_return_conditional_losses_94747tL???"#*+23:;9?6
/?,
"?
input_10?????????
p

 
? "%?"
?
0?????????
? ?
B__inference_model_8_layer_call_and_return_conditional_losses_94897rL???"#*+23:;7?4
-?*
 ?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_8_layer_call_and_return_conditional_losses_94981rL???"#*+23:;7?4
-?*
 ?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
'__inference_model_8_layer_call_fn_94372gL???"#*+23:;9?6
/?,
"?
input_10?????????
p 

 
? "???????????
'__inference_model_8_layer_call_fn_94595gL???"#*+23:;9?6
/?,
"?
input_10?????????
p

 
? "???????????
'__inference_model_8_layer_call_fn_94782eL???"#*+23:;7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
'__inference_model_8_layer_call_fn_94813eL???"#*+23:;7?4
-?*
 ?
inputs?????????
p

 
? "??????????y
__inference_restore_fn_95178YMK?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_95170?M&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
#__inference_signature_wrapper_95014?L???"#*+23:;=?:
? 
3?0
.
input_10"?
input_10?????????"3?0
.
dense_36"?
dense_36?????????