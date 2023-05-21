class ChangeLanguge {
  static change(state) {
    if (state == 1) {
      state = 0;
      return state;
    } else if (state == 0) {
      return 1;
    }
  }
}
