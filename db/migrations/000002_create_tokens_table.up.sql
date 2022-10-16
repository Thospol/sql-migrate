CREATE TABLE "tokens" (
  "id" BIGSERIAL PRIMARY KEY NOT NULL,
  "created_at" timestamp NOT NULL,
  "updated_at" timestamp NOT NULL,
  "deleted_at" timestamp DEFAULT null,
  "user_id" bigint,
  "refresh_token" varchar
);

COMMENT ON TABLE "tokens" IS 'ข้อมูล Token';

COMMENT ON COLUMN "tokens"."id" IS 'ไอดี';

COMMENT ON COLUMN "tokens"."created_at" IS 'วันเวลาที่สร้าง';

COMMENT ON COLUMN "tokens"."updated_at" IS 'วันเวลาที่อัพเดตล่าสุด';

COMMENT ON COLUMN "tokens"."deleted_at" IS 'วันเวลาที่ลบ';

COMMENT ON COLUMN "tokens"."user_id" IS 'รหัสผู้ใช้งาน';

COMMENT ON COLUMN "tokens"."refresh_token" IS 'รีเฟรช Token';
