
"use strict";

let PickupFeedback = require('./PickupFeedback.js');
let MoveGroupSequenceActionFeedback = require('./MoveGroupSequenceActionFeedback.js');
let ExecuteTrajectoryAction = require('./ExecuteTrajectoryAction.js');
let PickupAction = require('./PickupAction.js');
let MoveGroupSequenceAction = require('./MoveGroupSequenceAction.js');
let ExecuteTrajectoryActionFeedback = require('./ExecuteTrajectoryActionFeedback.js');
let MoveGroupSequenceGoal = require('./MoveGroupSequenceGoal.js');
let MoveGroupSequenceResult = require('./MoveGroupSequenceResult.js');
let ExecuteTrajectoryActionResult = require('./ExecuteTrajectoryActionResult.js');
let PlaceGoal = require('./PlaceGoal.js');
let PickupGoal = require('./PickupGoal.js');
let PlaceActionResult = require('./PlaceActionResult.js');
let ExecuteTrajectoryActionGoal = require('./ExecuteTrajectoryActionGoal.js');
let PlaceResult = require('./PlaceResult.js');
let ExecuteTrajectoryResult = require('./ExecuteTrajectoryResult.js');
let MoveGroupActionGoal = require('./MoveGroupActionGoal.js');
let MoveGroupActionResult = require('./MoveGroupActionResult.js');
let MoveGroupResult = require('./MoveGroupResult.js');
let MoveGroupGoal = require('./MoveGroupGoal.js');
let PlaceActionGoal = require('./PlaceActionGoal.js');
let MoveGroupSequenceActionResult = require('./MoveGroupSequenceActionResult.js');
let PlaceFeedback = require('./PlaceFeedback.js');
let MoveGroupSequenceFeedback = require('./MoveGroupSequenceFeedback.js');
let MoveGroupActionFeedback = require('./MoveGroupActionFeedback.js');
let MoveGroupFeedback = require('./MoveGroupFeedback.js');
let PickupActionResult = require('./PickupActionResult.js');
let MoveGroupSequenceActionGoal = require('./MoveGroupSequenceActionGoal.js');
let PlaceAction = require('./PlaceAction.js');
let PickupActionGoal = require('./PickupActionGoal.js');
let MoveGroupAction = require('./MoveGroupAction.js');
let PlaceActionFeedback = require('./PlaceActionFeedback.js');
let PickupActionFeedback = require('./PickupActionFeedback.js');
let ExecuteTrajectoryFeedback = require('./ExecuteTrajectoryFeedback.js');
let PickupResult = require('./PickupResult.js');
let ExecuteTrajectoryGoal = require('./ExecuteTrajectoryGoal.js');
let GenericTrajectory = require('./GenericTrajectory.js');
let CartesianTrajectory = require('./CartesianTrajectory.js');
let PlannerParams = require('./PlannerParams.js');
let PlanningSceneComponents = require('./PlanningSceneComponents.js');
let OrientedBoundingBox = require('./OrientedBoundingBox.js');
let CollisionObject = require('./CollisionObject.js');
let PlanningScene = require('./PlanningScene.js');
let Constraints = require('./Constraints.js');
let MotionPlanResponse = require('./MotionPlanResponse.js');
let MoveItErrorCodes = require('./MoveItErrorCodes.js');
let MotionSequenceItem = require('./MotionSequenceItem.js');
let MotionPlanRequest = require('./MotionPlanRequest.js');
let PlaceLocation = require('./PlaceLocation.js');
let BoundingVolume = require('./BoundingVolume.js');
let GripperTranslation = require('./GripperTranslation.js');
let LinkPadding = require('./LinkPadding.js');
let Grasp = require('./Grasp.js');
let PlannerInterfaceDescription = require('./PlannerInterfaceDescription.js');
let JointConstraint = require('./JointConstraint.js');
let MotionPlanDetailedResponse = require('./MotionPlanDetailedResponse.js');
let CostSource = require('./CostSource.js');
let MotionSequenceResponse = require('./MotionSequenceResponse.js');
let MotionSequenceRequest = require('./MotionSequenceRequest.js');
let ContactInformation = require('./ContactInformation.js');
let ObjectColor = require('./ObjectColor.js');
let PlanningOptions = require('./PlanningOptions.js');
let LinkScale = require('./LinkScale.js');
let DisplayRobotState = require('./DisplayRobotState.js');
let VisibilityConstraint = require('./VisibilityConstraint.js');
let AllowedCollisionEntry = require('./AllowedCollisionEntry.js');
let PositionIKRequest = require('./PositionIKRequest.js');
let JointLimits = require('./JointLimits.js');
let RobotTrajectory = require('./RobotTrajectory.js');
let TrajectoryConstraints = require('./TrajectoryConstraints.js');
let PositionConstraint = require('./PositionConstraint.js');
let OrientationConstraint = require('./OrientationConstraint.js');
let KinematicSolverInfo = require('./KinematicSolverInfo.js');
let AllowedCollisionMatrix = require('./AllowedCollisionMatrix.js');
let RobotState = require('./RobotState.js');
let ConstraintEvalResult = require('./ConstraintEvalResult.js');
let PlanningSceneWorld = require('./PlanningSceneWorld.js');
let AttachedCollisionObject = require('./AttachedCollisionObject.js');
let WorkspaceParameters = require('./WorkspaceParameters.js');
let DisplayTrajectory = require('./DisplayTrajectory.js');
let CartesianPoint = require('./CartesianPoint.js');
let CartesianTrajectoryPoint = require('./CartesianTrajectoryPoint.js');

