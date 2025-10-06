

# Pawn Gets Stuck

Seen in 1.6 with the mod list of Oct 5th 2025.  First guess is that it's the quarry mod.  But it's probably something else like Common Sense or a mod that tells the pawn to carry what they harvest.  

```
JobDriver threw exception in toil null's initAction for pawn Balcam driver=JobDriver_MineQuarry (toilIndex=3) driver.job=(UnloadYourHauledInventory (Job_1584342) A = Thing_Human1059)
System.NullReferenceException: Object reference not set to an instance of an object
[Ref 18A19317]
  at Verse.GridsUtility.Fogged (Verse.Thing t) [0x00006] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.HaulAIUtility.PawnCanAutomaticallyHaulFast (Verse.Pawn p, Verse.Thing t, System.Boolean forced) [0x00000] in <31482697ada14932981abc5e76101d5d>:0 
    - TRANSPILER com.alphagenes: IEnumerable`1 AlphaGenes.AlphaGenes_HaulAIUtility_PawnCanAutomaticallyHaulFast:Transpiler(IEnumerable`1 instructions, ILGenerator generator)
  at Verse.AI.Pawn_JobTracker.TryOpportunisticJob (Verse.AI.Job finalizerJob, Verse.AI.Job job) [0x00188] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.Pawn_JobTracker.StartJob (Verse.AI.Job newJob, Verse.AI.JobCondition lastJobEndCondition, Verse.AI.ThinkNode jobGiver, System.Boolean resumeCurJobAfterwards, System.Boolean cancelBusyStances, Verse.ThinkTreeDef thinkTree, System.Nullable`1[T] tag, System.Boolean fromQueue, System.Boolean canReturnCurJobToPool, System.Nullable`1[T] keepCarryingThingOverride, System.Boolean continueSleeping, System.Boolean addToJobsThisTick, System.Boolean preToilReservationsCanFail) [0x004a9] in <31482697ada14932981abc5e76101d5d>:0 
    - PREFIX net.avilmask.rimworld.mod.CommonSense: Boolean CommonSense.OpportunisticTasks+Pawn_JobTracker_StartJob_CommonSensePatch:Prefix(Pawn_JobTracker_Crutch& __instance, Job newJob, Boolean fromQueue)
    - PREFIX OskarPotocki.VanillaPsycastsExpanded: Boolean VanillaPsycastsExpanded.Pawn_JobTracker_StartJob_Patch:Prefix(Pawn_JobTracker __instance, Pawn ___pawn, Job newJob, Nullable`1 tag)
    - PREFIX OskarPotocki.VanillaTraitsExpanded: Boolean VanillaTraitsExpanded.StartJob_Patch:Prefix(Pawn ___pawn, Job newJob, JobCondition lastJobEndCondition)
  at Verse.AI.Pawn_JobTracker.TryFindAndStartJob () [0x000bd] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.Pawn_JobTracker.EndCurrentJob (Verse.AI.JobCondition condition, System.Boolean startNewJob, System.Boolean canReturnToPool) [0x002a7] in <31482697ada14932981abc5e76101d5d>:0 
    - PREFIX net.avilmask.rimworld.mod.CommonSense: Boolean CommonSense.OpportunisticTasks+Pawn_JobTracker_EndCurrentJob_CommonSensePatch:Prefix(Pawn_JobTracker_Crutch __instance, JobCondition condition)
    - PREFIX kathanon.ImpressionableChildren: Void ImpressionableChildren.Learning_Patches:EndCurrentJob(Pawn ___pawn, JobDriver ___curDriver)
    - PREFIX Ilarion.BulkLoadForTransporters: Void BulkLoadForTransporters.HarmonyPatches.LoadTransporters.Pawn_JobTracker_EndCurrentJob_Patch:Prefix(Pawn_JobTracker __instance, JobCondition condition, Pawn ___pawn)
  at Verse.AI.Toils_Reserve+<>c__DisplayClass1_0.<Reserve>b__0 () [0x0005b] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.JobDriver.TryActuallyStartNextToil () [0x001b0] in <31482697ada14932981abc5e76101d5d>:0 
