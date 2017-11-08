///Starting Variables

///Controls
upControl = ord("W");
downControl = ord("S");
leftControl = ord("A");
rightControl = ord("D");

///Stats
pickupRange = global.tileSize; //Must be within a tiles distance of an item to pick it up

moveSpeed = 8;

///Misc


currentTileRow = 0;
currentTileColumn = 0;

depth = -99;

CurrentPlayerTile();
