import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;

import mods.gregtech.IControllerTile;

import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.functions.IRunOverclockingLogicFunction;
import mods.gregtech.recipe.IRecipeLogic;
import mods.gregtech.recipe.IRecipe;

import crafttweaker.world.IFacing;

val neutronium_collector_t5 = Builder.start("mbt:neutronium_collector_t5")
	.withPattern(function(controller as IControllerTile) as IBlockPattern {
						return FactoryBlockPattern.start()
							.aisle("CCC", "CCC", "CCC")
							.aisle("CCC", "CCC", "CCC")
							.aisle("CSC", "CCC", "CCC")
							.where('S', controller.self())
							.where('C', CTPredicate.states(<blockstate:contenttweaker:neutronium_collector_casing>)
              			  			| CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMaxGlobalLimited(1).setPreviewCount(1)
            			  			| CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setPreviewCount(1)
									| CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMaxGlobalLimited(1).setPreviewCount(1))
							.build();
						} as IPatternBuilderFunction)
						.withRecipeMap(
							FactoryRecipeMap.start("neutronium_collector_t5")
							.minInputs(1)
							.maxInputs(1)
							.minOutputs(1)
							.maxOutputs(1)
							.build())
						.withBaseTexture(<blockstate:contenttweaker:neutronium_collector_casing>)
    					.buildAndRegister();
						
					neutronium_collector_t5.hasMufflerMechanics = false;
					neutronium_collector_t5.hasMaintenanceMechanics = false;
	
neutronium_collector_t5.recipeMap
	.recipeBuilder()
	.duration(8400)
	.EUt(262144)
	.notConsumable(<avaritia:neutron_collector>)
	.outputs(<avaritia:resource:2>)
	.buildAndRegister();