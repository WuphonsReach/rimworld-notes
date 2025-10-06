

- [Pawn Gets Stuck](#pawn-gets-stuck)
  - [Initial errors](#initial-errors)
    - [JobDriver threw exception in toil null's initAction for pawn Balcam driver=JobDriver\_MineQuarry](#jobdriver-threw-exception-in-toil-nulls-initaction-for-pawn-balcam-driverjobdriver_minequarry)
    - [Exception in JobDriver fixed tick for pawn Green driver=JobDriver\_Meditate](#exception-in-jobdriver-fixed-tick-for-pawn-green-driverjobdriver_meditate)
    - [Haul Urgently had a similar error in the past](#haul-urgently-had-a-similar-error-in-the-past)
  - [Another set of errors on 10/6](#another-set-of-errors-on-106)
    - [Haul designation has no target! Deleting.](#haul-designation-has-no-target-deleting)
    - [Could not resolve cross refs: System.ArgumentNullException: Value cannot be null.](#could-not-resolve-cross-refs-systemargumentnullexception-value-cannot-be-null)
    - [Thing-needing designation (Haul target=null) had no thing target. Removing...](#thing-needing-designation-haul-targetnull-had-no-thing-target-removing)
    - [JobDriver threw exception in toil null's initAction for pawn Balcam driver=JobDriver\_MineQuarry](#jobdriver-threw-exception-in-toil-nulls-initaction-for-pawn-balcam-driverjobdriver_minequarry-1)
    - [System.NullReferenceException: Object reference not set to an instance of an object](#systemnullreferenceexception-object-reference-not-set-to-an-instance-of-an-object)
    - [System.NullReferenceException: Object reference not set to an instance of an object](#systemnullreferenceexception-object-reference-not-set-to-an-instance-of-an-object-1)
    - [Exception in JobDriver fixed tick for pawn Red driver=JobDriver\_HaulToContainer](#exception-in-jobdriver-fixed-tick-for-pawn-red-driverjobdriver_haultocontainer)
    - [Exception in Verse.TickList.Tick: System.NullReferenceException: Object reference not set to an instance of an object](#exception-in-verseticklisttick-systemnullreferenceexception-object-reference-not-set-to-an-instance-of-an-object)
  - [Removed Alpha Genes mod 10/6](#removed-alpha-genes-mod-106)
    - [System.NullReferenceException: Object reference not set to an instance of an object](#systemnullreferenceexception-object-reference-not-set-to-an-instance-of-an-object-2)
    - [JobDriver threw exception in toil null's initAction for pawn Balcam driver=JobDriver\_MineQuarry](#jobdriver-threw-exception-in-toil-nulls-initaction-for-pawn-balcam-driverjobdriver_minequarry-2)
  - [Patterns Emerge](#patterns-emerge)
  - [Disable Vanilla Psycasts Expanded (No Change)](#disable-vanilla-psycasts-expanded-no-change)
  - [Disable CommonSense Options](#disable-commonsense-options)
    - ["haul ingredients for a bill to stockpile"](#haul-ingredients-for-a-bill-to-stockpile)
    - [Disable CommonSense "pickup all ingredients"](#disable-commonsense-pickup-all-ingredients)
    - [Hypothesis - conflicting pawn work](#hypothesis---conflicting-pawn-work)
  - [More errors](#more-errors)
    - [Exception in JobDriver fixed tick for pawn Entasga driver=JobDriver\_LayDown](#exception-in-jobdriver-fixed-tick-for-pawn-entasga-driverjobdriver_laydown)
  - [Disable Many Harvest and Haul Options](#disable-many-harvest-and-haul-options)


# Pawn Gets Stuck

Seen in 1.6 with the mod list of Oct 5th 2025.  First guess is that it's the quarry mod.  But it's probably something else like Common Sense or a mod that tells the pawn to carry what they harvest.  

## Initial errors

### JobDriver threw exception in toil null's initAction for pawn Balcam driver=JobDriver_MineQuarry

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

### Exception in JobDriver fixed tick for pawn Green driver=JobDriver_Meditate

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

### Haul Urgently had a similar error in the past

We've seen this error before with Haul Urgently.

> It is trying to pass the Object Reference (which it couldnt generate because the object is supposed to be invisible or obscured by the Fogged function) over to the Haul Urgently

## Another set of errors on 10/6

Another set of errors on 10/6 at 5am, seen even with CommonSense at the bottom of the list.  Not all of these errors are specific to the root issue.

### Haul designation has no target! Deleting.

```
Haul designation has no target! Deleting.
UnityEngine.StackTraceUtility:ExtractStackTrace ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Log.Error_Patch1 (string)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Designation.ExposeData_Patch1 (Verse.Designation)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.CrossRefHandler.ResolveAllCrossReferences_Patch1 (Verse.CrossRefHandler)
Verse.ScribeLoader:FinalizeLoading ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Game.LoadGame_Patch3 (Verse.Game)
Verse.SavedGameLoaderNow:LoadGameFromSaveFileNow (string)
Verse.Root_Play/<>c:<Start>b__1_1 ()
Verse.LongEventHandler:RunEventFromAnotherThread (System.Action)
Verse.LongEventHandler/<>c:<UpdateCurrentAsynchronousEvent>b__28_0 ()
System.Threading.ThreadHelper:ThreadStart_Context (object)
System.Threading.ExecutionContext:RunInternal (System.Threading.ExecutionContext,System.Threading.ContextCallback,object,bool)
System.Threading.ExecutionContext:Run (System.Threading.ExecutionContext,System.Threading.ContextCallback,object,bool)
System.Threading.ExecutionContext:Run (System.Threading.ExecutionContext,System.Threading.ContextCallback,object)
System.Threading.ThreadHelper:ThreadStart ()
```

### Could not resolve cross refs: System.ArgumentNullException: Value cannot be null.

```
Could not resolve cross refs: System.ArgumentNullException: Value cannot be null.
Parameter name: key
[Ref 4FE52A0E]
 [0x00006] in <e3b07672ffbd43c1838e1ebbe94cbdf5>:0 
  at System.Collections.Generic.Dictionary`2[TKey,TValue].FindEntry (TKey key) [0x00008] in <e3b07672ffbd43c1838e1ebbe94cbdf5>:0 
  at System.Collections.Generic.Dictionary`2[TKey,TValue].ContainsKey (TKey key) [0x00000] in <e3b07672ffbd43c1838e1ebbe94cbdf5>:0 
  at Verse.DesignationManager.RemoveDesignation (Verse.Designation des) [0x00074] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.Designation.Delete () [0x00006] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.Designation.ExposeData () [0x0007b] in <31482697ada14932981abc5e76101d5d>:0 
    - PREFIX com.github.alandariva.moreplanning: Boolean MorePlanning.Patches.HarmonyPatches:DesignationPlanningExposeData_Prefix(Designation __instance)
  at Verse.CrossRefHandler.ResolveAllCrossReferences () [0x0011b] in <31482697ada14932981abc5e76101d5d>:0 
    - POSTFIX com.rimworld.mod.factioncontrol: Void FactionControl.CrossRefHandler_ResolveAllCrossReferences:Postfix()
UnityEngine.StackTraceUtility:ExtractStackTrace ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Log.Error_Patch1 (string)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.CrossRefHandler.ResolveAllCrossReferences_Patch1 (Verse.CrossRefHandler)
Verse.ScribeLoader:FinalizeLoading ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Game.LoadGame_Patch3 (Verse.Game)
Verse.SavedGameLoaderNow:LoadGameFromSaveFileNow (string)
Verse.Root_Play/<>c:<Start>b__1_1 ()
Verse.LongEventHandler:RunEventFromAnotherThread (System.Action)
Verse.LongEventHandler/<>c:<UpdateCurrentAsynchronousEvent>b__28_0 ()
System.Threading.ThreadHelper:ThreadStart_Context (object)
System.Threading.ExecutionContext:RunInternal (System.Threading.ExecutionContext,System.Threading.ContextCallback,object,bool)
System.Threading.ExecutionContext:Run (System.Threading.ExecutionContext,System.Threading.ContextCallback,object,bool)
System.Threading.ExecutionContext:Run (System.Threading.ExecutionContext,System.Threading.ContextCallback,object)
System.Threading.ThreadHelper:ThreadStart ()
```

### Thing-needing designation (Haul target=null) had no thing target. Removing...

```
Thing-needing designation (Haul target=null) had no thing target. Removing...
UnityEngine.StackTraceUtility:ExtractStackTrace ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Log.Error_Patch1 (string)
Verse.DesignationManager:ExposeData ()
Verse.PostLoadIniter:DoAllPostLoadInits ()
Verse.ScribeLoader:FinalizeLoading ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Game.LoadGame_Patch3 (Verse.Game)
Verse.SavedGameLoaderNow:LoadGameFromSaveFileNow (string)
Verse.Root_Play/<>c:<Start>b__1_1 ()
Verse.LongEventHandler:RunEventFromAnotherThread (System.Action)
Verse.LongEventHandler/<>c:<UpdateCurrentAsynchronousEvent>b__28_0 ()
System.Threading.ThreadHelper:ThreadStart_Context (object)
System.Threading.ExecutionContext:RunInternal (System.Threading.ExecutionContext,System.Threading.ContextCallback,object,bool)
System.Threading.ExecutionContext:Run (System.Threading.ExecutionContext,System.Threading.ContextCallback,object,bool)
System.Threading.ExecutionContext:Run (System.Threading.ExecutionContext,System.Threading.ContextCallback,object)
System.Threading.ThreadHelper:ThreadStart ()
```

### JobDriver threw exception in toil null's initAction for pawn Balcam driver=JobDriver_MineQuarry

```
JobDriver threw exception in toil null's initAction for pawn Balcam driver=JobDriver_MineQuarry (toilIndex=3) driver.job=(UnloadYourHauledInventory (Job_2120671) A = Thing_Human1059)
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

### System.NullReferenceException: Object reference not set to an instance of an object

```
System.NullReferenceException: Object reference not set to an instance of an object
[Ref C0AC79DA]
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
  at RimWorld.Pawn_DraftController.set_Drafted (System.Boolean value) [0x001c8] in <31482697ada14932981abc5e76101d5d>:0 
    - PREFIX OskarPotocki.VanillaTraitsExpanded: Boolean VanillaTraitsExpanded.Drafted_Patch:Prefix(Pawn_DraftController __instance, Boolean& value)
    - POSTFIX PeteTimesSix.SimpleSidearms: Void PeteTimesSix.SimpleSidearms.Intercepts.Pawn_DraftController_Drafted_Setter_Postfix:DraftedSetter(Pawn_DraftController __instance)
    - POSTFIX Mlie.MarkThatPawn: Void MarkThatPawn.Harmony.Pawn_DraftController_Drafted:Postfix(Pawn ___pawn)
    - POSTFIX falconne.AFF: Void AvoidFriendlyFire.Pawn_DraftController_set_Drafted_Patch:Postfix(Pawn_DraftController __instance, Boolean value)
  at RimWorld.Pawn_DraftController.<GetGizmos>b__15_1 () [0x00007] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.Command_Toggle.ProcessInput (UnityEngine.Event ev) [0x00007] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.GizmoGridDrawer.DrawGizmoGrid (System.Collections.Generic.IEnumerable`1[T] gizmos, System.Single startX, Verse.Gizmo& mouseoverGizmo, System.Func`2[T,TResult] customActivatorFunc, System.Func`2[T,TResult] highlightFunc, System.Func`2[T,TResult] lowlightFunc, System.Boolean multipleSelected) [0x007aa] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.GizmoGridDrawer.DrawGizmoGridFor (System.Collections.Generic.IEnumerable`1[T] selectedObjects, Verse.Gizmo& mouseoverGizmo) [0x001c4] in <31482697ada14932981abc5e76101d5d>:0  currentSelectable: null
UnityEngine.StackTraceUtility:ExtractStackTrace ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Log.Error_Patch1 (string)
Verse.Log:ErrorOnce (string,int)
Verse.GizmoGridDrawer:DrawGizmoGridFor (System.Collections.Generic.IEnumerable`1<object>,Verse.Gizmo&)
RimWorld.MapGizmoUtility:MapUIOnGUI ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:RimWorld.MapInterface.MapInterfaceOnGUI_BeforeMainTabs_Patch2 (RimWorld.MapInterface)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:RimWorld.UIRoot_Play.UIRootOnGUI_Patch1 (RimWorld.UIRoot_Play)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Root.OnGUI_Patch2 (Verse.Root)
```

### System.NullReferenceException: Object reference not set to an instance of an object

```
System.NullReferenceException: Object reference not set to an instance of an object
[Ref C0AC79DA]
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
  at RimWorld.Pawn_DraftController.set_Drafted (System.Boolean value) [0x001c8] in <31482697ada14932981abc5e76101d5d>:0 
    - PREFIX OskarPotocki.VanillaTraitsExpanded: Boolean VanillaTraitsExpanded.Drafted_Patch:Prefix(Pawn_DraftController __instance, Boolean& value)
    - POSTFIX PeteTimesSix.SimpleSidearms: Void PeteTimesSix.SimpleSidearms.Intercepts.Pawn_DraftController_Drafted_Setter_Postfix:DraftedSetter(Pawn_DraftController __instance)
    - POSTFIX Mlie.MarkThatPawn: Void MarkThatPawn.Harmony.Pawn_DraftController_Drafted:Postfix(Pawn ___pawn)
    - POSTFIX falconne.AFF: Void AvoidFriendlyFire.Pawn_DraftController_set_Drafted_Patch:Postfix(Pawn_DraftController __instance, Boolean value)
  at RimWorld.Pawn_DraftController.<GetGizmos>b__15_1 () [0x00007] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.Command_Toggle.ProcessInput (UnityEngine.Event ev) [0x00007] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.GizmoGridDrawer.DrawGizmoGrid (System.Collections.Generic.IEnumerable`1[T] gizmos, System.Single startX, Verse.Gizmo& mouseoverGizmo, System.Func`2[T,TResult] customActivatorFunc, System.Func`2[T,TResult] highlightFunc, System.Func`2[T,TResult] lowlightFunc, System.Boolean multipleSelected) [0x007aa] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.GizmoGridDrawer.DrawGizmoGridFor (System.Collections.Generic.IEnumerable`1[T] selectedObjects, Verse.Gizmo& mouseoverGizmo) [0x001c4] in <31482697ada14932981abc5e76101d5d>:0  currentSelectable: null
UnityEngine.StackTraceUtility:ExtractStackTrace ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Log.Error_Patch1 (string)
Verse.Log:ErrorOnce (string,int)
Verse.GizmoGridDrawer:DrawGizmoGridFor (System.Collections.Generic.IEnumerable`1<object>,Verse.Gizmo&)
RimWorld.MapGizmoUtility:MapUIOnGUI ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:RimWorld.MapInterface.MapInterfaceOnGUI_BeforeMainTabs_Patch2 (RimWorld.MapInterface)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:RimWorld.UIRoot_Play.UIRootOnGUI_Patch1 (RimWorld.UIRoot_Play)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Root.OnGUI_Patch2 (Verse.Root)
```

### Exception in JobDriver fixed tick for pawn Red driver=JobDriver_HaulToContainer

```
Exception in JobDriver fixed tick for pawn Red driver=JobDriver_HaulToContainer (toilIndex=0) driver.job=(UnloadYourHauledInventory (Job_2145833) A = Thing_Human1071)
System.NullReferenceException: Object reference not set to an instance of an object
[Ref 7ACD28F5]
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
  at Verse.AI.JobDriver.TryActuallyStartNextToil () [0x000df] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.JobDriver.ReadyForNextToil () [0x00007] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.JobDriver.DriverTick () [0x0003e] in <31482697ada14932981abc5e76101d5d>:0 
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

### Exception in Verse.TickList.Tick: System.NullReferenceException: Object reference not set to an instance of an object

```
Exception in Verse.TickList.Tick: System.NullReferenceException: Object reference not set to an instance of an object
[Ref 8E127AF6]
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
  at Verse.AI.Pawn_JobTracker.JobTrackerTickInterval (System.Int32 delta) [0x001c4] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.Pawn.TickInterval (System.Int32 delta) [0x00050] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.Thing.DoTick () [0x000eb] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.TickList.Tick () [0x00157] in <31482697ada14932981abc5e76101d5d>:0 
    - TRANSPILER net.pardeike.rimworld.lib.harmony: IEnumerable`1 VisualExceptions.ExceptionsAndActivatorHandler:Transpiler(IEnumerable`1 instructions, MethodBase original)
```

## Removed Alpha Genes mod 10/6

Removing this from the game to see if this deals with the issue.

### System.NullReferenceException: Object reference not set to an instance of an object

Seen after removing Alpha Genes mod.  This probably points to something in the Common Sense mod?

```
Exception ticking Entasga (at (289, 0, 63)): System.NullReferenceException: Object reference not set to an instance of an object
[Ref A55FF508]
  at Verse.GridsUtility.Fogged (Verse.Thing t) [0x00006] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.HaulAIUtility.PawnCanAutomaticallyHaulFast (Verse.Pawn p, Verse.Thing t, System.Boolean forced) [0x00000] in <31482697ada14932981abc5e76101d5d>:0 
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
  at Verse.AI.Pawn_JobTracker.JobTrackerTickInterval (System.Int32 delta) [0x001c4] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.Pawn.TickInterval (System.Int32 delta) [0x00050] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.Thing.DoTick () [0x000eb] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.TickList.Tick () [0x00157] in <31482697ada14932981abc5e76101d5d>:0 
    - TRANSPILER net.pardeike.rimworld.lib.harmony: IEnumerable`1 VisualExceptions.ExceptionsAndActivatorHandler:Transpiler(IEnumerable`1 instructions, MethodBase original)
UnityEngine.StackTraceUtility:ExtractStackTrace ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Log.Error_Patch2 (string)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.TickList.Tick_Patch1 (Verse.TickList)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.TickManager.DoSingleTick_Patch4 (Verse.TickManager)
Verse.TickManager:TickManagerUpdate ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Game.UpdatePlay_Patch2 (Verse.Game)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Root_Play.Update_Patch1 (Verse.Root_Play)
```

### JobDriver threw exception in toil null's initAction for pawn Balcam driver=JobDriver_MineQuarry

```
JobDriver threw exception in toil null's initAction for pawn Balcam driver=JobDriver_MineQuarry (toilIndex=3) driver.job=(UnloadYourHauledInventory (Job_2320305) A = Thing_Human1059)
System.NullReferenceException: Object reference not set to an instance of an object
[Ref DACB788F]
  at Verse.GridsUtility.Fogged (Verse.Thing t) [0x00006] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.HaulAIUtility.PawnCanAutomaticallyHaulFast (Verse.Pawn p, Verse.Thing t, System.Boolean forced) [0x00000] in <31482697ada14932981abc5e76101d5d>:0 
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
  at Verse.AI.JobDriver.TryActuallyStartNextToil () [0x00208] in <31482697ada14932981abc5e76101d5d>:0 
    - TRANSPILER net.pardeike.rimworld.lib.harmony: IEnumerable`1 VisualExceptions.ExceptionsAndActivatorHandler:Transpiler(IEnumerable`1 instructions, MethodBase original)
UnityEngine.StackTraceUtility:ExtractStackTrace ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Log.Error_Patch2 (string)
Verse.AI.JobUtility:TryStartErrorRecoverJob (Verse.Pawn,string,System.Exception,Verse.AI.JobDriver)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.AI.JobDriver.TryActuallyStartNextToil_Patch1 (Verse.AI.JobDriver)
Verse.AI.JobDriver:ReadyForNextToil ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.AI.JobDriver.TryActuallyStartNextToil_Patch1 (Verse.AI.JobDriver)
Verse.AI.JobDriver:ReadyForNextToil ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.AI.JobDriver.DriverTick_Patch1 (Verse.AI.JobDriver)
Verse.AI.Pawn_JobTracker:JobTrackerTick ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Pawn.Tick_Patch1 (Verse.Pawn)
Verse.Thing:DoTick ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.TickList.Tick_Patch1 (Verse.TickList)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.TickManager.DoSingleTick_Patch4 (Verse.TickManager)
Verse.TickManager:TickManagerUpdate ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Game.UpdatePlay_Patch2 (Verse.Game)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Root_Play.Update_Patch1 (Verse.Root_Play)
```

## Patterns Emerge

- `Pawn_JobTracker_StartJob_CommonSensePatch`
- `Verse.GridsUtility.Fogged`

The [fix for this in the "RimworldAllowTool" was a null check](https://github.com/UnlimitedHugs/RimworldAllowTool/pull/56/files#diff-5b78c6ac1df3320a2900363dc1d190db73865b27a174a5495b23f49a89f9e696L42-L44).

## Disable Vanilla Psycasts Expanded (No Change)

See if this makes a difference.

Nope.

That rules out Vanilla Psycasts Expanded and Alpha Genes.

```
Exception ticking Balcam (at (268, 0, 70)): System.NullReferenceException: Object reference not set to an instance of an object
[Ref B3F2734B]
  at Verse.GridsUtility.Fogged (Verse.Thing t) [0x00006] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.HaulAIUtility.PawnCanAutomaticallyHaulFast (Verse.Pawn p, Verse.Thing t, System.Boolean forced) [0x00000] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.Pawn_JobTracker.TryOpportunisticJob (Verse.AI.Job finalizerJob, Verse.AI.Job job) [0x00188] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.Pawn_JobTracker.StartJob (Verse.AI.Job newJob, Verse.AI.JobCondition lastJobEndCondition, Verse.AI.ThinkNode jobGiver, System.Boolean resumeCurJobAfterwards, System.Boolean cancelBusyStances, Verse.ThinkTreeDef thinkTree, System.Nullable`1[T] tag, System.Boolean fromQueue, System.Boolean canReturnCurJobToPool, System.Nullable`1[T] keepCarryingThingOverride, System.Boolean continueSleeping, System.Boolean addToJobsThisTick, System.Boolean preToilReservationsCanFail) [0x00487] in <31482697ada14932981abc5e76101d5d>:0 
    - PREFIX net.avilmask.rimworld.mod.CommonSense: Boolean CommonSense.OpportunisticTasks+Pawn_JobTracker_StartJob_CommonSensePatch:Prefix(Pawn_JobTracker_Crutch& __instance, Job newJob, Boolean fromQueue)
    - PREFIX OskarPotocki.VanillaTraitsExpanded: Boolean VanillaTraitsExpanded.StartJob_Patch:Prefix(Pawn ___pawn, Job newJob, JobCondition lastJobEndCondition)
  at Verse.AI.Pawn_JobTracker.TryFindAndStartJob () [0x000bd] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.Pawn_JobTracker.EndCurrentJob (Verse.AI.JobCondition condition, System.Boolean startNewJob, System.Boolean canReturnToPool) [0x002a7] in <31482697ada14932981abc5e76101d5d>:0 
    - PREFIX net.avilmask.rimworld.mod.CommonSense: Boolean CommonSense.OpportunisticTasks+Pawn_JobTracker_EndCurrentJob_CommonSensePatch:Prefix(Pawn_JobTracker_Crutch __instance, JobCondition condition)
    - PREFIX kathanon.ImpressionableChildren: Void ImpressionableChildren.Learning_Patches:EndCurrentJob(Pawn ___pawn, JobDriver ___curDriver)
    - PREFIX Ilarion.BulkLoadForTransporters: Void BulkLoadForTransporters.HarmonyPatches.LoadTransporters.Pawn_JobTracker_EndCurrentJob_Patch:Prefix(Pawn_JobTracker __instance, JobCondition condition, Pawn ___pawn)
  at Verse.AI.Pawn_JobTracker.JobTrackerTickInterval (System.Int32 delta) [0x001c4] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.Pawn.TickInterval (System.Int32 delta) [0x00050] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.Thing.DoTick () [0x000eb] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.TickList.Tick () [0x00157] in <31482697ada14932981abc5e76101d5d>:0 
    - TRANSPILER net.pardeike.rimworld.lib.harmony: IEnumerable`1 VisualExceptions.ExceptionsAndActivatorHandler:Transpiler(IEnumerable`1 instructions, MethodBase original)
UnityEngine.StackTraceUtility:ExtractStackTrace ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Log.Error_Patch2 (string)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.TickList.Tick_Patch1 (Verse.TickList)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.TickManager.DoSingleTick_Patch4 (Verse.TickManager)
Verse.TickManager:TickManagerUpdate ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Game.UpdatePlay_Patch2 (Verse.Game)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Root_Play.Update_Patch1 (Verse.Root_Play)
```

## Disable CommonSense Options

### "haul ingredients for a bill to stockpile"

Maybe?  Negative.

### Disable CommonSense "pickup all ingredients"

Maybe? Probably not. Negative.

### Hypothesis - conflicting pawn work

Could it be that two pawns are trying to do the same job at the same time?

Better guess, it's when a pawn goes to switch to a different job.  Which might point back to opportunistic jobs.

## More errors

### Exception in JobDriver fixed tick for pawn Entasga driver=JobDriver_LayDown


```
Exception in JobDriver fixed tick for pawn Entasga driver=JobDriver_LayDown (toilIndex=2) driver.job=(LayDown (Job_5865962) A = Thing_Bedroll114754 Giver = JobGiver_GetRest [workGiverDef: null])
System.NullReferenceException: Object reference not set to an instance of an object
[Ref A0E43A0A]
  at Verse.GridsUtility.Fogged (Verse.Thing t) [0x00006] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.HaulAIUtility.PawnCanAutomaticallyHaulFast (Verse.Pawn p, Verse.Thing t, System.Boolean forced) [0x00000] in <31482697ada14932981abc5e76101d5d>:0 
    - TRANSPILER com.alphagenes: IEnumerable`1 AlphaGenes.AlphaGenes_HaulAIUtility_PawnCanAutomaticallyHaulFast:Transpiler(IEnumerable`1 instructions, ILGenerator generator)
  at Verse.AI.Pawn_JobTracker.TryOpportunisticJob (Verse.AI.Job finalizerJob, Verse.AI.Job job) [0x00188] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.Pawn_JobTracker.StartJob (Verse.AI.Job newJob, Verse.AI.JobCondition lastJobEndCondition, Verse.AI.ThinkNode jobGiver, System.Boolean resumeCurJobAfterwards, System.Boolean cancelBusyStances, Verse.ThinkTreeDef thinkTree, System.Nullable`1[T] tag, System.Boolean fromQueue, System.Boolean canReturnCurJobToPool, System.Nullable`1[T] keepCarryingThingOverride, System.Boolean continueSleeping, System.Boolean addToJobsThisTick, System.Boolean preToilReservationsCanFail) [0x004a9] in <31482697ada14932981abc5e76101d5d>:0 
    - PREFIX net.avilmask.rimworld.mod.CommonSense: Boolean CommonSense.OpportunisticTasks+Pawn_JobTracker_StartJob_CommonSensePatch:Prefix(Pawn_JobTracker_Crutch& __instance, Job newJob, Boolean fromQueue)
    - PREFIX OskarPotocki.VanillaPsycastsExpanded: Boolean VanillaPsycastsExpanded.Pawn_JobTracker_StartJob_Patch:Prefix(Pawn_JobTracker __instance, Pawn ___pawn, Job newJob, Nullable`1 tag)
    - PREFIX OskarPotocki.VanillaTraitsExpanded: Boolean VanillaTraitsExpanded.StartJob_Patch:Prefix(Pawn ___pawn, Job newJob, JobCondition lastJobEndCondition)
  at Verse.AI.Pawn_JobTracker.CheckForJobOverride (System.Single minPriority, System.Boolean ignoreQueue) [0x0007a] in <31482697ada14932981abc5e76101d5d>:0 
  at RimWorld.Toils_LayDown+<>c__DisplayClass6_0.<LayDown>b__1 () [0x000cc] in <31482697ada14932981abc5e76101d5d>:0 
  at Verse.AI.JobDriver.DriverTick () [0x001a3] in <31482697ada14932981abc5e76101d5d>:0 
    - TRANSPILER net.pardeike.rimworld.lib.harmony: IEnumerable`1 VisualExceptions.ExceptionsAndActivatorHandler:Transpiler(IEnumerable`1 instructions, MethodBase original)
UnityEngine.StackTraceUtility:ExtractStackTrace ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Log.Error_Patch2 (string)
Verse.AI.JobUtility:TryStartErrorRecoverJob (Verse.Pawn,string,System.Exception,Verse.AI.JobDriver)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.AI.JobDriver.DriverTick_Patch1 (Verse.AI.JobDriver)
Verse.AI.Pawn_JobTracker:JobTrackerTick ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Pawn.Tick_Patch1 (Verse.Pawn)
Verse.Thing:DoTick ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.TickList.Tick_Patch1 (Verse.TickList)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.TickManager.DoSingleTick_Patch4 (Verse.TickManager)
Verse.TickManager:TickManagerUpdate ()
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Game.UpdatePlay_Patch2 (Verse.Game)
(wrapper dynamic-method) MonoMod.Utils.DynamicMethodDefinition:Verse.Root_Play.Update_Patch1 (Verse.Root_Play)
```

## Disable Many Harvest and Haul Options

Try disabling everything on the "work" tab in "Harvest and Haul" options.