module.exports = {
  PickupFeedback: PickupFeedback,
  MoveGroupSequenceActionFeedback: MoveGroupSequenceActionFeedback,
  ExecuteTrajectoryAction: ExecuteTrajectoryAction,
  PickupAction: PickupAction,
  MoveGroupSequenceAction: MoveGroupSequenceAction,
  ExecuteTrajectoryActionFeedback: ExecuteTrajectoryActionFeedback,
  MoveGroupSequenceGoal: MoveGroupSequenceGoal,
  MoveGroupSequenceResult: MoveGroupSequenceResult,
  ExecuteTrajectoryActionResult: ExecuteTrajectoryActionResult,
  PlaceGoal: PlaceGoal,
  PickupGoal: PickupGoal,
  PlaceActionResult: PlaceActionResult,
  ExecuteTrajectoryActionGoal: ExecuteTrajectoryActionGoal,
  PlaceResult: PlaceResult,
  ExecuteTrajectoryResult: ExecuteTrajectoryResult,
  MoveGroupActionGoal: MoveGroupActionGoal,
  MoveGroupActionResult: MoveGroupActionResult,
  MoveGroupResult: MoveGroupResult,
  MoveGroupGoal: MoveGroupGoal,
  PlaceActionGoal: PlaceActionGoal,
  MoveGroupSequenceActionResult: MoveGroupSequenceActionResult,
  PlaceFeedback: PlaceFeedback,
  MoveGroupSequenceFeedback: MoveGroupSequenceFeedback,
  MoveGroupActionFeedback: MoveGroupActionFeedback,
  MoveGroupFeedback: MoveGroupFeedback,
  PickupActionResult: PickupActionResult,
  MoveGroupSequenceActionGoal: MoveGroupSequenceActionGoal,
  PlaceAction: PlaceAction,
  PickupActionGoal: PickupActionGoal,
  MoveGroupAction: MoveGroupAction,
  PlaceActionFeedback: PlaceActionFeedback,
  PickupActionFeedback: PickupActionFeedback,
  ExecuteTrajectoryFeedback: ExecuteTrajectoryFeedback,
  PickupResult: PickupResult,
  ExecuteTrajectoryGoal: ExecuteTrajectoryGoal,
  GenericTrajectory: GenericTrajectory,
  CartesianTrajectory: CartesianTrajectory,
  PlannerParams: PlannerParams,
  PlanningSceneComponents: PlanningSceneComponents,
  OrientedBoundingBox: OrientedBoundingBox,
  CollisionObject: CollisionObject,
  PlanningScene: PlanningScene,
  Constraints: Constraints,
  MotionPlanResponse: MotionPlanResponse,
  MoveItErrorCodes: MoveItErrorCodes,
  MotionSequenceItem: MotionSequenceItem,
  MotionPlanRequest: MotionPlanRequest,
  PlaceLocation: PlaceLocation,
  BoundingVolume: BoundingVolume,
  GripperTranslation: GripperTranslation,
  LinkPadding: LinkPadding,
  Grasp: Grasp,
  PlannerInterfaceDescription: PlannerInterfaceDescription,
  JointConstraint: JointConstraint,
  MotionPlanDetailedResponse: MotionPlanDetailedResponse,
  CostSource: CostSource,
  MotionSequenceResponse: MotionSequenceResponse,
  MotionSequenceRequest: MotionSequenceRequest,
  ContactInformation: ContactInformation,
  ObjectColor: ObjectColor,
  PlanningOptions: PlanningOptions,
  LinkScale: LinkScale,
  DisplayRobotState: DisplayRobotState,
  VisibilityConstraint: VisibilityConstraint,
  AllowedCollisionEntry: AllowedCollisionEntry,
  PositionIKRequest: PositionIKRequest,
  JointLimits: JointLimits,
  RobotTrajectory: RobotTrajectory,
  TrajectoryConstraints: TrajectoryConstraints,
  PositionConstraint: PositionConstraint,
  OrientationConstraint: OrientationConstraint,
  KinematicSolverInfo: KinematicSolverInfo,
  AllowedCollisionMatrix: AllowedCollisionMatrix,
  RobotState: RobotState,
  ConstraintEvalResult: ConstraintEvalResult,
  PlanningSceneWorld: PlanningSceneWorld,
  AttachedCollisionObject: AttachedCollisionObject,
  WorkspaceParameters: WorkspaceParameters,
  DisplayTrajectory: DisplayTrajectory,
  CartesianPoint: CartesianPoint,
  CartesianTrajectoryPoint: CartesianTrajectoryPoint,
};
