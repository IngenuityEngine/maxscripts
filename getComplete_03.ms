fn getRoot node = (
	if isvalidnode node do (
		while node.parent != undefined do node = node.parent
		node
	)
)

fn getFullHierarchy nodes: =
(
	if nodes == unsupplied do nodes = (getCurrentSelection())
	parents = makeUniqueArray (for o in nodes collect (getRoot o))
		
	fullHierarchy = #()
	for p in parents do join fullHierarchy p	
	bundles.wirecolor = random black white
	fullHierarchy
)

fh = getFullHierarchy()
