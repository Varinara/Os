mkdir Lab6 2> NUL
wmic os get Caption > Lab6\wmicCaption.txt 
wmic os get FreePhysicalMemory,TotalVisibleMemorySize > Lab6\wmicMemory.txt 
wmic logicaldisk get name,description > Lab6\wmicDiscs.txt
