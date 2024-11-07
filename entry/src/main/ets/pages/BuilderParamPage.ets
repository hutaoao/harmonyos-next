import SonCom1 from './components/SonCom1'
import SonCom2 from './components/SonCom2'

@Entry
@Component
struct BuilderParamPage {
  @State message: string = 'Hello World';

  @Builder
  tMyBuilder() {
    Button('我是传递进去的UI11/可以理解为插槽1')
  }

  @Builder
  cMyBuilder() {
    Button('我是传递进去的UI22/可以理解为插槽2')
  }

  build() {
    Column({ space: 10 }) {
      SonCom1()
      Divider().height(20)
      SonCom1() {
        Button('我是传递进去的UI/单个@BuilderParam')
      }

      Divider().height(20)
      SonCom2({
        tBuilder: this.tMyBuilder,
        cBuilder: this.cMyBuilder
      })
    }
    .height('100%')
    .width('100%')
  }
}