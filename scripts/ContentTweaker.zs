#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;

var black_hole_casing = VanillaFactory.createBlock("black_hole_casing", <blockmaterial:iron>);
black_hole_casing.register(); 

var neutronium_collector_casing = VanillaFactory.createBlock("neutronium_collector_casing", <blockmaterial:iron>);
neutronium_collector_casing.register();