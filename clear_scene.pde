class ClearScene extends Scene {
    @Override
    public void draw() {
        fill(0);
        text("現在クリアシーンです", Config.SCREEN_WIDTH / 2, Config.SCREEN_HEIGHT / 2);
    }
}