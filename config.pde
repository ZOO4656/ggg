public abstract class Config {
    // スクリーン横幅
    public int SCREEN_WIDTH = 1200;

    // スクリーン縦幅
    public int SCREEN_HEIGHT = 600;

    // 戦闘フィールドの開始X座標
    public int FIELD_X = 200;

    // 戦闘フィールドの開始Y座標
    public int FIELD_Y = 0;

    // 戦闘フィールドの横幅
    public int FIELD_WIDTH = 800;

    // 戦闘フィールドの縦幅
    public int FIELD_HEIGHT = 440;

    // HUDの開始X座標
    public int HUD_X = 0;

    // HUDの開始Y座標
    public int HUD_Y = 440;

    // HUDの横幅
    public int HUD_WIDTH = 1200;

    // HUDの縦幅
    public int HUD_HEIGHT = 160;

    // フレームをリセットする色
    public int BACKGROUND_RESET_COLOR = 255;

    // ゲームオブジェクトを格納する最大インデックス数
    public int MAX_OBJECT_NUM = 999;

    // タイムレコードを格納する最大インデックス数
    public int MAX_TIME_RECODE_NUM = 99;

    // se_fire_heavy の プレイヤー数
    public int SE_PLAYER_LIMIT_FIRE_HEAVY = 5;

    //se_installation の プレイヤー数
    public int SE_PLAYER_LIMIT_INSTALLATION = 2;
}
