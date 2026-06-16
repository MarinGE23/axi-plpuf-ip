# 2026-06-15T23:12:45.551895
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis-axi-plpuf")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="plpuf_test_app0")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp = client.get_component(name="plpuf_test_app1")
comp.build()

vitis.dispose()

