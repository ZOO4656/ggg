/**
 * GameObjectのうち、何かを装備したりできるもの
 */
abstract class Mob extends GameObject {
    public boolean lock_up    = false;
    public boolean lock_down  = false;
    public boolean lock_right = false;
    public boolean lock_left  = false;
    public int cost;
    public int hp = 1;
    public String direction;

    public void onHit(GameObject object) {
        this.lock_left  = object.x + object.width > this.x;
        this.lock_right = object.x < this.x + this.width;
        this.lock_up    = object.y + object.height > this.y;
        this.lock_down  = object.y < this.y + this.height;

        if (this.lock_right && this.lock_left) {
            if (object.x > this.x) {
                this.lock_left = false;
            } else {
                this.lock_right = false;
            }
        }

        if (this.lock_up && this.lock_down) {
            if (object.y > this.y) {
                this.lock_up = false;
            } else {
                this.lock_down = false;
            }
        }

        switch (object.type) {
            case "bullet":
                Bullet bullet = (Bullet)object;
                this.hp -= bullet.attack;
                object.destroy();
                break;
        }

        if (this.hp <= 0) {
            this.destroy();
        }
    }

    public void unlock() {
        this.lock_left  = false;
        this.lock_right = false;
        this.lock_up    = false;
        this.lock_down  = false;
    }

    /**
     * ディレクションを設定する
     */
    public Mob setDirection(String direction) {
        this.direction = direction;
        return this;
    }
}