UnityEngine.StackTraceUtility:ExtractStackTrace ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Log.Error_Patch1 (string)
Verse.AI.JobUtility:TryStartErrorRecoverJob (Verse.Pawn,string,System.Exception,Verse.AI.JobDriver)
Verse.AI.JobDriver:TryActuallyStartNextToil ()
Verse.AI.JobDriver:ReadyForNextToil ()
Verse.AI.JobDriver:TryActuallyStartNextToil ()
Verse.AI.JobDriver:ReadyForNextToil ()
Verse.AI.JobDriver:DriverTick ()
Verse.AI.Pawn_JobTracker:JobTrackerTick ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Pawn.Tick_Patch1 (Verse.Pawn)
Verse.Thing:DoTick ()
Verse.TickList:Tick ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.TickManager.DoSingleTick_Patch3 (Verse.TickManager)
Verse.TickManager:TickManagerUpdate ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Game.UpdatePlay_Patch1 (Verse.Game)
Verse.Root_Play:Update ()
```

Second pawn

```
Exception in JobDriver fixed tick for pawn Green driver=JobDriver_Meditate (toilIndex=1) driver.job=(LayDown (Job_1771715) A = Thing_Bed113382 Giver = JobGiver_GetRest [workGiverDef: null])
System.NullReferenceException: Object reference not set to an instance of an object
[Ref 7DD402F0]
  at Verse.GridsUtility.Fogged (Verse.Thing t) [0x00006] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.HaulAIUtility.PawnCanAutomaticallyHaulFast (Verse.Pawn p, Verse.Thing t, System.Boolean forced) [0x00000] in <31482697ada14932981abc5e76101d5d>:0 
    - TRANSPILER com.alphagenes: IEnumerable`1 AlphaGenes.AlphaGenes_HaulAIUtility_PawnCanAutomaticallyHaulFast:Transpiler(IEnumerable`1 instructions, ILGenerator generator)
  at Verse.AI.Pawn_JobTracker.TryOpportunisticJob (Verse.AI.Job finalizerJob, Verse.AI.Job job) [0x00188] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.Pawn_JobTracker.StartJob (Verse.AI.Job newJob, Verse.AI.JobCondition lastJobEndCondition, Verse.AI.ThinkNode jobGiver, System.Boolean resumeCurJobAfterwards, System.Boolean cancelBusyStances, Verse.ThinkTreeDef thinkTree, System.Nullable`1[T] tag, System.Boolean fromQueue, System.Boolean canReturnCurJobToPool, System.Nullable`1[T] keepCarryingThingOverride, System.Boolean continueSleeping, System.Boolean addToJobsThisTick, System.Boolean preToilReservationsCanFail) [0x004a9] in <31482697ada14932981abc5e76101d5d>:0 
    - PREFIX net.avilmask.rimworld.mod.CommonSense: Boolean CommonSense.OpportunisticTasks+Pawn_JobTracker_StartJob_CommonSensePatch:Prefix(Pawn_JobTracker_Crutch& __instance, Job newJob, Boolean fromQueue)
    - PREFIX OskarPotocki.VanillaPsycastsExpanded: Boolean VanillaPsycastsExpanded.Pawn_JobTracker_StartJob_Patch:Prefix(Pawn_JobTracker __instance, Pawn ___pawn, Job newJob, Nullable`1 tag)
    - PREFIX OskarPotocki.VanillaTraitsExpanded: Boolean VanillaTraitsExpanded.StartJob_Patch:Prefix(Pawn ___pawn, Job newJob, JobCondition lastJobEndCondition)
  at Verse.AI.Pawn_JobTracker.TryFindAndStartJob () [0x000bd] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.Pawn_JobTracker.EndCurrentJob (Verse.AI.JobCondition condition, System.Boolean startNewJob, System.Boolean canReturnToPool) [0x002a7] in <31482697ada14932981abc5e76101d5d>:0 
    - PREFIX net.avilmask.rimworld.mod.CommonSense: Boolean CommonSense.OpportunisticTasks+Pawn_JobTracker_EndCurrentJob_CommonSensePatch:Prefix(Pawn_JobTracker_Crutch __instance, JobCondition condition)
    - PREFIX kathanon.ImpressionableChildren: Void ImpressionableChildren.Learning_Patches:EndCurrentJob(Pawn ___pawn, JobDriver ___curDriver)
    - PREFIX Ilarion.BulkLoadForTransporters: Void BulkLoadForTransporters.HarmonyPatches.LoadTransporters.Pawn_JobTracker_EndCurrentJob_Patch:Prefix(Pawn_JobTracker __instance, JobCondition condition, Pawn ___pawn)
  at Verse.AI.JobDriver.EndJobWith (Verse.AI.JobCondition condition) [0x00028] in <31482697ada14932981abc5e76101d5d>:0 
  at CommonSense.JobDriver_MeditationTick_CommonSensePatch.Postfix (RimWorld.JobDriver_Meditate __instance) [0x000b2] in <c59dd499aeb24c999d2312ac775921ee>:0 
  at RimWorld.JobDriver_Meditate.MeditationTick () [0x001c8] in <31482697ada14932981abc5e76101d5d>:0 
    - POSTFIX net.avilmask.rimworld.mod.CommonSense: Void CommonSense.JobDriver_MeditationTick_CommonSensePatch:Postfix(JobDriver_Meditate __instance)
  at RimWorld.JobDriver_Meditate.<MakeNewToils>b__16_3 () [0x00127] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.JobDriver.DriverTick () [0x0011c] in <31482697ada14932981abc5e76101d5d>:0 
UnityEngine.StackTraceUtility:ExtractStackTrace ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Log.Error_Patch1 (string)
Verse.AI.JobUtility:TryStartErrorRecoverJob (Verse.Pawn,string,System.Exception,Verse.AI.JobDriver)
Verse.AI.JobDriver:DriverTick ()
Verse.AI.Pawn_JobTracker:JobTrackerTick ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Pawn.Tick_Patch1 (Verse.Pawn)
Verse.Thing:DoTick ()
Verse.TickList:Tick ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.TickManager.DoSingleTick_Patch3 (Verse.TickManager)
Verse.TickManager:TickManagerUpdate ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Game.UpdatePlay_Patch1 (Verse.Game)
Verse.Root_Play:Update ()
```

We've seen this error before with Haul Urgently.

> It is trying to pass the Object Reference (which it couldnt generate because the object is supposed to be invisible or obscured by the Fogged function) over to the Haul Urgently


