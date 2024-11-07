import { router } from '@kit.ArkUI';

@Entry
@Component
struct LoginPage {
  @State message: string = 'Hello World';

  build() {
    Column({ space: 20 }) { // 组件间的间距
      Text('<返回')
        .onClick(() => {
          router.back()
        })
      Image($r('app.media.app_icon'))
        .width(100)
        .borderRadius(100)
      TextInput({
        placeholder: '请输入用户名'
      })
      TextInput({
        placeholder: '请输入密码',
      })
        .type(InputType.Password)
      Button('登录')
        .width('100%')
      Row({ space: 10 }) {
        Text('注册')
        Text('忘记密码')
      }
    }
    .height('100%')
    .width('100%')
    .padding({
      left: 20,
      right: 20
    })
  }
}