## Adds a effect using macro
data modify storage helper:raycast/display actionbar append value " "
$data modify storage helper:raycast/display actionbar append value {"score":{"name":"#$(effect)","objective":"var"},"color":"$(color)"}
$data modify storage helper:raycast/display actionbar append value {text:"$(icon)",color:"$(color)"}