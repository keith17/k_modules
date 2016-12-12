exports.makeLayersVisible = (layerGroup) ->
	layerGroup.visible = true
	for layer in layerGroup.children
		layer.visible = true
		if layer.children.length > 0
			for l in layer.children
				l.visible = true

exports.makeSketchLayersAllHidden = (sketchImported) ->
	for name, layer of sketchImported
		layer.visible = false

exports.setLayerProperties = (layer, properties) ->
	for prop, value of properties
		layer[prop] = value
