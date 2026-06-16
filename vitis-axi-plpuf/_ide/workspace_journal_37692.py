# 2026-04-02T01:41:49.593069500
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis-axi-plpuf")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../vivado-axi-plpuf/design_1_wrapper.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="plpuf_test_app1",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="plpuf_test_app1")
comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="plpuf_test_app1")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../platform/hw/sdt/drivers/axi_plpuf_v1_0/src", files=["axi_plpuf.c", "axi_plpuf.h"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="plpuf_test_app1")
comp.build()

status = platform.build()

comp.build()

comp = client.create_app_component(name="plpuf_test_app2",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="plpuf_test_app2")
comp.build()

status = platform.build()

comp.build()

comp = client.get_component(name="plpuf_test_app2")
status = comp.import_files(from_loc="$COMPONENT_LOCATION/../platform/hw/sdt/drivers/axi_plpuf_v1_0/src", files=["axi_plpuf.c", "axi_plpuf.h"], dest_dir_in_cmp = "src")

status = platform.build()

comp = client.get_component(name="plpuf_test_app2")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

