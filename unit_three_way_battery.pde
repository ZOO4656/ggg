/**
 * 3way砲台
 */
class UnitThreeWayBattery extends UnitCombat implements Gun {
    public int power_x;
    public Sound se;

    public UnitThreeWayBattery(String direction) {
        this.width = 20;
        this.height = 20;
        this.action_interval_ms = 5000;
        this.name = "three_way_battery";
        this.type = "unit";
        this.se = new Sound("se_fire_heavy.mp3");
        if (direction == "right") {
            this.power_x = 15;
        } else {
            this.power_x = -15;
        }
    }

    public void action() {
        this.fire();
    }

    public void fire() {
        this.se.play();
        game.spawn(new Bullet(this.x, this.y, this.power_x, 4));
        game.spawn(new Bullet(this.x, this.y, this.power_x, 0));
        game.spawn(new Bullet(this.x, this.y, this.power_x, -4));
    }
}
