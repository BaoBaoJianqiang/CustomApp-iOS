# CustomApp-iOS
#
#ProductA演示的效果
#	什么都不加，基于Core，原始版本
#
#ConfigManager合并core和ProcuctA中的Config，后者覆盖前面的
#
#
#ProductC演示的效果
#	通过Category，修改bundle的地址，指向C中的Bundle，读取其中的xib，以及config文件。
#	新的Module1VC的xib，新增了一个imageView
#
#	另一方面，可以修改config，从而Module1VC，不显示按钮。
#	在Core中，可以通过配置config的方式，让Scenario1Activity的按钮不显示，这需要在Core的Scenario1Activity中，使用else，来隐藏按钮
#
#	第3，通过Category，重写createViews的逻辑，加载Module2_2PageView
#	备注：使用AttachProperty，增加新属性
#
#ProductB演示的效果
#	通过篡改，跳转到其他页面
#
#