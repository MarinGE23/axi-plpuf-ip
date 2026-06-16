# 2026-06-15T22:42:23.314177600
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis-axi-plpuf")

platform = client.get_component(name="platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="plpuf_test_app1")
comp.build()

comp = client.create_app_component(name="plpuf_test_app0",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="plpuf_test_app0")
comp.build()

comp = client.get_component(name="plpuf_test_app0")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../platform/hw/sdt/drivers/axi_plpuf_v1_0/src", files=["axi_plpuf.c", "axi_plpuf.h"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="plpuf_test_app0")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = comp.clean()

status = platform.build()

comp.build()

vitis.dispose()

