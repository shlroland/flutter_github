/**
 * Redux 全局State
 * Date: 2020年12月29日17:01:00
 */

class DefaultState {
  dynamic userInfo;

  dynamic themeData;

  dynamic locale;

  dynamic platformLocale;

  bool login;

  DefaultState(
      {this.userInfo,
      this.themeData,
      this.locale,
      this.platformLocale,
      this.login});
}

///创建 Reducer
///我们自定义了 appReducer 用于创建 store
DefaultState appReducer(DefaultState state, action) {
  
}
