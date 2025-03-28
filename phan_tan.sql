PGDMP                       }            CHTL    17.4    17.4    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16388    CHTL    DATABASE     l   CREATE DATABASE "CHTL" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
    DROP DATABASE "CHTL";
                     postgres    false                        2615    16593    hcm    SCHEMA        CREATE SCHEMA hcm;
    DROP SCHEMA hcm;
                     postgres    false                        2615    16594    hn    SCHEMA        CREATE SCHEMA hn;
    DROP SCHEMA hn;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    5                        1259    16701    chi_tiet_giao_dich    TABLE     1  CREATE TABLE hcm.chi_tiet_giao_dich (
    machitiet integer NOT NULL,
    magiaodich integer,
    masanpham integer,
    soluong integer NOT NULL,
    giaban numeric(10,2) NOT NULL,
    mavung character varying(10),
    CONSTRAINT chi_tiet_giao_dich_mavung_check CHECK (((mavung)::text = 'HCM'::text))
);
 #   DROP TABLE hcm.chi_tiet_giao_dich;
       hcm         heap r       postgres    false    7            �            1259    16700     chi_tiet_giao_dich_machitiet_seq    SEQUENCE     �   CREATE SEQUENCE hcm.chi_tiet_giao_dich_machitiet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE hcm.chi_tiet_giao_dich_machitiet_seq;
       hcm               postgres    false    256    7            �           0    0     chi_tiet_giao_dich_machitiet_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE hcm.chi_tiet_giao_dich_machitiet_seq OWNED BY hcm.chi_tiet_giao_dich.machitiet;
          hcm               postgres    false    255                       1259    16738    chi_tiet_nhap_hang    TABLE     $  CREATE TABLE hcm.chi_tiet_nhap_hang (
    maphieunhap integer NOT NULL,
    masanpham integer NOT NULL,
    soluong integer NOT NULL,
    dongia numeric(10,2) NOT NULL,
    mavung character varying(10),
    CONSTRAINT chi_tiet_nhap_hang_mavung_check CHECK (((mavung)::text = 'HCM'::text))
);
 #   DROP TABLE hcm.chi_tiet_nhap_hang;
       hcm         heap r       postgres    false    7                       1259    16773    chi_tiet_xuat_hang    TABLE       CREATE TABLE hcm.chi_tiet_xuat_hang (
    maphieuxuat integer NOT NULL,
    masanpham integer NOT NULL,
    soluong integer NOT NULL,
    mavung character varying(10),
    CONSTRAINT chi_tiet_xuat_hang_mavung_check CHECK (((mavung)::text = 'HCM'::text))
);
 #   DROP TABLE hcm.chi_tiet_xuat_hang;
       hcm         heap r       postgres    false    7            �            1259    16617    cua_hang    TABLE     9  CREATE TABLE hcm.cua_hang (
    macuahang integer NOT NULL,
    tencuahang character varying(255) NOT NULL,
    diachi character varying(255) NOT NULL,
    sodienthoai character varying(15) NOT NULL,
    mavung character varying(10),
    CONSTRAINT cua_hang_mavung_check CHECK (((mavung)::text = 'HCM'::text))
);
    DROP TABLE hcm.cua_hang;
       hcm         heap r       postgres    false    7            �            1259    16616    cua_hang_macuahang_seq    SEQUENCE     �   CREATE SEQUENCE hcm.cua_hang_macuahang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE hcm.cua_hang_macuahang_seq;
       hcm               postgres    false    244    7            �           0    0    cua_hang_macuahang_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE hcm.cua_hang_macuahang_seq OWNED BY hcm.cua_hang.macuahang;
          hcm               postgres    false    243            �            1259    16688    giao_dich_ban_hang    TABLE     8  CREATE TABLE hcm.giao_dich_ban_hang (
    magiaodich integer NOT NULL,
    makhachhang integer,
    tongtien numeric(10,2) NOT NULL,
    phuongthucthanhtoan character varying(50) NOT NULL,
    mavung character varying(10),
    CONSTRAINT giao_dich_ban_hang_mavung_check CHECK (((mavung)::text = 'HCM'::text))
);
 #   DROP TABLE hcm.giao_dich_ban_hang;
       hcm         heap r       postgres    false    7            �            1259    16687 !   giao_dich_ban_hang_magiaodich_seq    SEQUENCE     �   CREATE SEQUENCE hcm.giao_dich_ban_hang_magiaodich_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE hcm.giao_dich_ban_hang_magiaodich_seq;
       hcm               postgres    false    7    254            �           0    0 !   giao_dich_ban_hang_magiaodich_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE hcm.giao_dich_ban_hang_magiaodich_seq OWNED BY hcm.giao_dich_ban_hang.magiaodich;
          hcm               postgres    false    253            �            1259    16627 
   khach_hang    TABLE     m  CREATE TABLE hcm.khach_hang (
    makhachhang integer NOT NULL,
    sodienthoai character varying(15) NOT NULL,
    email character varying(255),
    diemthanthiet integer DEFAULT 0,
    ngaytao timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    mavung character varying(10),
    CONSTRAINT khach_hang_mavung_check CHECK (((mavung)::text = 'HCM'::text))
);
    DROP TABLE hcm.khach_hang;
       hcm         heap r       postgres    false    7            �            1259    16626    khach_hang_makhachhang_seq    SEQUENCE     �   CREATE SEQUENCE hcm.khach_hang_makhachhang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE hcm.khach_hang_makhachhang_seq;
       hcm               postgres    false    246    7            �           0    0    khach_hang_makhachhang_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE hcm.khach_hang_makhachhang_seq OWNED BY hcm.khach_hang.makhachhang;
          hcm               postgres    false    245            �            1259    16639    kho_hang    TABLE     �   CREATE TABLE hcm.kho_hang (
    makho integer NOT NULL,
    macuahang integer,
    soluonghientai integer NOT NULL,
    mavung character varying(10),
    CONSTRAINT kho_hang_mavung_check CHECK (((mavung)::text = 'HCM'::text))
);
    DROP TABLE hcm.kho_hang;
       hcm         heap r       postgres    false    7            �            1259    16638    kho_hang_makho_seq    SEQUENCE     �   CREATE SEQUENCE hcm.kho_hang_makho_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE hcm.kho_hang_makho_seq;
       hcm               postgres    false    7    248            �           0    0    kho_hang_makho_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE hcm.kho_hang_makho_seq OWNED BY hcm.kho_hang.makho;
          hcm               postgres    false    247            �            1259    16653 
   nguoi_dung    TABLE     �  CREATE TABLE hcm.nguoi_dung (
    manguoidung integer NOT NULL,
    tendangnhap character varying(50) NOT NULL,
    matkhau character varying(255) NOT NULL,
    mavaitro integer,
    macuahang integer,
    trangthai character varying(50) DEFAULT 'active'::character varying,
    mavung character varying(10),
    CONSTRAINT nguoi_dung_mavung_check CHECK (((mavung)::text = 'HCM'::text))
);
    DROP TABLE hcm.nguoi_dung;
       hcm         heap r       postgres    false    7            �            1259    16652    nguoi_dung_manguoidung_seq    SEQUENCE     �   CREATE SEQUENCE hcm.nguoi_dung_manguoidung_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE hcm.nguoi_dung_manguoidung_seq;
       hcm               postgres    false    250    7            �           0    0    nguoi_dung_manguoidung_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE hcm.nguoi_dung_manguoidung_seq OWNED BY hcm.nguoi_dung.manguoidung;
          hcm               postgres    false    249                       1259    16719    phieu_nhap_hang    TABLE     O  CREATE TABLE hcm.phieu_nhap_hang (
    maphieunhap integer NOT NULL,
    makho integer,
    manguoidung integer,
    ngaynhap timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    tongsoluong integer NOT NULL,
    mavung character varying(10),
    CONSTRAINT phieu_nhap_hang_mavung_check CHECK (((mavung)::text = 'HCM'::text))
);
     DROP TABLE hcm.phieu_nhap_hang;
       hcm         heap r       postgres    false    7                       1259    16718    phieu_nhap_hang_maphieunhap_seq    SEQUENCE     �   CREATE SEQUENCE hcm.phieu_nhap_hang_maphieunhap_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE hcm.phieu_nhap_hang_maphieunhap_seq;
       hcm               postgres    false    7    258            �           0    0    phieu_nhap_hang_maphieunhap_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE hcm.phieu_nhap_hang_maphieunhap_seq OWNED BY hcm.phieu_nhap_hang.maphieunhap;
          hcm               postgres    false    257                       1259    16755    phieu_xuat_hang    TABLE     Q  CREATE TABLE hcm.phieu_xuat_hang (
    maphieuxuat integer NOT NULL,
    makho integer,
    manguoidung integer,
    ngayxuat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    mucdich character varying(255),
    mavung character varying(10),
    CONSTRAINT phieu_xuat_hang_mavung_check CHECK (((mavung)::text = 'HCM'::text))
);
     DROP TABLE hcm.phieu_xuat_hang;
       hcm         heap r       postgres    false    7                       1259    16754    phieu_xuat_hang_maphieuxuat_seq    SEQUENCE     �   CREATE SEQUENCE hcm.phieu_xuat_hang_maphieuxuat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE hcm.phieu_xuat_hang_maphieuxuat_seq;
       hcm               postgres    false    7    261            �           0    0    phieu_xuat_hang_maphieuxuat_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE hcm.phieu_xuat_hang_maphieuxuat_seq OWNED BY hcm.phieu_xuat_hang.maphieuxuat;
          hcm               postgres    false    260            �            1259    16669    ton_kho    TABLE       CREATE TABLE hcm.ton_kho (
    matonkho integer NOT NULL,
    masanpham integer,
    macuahang integer,
    soluong integer NOT NULL,
    muctontoithieu integer DEFAULT 0,
    mavung character varying(10),
    CONSTRAINT ton_kho_mavung_check CHECK (((mavung)::text = 'HCM'::text))
);
    DROP TABLE hcm.ton_kho;
       hcm         heap r       postgres    false    7            �            1259    16668    ton_kho_matonkho_seq    SEQUENCE     �   CREATE SEQUENCE hcm.ton_kho_matonkho_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE hcm.ton_kho_matonkho_seq;
       hcm               postgres    false    7    252            �           0    0    ton_kho_matonkho_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE hcm.ton_kho_matonkho_seq OWNED BY hcm.ton_kho.matonkho;
          hcm               postgres    false    251                       1259    16907    chi_tiet_nhap_hang    TABLE     "  CREATE TABLE hn.chi_tiet_nhap_hang (
    maphieunhap integer NOT NULL,
    masanpham integer NOT NULL,
    soluong integer NOT NULL,
    dongia numeric(10,2) NOT NULL,
    mavung character varying(10),
    CONSTRAINT chi_tiet_nhap_hang_mavung_check CHECK (((mavung)::text = 'HN'::text))
);
 "   DROP TABLE hn.chi_tiet_nhap_hang;
       hn         heap r       postgres    false    8                       1259    16942    chi_tiet_xuat_hang    TABLE     �   CREATE TABLE hn.chi_tiet_xuat_hang (
    maphieuxuat integer NOT NULL,
    masanpham integer NOT NULL,
    soluong integer NOT NULL,
    mavung character varying(10),
    CONSTRAINT chi_tiet_xuat_hang_mavung_check CHECK (((mavung)::text = 'HN'::text))
);
 "   DROP TABLE hn.chi_tiet_xuat_hang;
       hn         heap r       postgres    false    8                       1259    16808    cua_hang    TABLE     7  CREATE TABLE hn.cua_hang (
    macuahang integer NOT NULL,
    tencuahang character varying(255) NOT NULL,
    diachi character varying(255) NOT NULL,
    sodienthoai character varying(15) NOT NULL,
    mavung character varying(10),
    CONSTRAINT cua_hang_mavung_check CHECK (((mavung)::text = 'HN'::text))
);
    DROP TABLE hn.cua_hang;
       hn         heap r       postgres    false    8                       1259    16807    cua_hang_macuahang_seq    SEQUENCE     �   CREATE SEQUENCE hn.cua_hang_macuahang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE hn.cua_hang_macuahang_seq;
       hn               postgres    false    8    264            �           0    0    cua_hang_macuahang_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE hn.cua_hang_macuahang_seq OWNED BY hn.cua_hang.macuahang;
          hn               postgres    false    263                       1259    16876    giao_dich_ban_hang    TABLE     6  CREATE TABLE hn.giao_dich_ban_hang (
    magiaodich integer NOT NULL,
    makhachhang integer,
    tongtien numeric(10,2) NOT NULL,
    phuongthucthanhtoan character varying(50) NOT NULL,
    mavung character varying(10),
    CONSTRAINT giao_dich_ban_hang_mavung_check CHECK (((mavung)::text = 'HN'::text))
);
 "   DROP TABLE hn.giao_dich_ban_hang;
       hn         heap r       postgres    false    8                       1259    16875 !   giao_dich_ban_hang_magiaodich_seq    SEQUENCE     �   CREATE SEQUENCE hn.giao_dich_ban_hang_magiaodich_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE hn.giao_dich_ban_hang_magiaodich_seq;
       hn               postgres    false    274    8            �           0    0 !   giao_dich_ban_hang_magiaodich_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE hn.giao_dich_ban_hang_magiaodich_seq OWNED BY hn.giao_dich_ban_hang.magiaodich;
          hn               postgres    false    273            
           1259    16818 
   khach_hang    TABLE     k  CREATE TABLE hn.khach_hang (
    makhachhang integer NOT NULL,
    sodienthoai character varying(15) NOT NULL,
    email character varying(255),
    diemthanthiet integer DEFAULT 0,
    ngaytao timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    mavung character varying(10),
    CONSTRAINT khach_hang_mavung_check CHECK (((mavung)::text = 'HN'::text))
);
    DROP TABLE hn.khach_hang;
       hn         heap r       postgres    false    8            	           1259    16817    khach_hang_makhachhang_seq    SEQUENCE     �   CREATE SEQUENCE hn.khach_hang_makhachhang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE hn.khach_hang_makhachhang_seq;
       hn               postgres    false    266    8            �           0    0    khach_hang_makhachhang_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE hn.khach_hang_makhachhang_seq OWNED BY hn.khach_hang.makhachhang;
          hn               postgres    false    265                       1259    16828    kho_hang    TABLE     �   CREATE TABLE hn.kho_hang (
    makho integer NOT NULL,
    macuahang integer,
    soluonghientai integer NOT NULL,
    mavung character varying(10),
    CONSTRAINT kho_hang_mavung_check CHECK (((mavung)::text = 'HN'::text))
);
    DROP TABLE hn.kho_hang;
       hn         heap r       postgres    false    8                       1259    16827    kho_hang_makho_seq    SEQUENCE     �   CREATE SEQUENCE hn.kho_hang_makho_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE hn.kho_hang_makho_seq;
       hn               postgres    false    8    268            �           0    0    kho_hang_makho_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE hn.kho_hang_makho_seq OWNED BY hn.kho_hang.makho;
          hn               postgres    false    267                       1259    16841 
   nguoi_dung    TABLE     �  CREATE TABLE hn.nguoi_dung (
    manguoidung integer NOT NULL,
    tendangnhap character varying(50) NOT NULL,
    matkhau character varying(255) NOT NULL,
    mavaitro integer,
    macuahang integer,
    trangthai character varying(50) DEFAULT 'active'::character varying,
    mavung character varying(10),
    CONSTRAINT nguoi_dung_mavung_check CHECK (((mavung)::text = 'HN'::text))
);
    DROP TABLE hn.nguoi_dung;
       hn         heap r       postgres    false    8                       1259    16840    nguoi_dung_manguoidung_seq    SEQUENCE     �   CREATE SEQUENCE hn.nguoi_dung_manguoidung_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE hn.nguoi_dung_manguoidung_seq;
       hn               postgres    false    270    8            �           0    0    nguoi_dung_manguoidung_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE hn.nguoi_dung_manguoidung_seq OWNED BY hn.nguoi_dung.manguoidung;
          hn               postgres    false    269                       1259    16889    phieu_nhap_hang    TABLE     M  CREATE TABLE hn.phieu_nhap_hang (
    maphieunhap integer NOT NULL,
    makho integer,
    manguoidung integer,
    ngaynhap timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    tongsoluong integer NOT NULL,
    mavung character varying(10),
    CONSTRAINT phieu_nhap_hang_mavung_check CHECK (((mavung)::text = 'HN'::text))
);
    DROP TABLE hn.phieu_nhap_hang;
       hn         heap r       postgres    false    8                       1259    16888    phieu_nhap_hang_maphieunhap_seq    SEQUENCE     �   CREATE SEQUENCE hn.phieu_nhap_hang_maphieunhap_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE hn.phieu_nhap_hang_maphieunhap_seq;
       hn               postgres    false    8    276            �           0    0    phieu_nhap_hang_maphieunhap_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE hn.phieu_nhap_hang_maphieunhap_seq OWNED BY hn.phieu_nhap_hang.maphieunhap;
          hn               postgres    false    275                       1259    16924    phieu_xuat_hang    TABLE     O  CREATE TABLE hn.phieu_xuat_hang (
    maphieuxuat integer NOT NULL,
    makho integer,
    manguoidung integer,
    ngayxuat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    mucdich character varying(255),
    mavung character varying(10),
    CONSTRAINT phieu_xuat_hang_mavung_check CHECK (((mavung)::text = 'HN'::text))
);
    DROP TABLE hn.phieu_xuat_hang;
       hn         heap r       postgres    false    8                       1259    16923    phieu_xuat_hang_maphieuxuat_seq    SEQUENCE     �   CREATE SEQUENCE hn.phieu_xuat_hang_maphieuxuat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE hn.phieu_xuat_hang_maphieuxuat_seq;
       hn               postgres    false    279    8            �           0    0    phieu_xuat_hang_maphieuxuat_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE hn.phieu_xuat_hang_maphieuxuat_seq OWNED BY hn.phieu_xuat_hang.maphieuxuat;
          hn               postgres    false    278                       1259    16857    ton_kho    TABLE       CREATE TABLE hn.ton_kho (
    matonkho integer NOT NULL,
    masanpham integer,
    macuahang integer,
    soluong integer NOT NULL,
    muctontoithieu integer DEFAULT 0,
    mavung character varying(10),
    CONSTRAINT ton_kho_mavung_check CHECK (((mavung)::text = 'HN'::text))
);
    DROP TABLE hn.ton_kho;
       hn         heap r       postgres    false    8                       1259    16856    ton_kho_matonkho_seq    SEQUENCE     �   CREATE SEQUENCE hn.ton_kho_matonkho_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE hn.ton_kho_matonkho_seq;
       hn               postgres    false    8    272                        0    0    ton_kho_matonkho_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE hn.ton_kho_matonkho_seq OWNED BY hn.ton_kho.matonkho;
          hn               postgres    false    271            �            1259    16485    chi_tiet_giao_dich    TABLE     �   CREATE TABLE public.chi_tiet_giao_dich (
    machitiet integer NOT NULL,
    magiaodich integer,
    masanpham integer,
    soluong integer NOT NULL,
    giaban numeric(10,2) NOT NULL,
    mavung character varying(10)
);
 &   DROP TABLE public.chi_tiet_giao_dich;
       public         heap r       postgres    false    5            �            1259    16484     chi_tiet_giao_dich_machitiet_seq    SEQUENCE     �   CREATE SEQUENCE public.chi_tiet_giao_dich_machitiet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.chi_tiet_giao_dich_machitiet_seq;
       public               postgres    false    5    235                       0    0     chi_tiet_giao_dich_machitiet_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.chi_tiet_giao_dich_machitiet_seq OWNED BY public.chi_tiet_giao_dich.machitiet;
          public               postgres    false    234            �            1259    16519    chi_tiet_nhap_hang    TABLE     �   CREATE TABLE public.chi_tiet_nhap_hang (
    maphieunhap integer NOT NULL,
    masanpham integer NOT NULL,
    soluong integer NOT NULL,
    dongia numeric(10,2) NOT NULL,
    mavung character varying(10)
);
 &   DROP TABLE public.chi_tiet_nhap_hang;
       public         heap r       postgres    false    5                       1259    17007    chi_tiet_nhap_hang_tong_hop    VIEW     �  CREATE VIEW public.chi_tiet_nhap_hang_tong_hop AS
 SELECT chi_tiet_nhap_hang.maphieunhap,
    chi_tiet_nhap_hang.masanpham,
    chi_tiet_nhap_hang.soluong,
    chi_tiet_nhap_hang.dongia,
    chi_tiet_nhap_hang.mavung
   FROM hcm.chi_tiet_nhap_hang
UNION
 SELECT chi_tiet_nhap_hang.maphieunhap,
    chi_tiet_nhap_hang.masanpham,
    chi_tiet_nhap_hang.soluong,
    chi_tiet_nhap_hang.dongia,
    chi_tiet_nhap_hang.mavung
   FROM hn.chi_tiet_nhap_hang;
 .   DROP VIEW public.chi_tiet_nhap_hang_tong_hop;
       public       v       postgres    false    259    259    259    259    259    277    277    277    277    277    5            �            1259    16552    chi_tiet_xuat_hang    TABLE     �   CREATE TABLE public.chi_tiet_xuat_hang (
    maphieuxuat integer NOT NULL,
    masanpham integer NOT NULL,
    soluong integer NOT NULL,
    mavung character varying(10)
);
 &   DROP TABLE public.chi_tiet_xuat_hang;
       public         heap r       postgres    false    5            !           1259    17015    chi_tiet_xuat_hang_tong_hop    VIEW     �  CREATE VIEW public.chi_tiet_xuat_hang_tong_hop AS
 SELECT chi_tiet_xuat_hang.maphieuxuat,
    chi_tiet_xuat_hang.masanpham,
    chi_tiet_xuat_hang.soluong,
    chi_tiet_xuat_hang.mavung
   FROM hcm.chi_tiet_xuat_hang
UNION
 SELECT chi_tiet_xuat_hang.maphieuxuat,
    chi_tiet_xuat_hang.masanpham,
    chi_tiet_xuat_hang.soluong,
    chi_tiet_xuat_hang.mavung
   FROM hn.chi_tiet_xuat_hang;
 .   DROP VIEW public.chi_tiet_xuat_hang_tong_hop;
       public       v       postgres    false    262    280    280    280    280    262    262    262    5                       1259    16983    cua_hang_tong_hop    VIEW     H  CREATE VIEW public.cua_hang_tong_hop AS
 SELECT cua_hang.macuahang,
    cua_hang.tencuahang,
    cua_hang.diachi,
    cua_hang.sodienthoai,
    cua_hang.mavung
   FROM hcm.cua_hang
UNION
 SELECT cua_hang.macuahang,
    cua_hang.tencuahang,
    cua_hang.diachi,
    cua_hang.sodienthoai,
    cua_hang.mavung
   FROM hn.cua_hang;
 $   DROP VIEW public.cua_hang_tong_hop;
       public       v       postgres    false    264    264    264    264    264    244    244    244    244    244    5            �            1259    16473    giao_dich_ban_hang    TABLE     �   CREATE TABLE public.giao_dich_ban_hang (
    magiaodich integer NOT NULL,
    makhachhang integer,
    tongtien numeric(10,2) NOT NULL,
    phuongthucthanhtoan character varying(50) NOT NULL,
    mavung character varying(10)
);
 &   DROP TABLE public.giao_dich_ban_hang;
       public         heap r       postgres    false    5            �            1259    16472 !   giao_dich_ban_hang_magiaodich_seq    SEQUENCE     �   CREATE SEQUENCE public.giao_dich_ban_hang_magiaodich_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.giao_dich_ban_hang_magiaodich_seq;
       public               postgres    false    5    233                       0    0 !   giao_dich_ban_hang_magiaodich_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.giao_dich_ban_hang_magiaodich_seq OWNED BY public.giao_dich_ban_hang.magiaodich;
          public               postgres    false    232                       1259    16999    giao_dich_ban_hang_tong_hop    VIEW     �  CREATE VIEW public.giao_dich_ban_hang_tong_hop AS
 SELECT giao_dich_ban_hang.magiaodich,
    giao_dich_ban_hang.makhachhang,
    giao_dich_ban_hang.tongtien,
    giao_dich_ban_hang.phuongthucthanhtoan,
    giao_dich_ban_hang.mavung
   FROM hcm.giao_dich_ban_hang
UNION
 SELECT giao_dich_ban_hang.magiaodich,
    giao_dich_ban_hang.makhachhang,
    giao_dich_ban_hang.tongtien,
    giao_dich_ban_hang.phuongthucthanhtoan,
    giao_dich_ban_hang.mavung
   FROM hn.giao_dich_ban_hang;
 .   DROP VIEW public.giao_dich_ban_hang_tong_hop;
       public       v       postgres    false    274    274    274    274    274    254    254    254    254    254    5            �            1259    16399 
   khach_hang    TABLE     !  CREATE TABLE public.khach_hang (
    makhachhang integer NOT NULL,
    sodienthoai character varying(15) NOT NULL,
    email character varying(255),
    diemthanthiet integer DEFAULT 0,
    ngaytao timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    mavung character varying(10)
);
    DROP TABLE public.khach_hang;
       public         heap r       postgres    false    5            �            1259    16398    khach_hang_makhachhang_seq    SEQUENCE     �   CREATE SEQUENCE public.khach_hang_makhachhang_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.khach_hang_makhachhang_seq;
       public               postgres    false    5    221                       0    0    khach_hang_makhachhang_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.khach_hang_makhachhang_seq OWNED BY public.khach_hang.makhachhang;
          public               postgres    false    220                       1259    16987    khach_hang_tong_hop    VIEW     �  CREATE VIEW public.khach_hang_tong_hop AS
 SELECT khach_hang.makhachhang,
    khach_hang.sodienthoai,
    khach_hang.email,
    khach_hang.diemthanthiet,
    khach_hang.ngaytao,
    khach_hang.mavung
   FROM hcm.khach_hang
UNION
 SELECT khach_hang.makhachhang,
    khach_hang.sodienthoai,
    khach_hang.email,
    khach_hang.diemthanthiet,
    khach_hang.ngaytao,
    khach_hang.mavung
   FROM hn.khach_hang;
 &   DROP VIEW public.khach_hang_tong_hop;
       public       v       postgres    false    266    266    266    266    266    266    246    246    246    246    246    246    5            �            1259    16428    kho_hang    TABLE     �   CREATE TABLE public.kho_hang (
    makho integer NOT NULL,
    macuahang integer,
    soluonghientai integer NOT NULL,
    mavung character varying(10)
);
    DROP TABLE public.kho_hang;
       public         heap r       postgres    false    5            �            1259    16427    kho_hang_makho_seq    SEQUENCE     �   CREATE SEQUENCE public.kho_hang_makho_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.kho_hang_makho_seq;
       public               postgres    false    5    227                       0    0    kho_hang_makho_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.kho_hang_makho_seq OWNED BY public.kho_hang.makho;
          public               postgres    false    226                       1259    16991    kho_hang_tong_hop    VIEW       CREATE VIEW public.kho_hang_tong_hop AS
 SELECT kho_hang.makho,
    kho_hang.macuahang,
    kho_hang.soluonghientai,
    kho_hang.mavung
   FROM hcm.kho_hang
UNION
 SELECT kho_hang.makho,
    kho_hang.macuahang,
    kho_hang.soluonghientai,
    kho_hang.mavung
   FROM hn.kho_hang;
 $   DROP VIEW public.kho_hang_tong_hop;
       public       v       postgres    false    268    268    268    268    248    248    248    248    5            �            1259    16419 
   khuyen_mai    TABLE       CREATE TABLE public.khuyen_mai (
    makhuyenmai integer NOT NULL,
    loai character varying(50) NOT NULL,
    giatri numeric(10,2) NOT NULL,
    ngaybatdau timestamp without time zone NOT NULL,
    ngayketthuc timestamp without time zone NOT NULL,
    dieukien text
);
    DROP TABLE public.khuyen_mai;
       public         heap r       postgres    false    5            �            1259    16418    khuyen_mai_makhuyenmai_seq    SEQUENCE     �   CREATE SEQUENCE public.khuyen_mai_makhuyenmai_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.khuyen_mai_makhuyenmai_seq;
       public               postgres    false    225    5                       0    0    khuyen_mai_makhuyenmai_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.khuyen_mai_makhuyenmai_seq OWNED BY public.khuyen_mai.makhuyenmai;
          public               postgres    false    224            �            1259    16440 
   nguoi_dung    TABLE     :  CREATE TABLE public.nguoi_dung (
    manguoidung integer NOT NULL,
    tendangnhap character varying(50) NOT NULL,
    matkhau character varying(255) NOT NULL,
    mavaitro integer,
    macuahang integer,
    trangthai character varying(50) DEFAULT 'active'::character varying,
    mavung character varying(10)
);
    DROP TABLE public.nguoi_dung;
       public         heap r       postgres    false    5            �            1259    16439    nguoi_dung_manguoidung_seq    SEQUENCE     �   CREATE SEQUENCE public.nguoi_dung_manguoidung_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.nguoi_dung_manguoidung_seq;
       public               postgres    false    5    229                       0    0    nguoi_dung_manguoidung_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.nguoi_dung_manguoidung_seq OWNED BY public.nguoi_dung.manguoidung;
          public               postgres    false    228            "           1259    17019    nguoi_dung_tong_hop    VIEW     �  CREATE VIEW public.nguoi_dung_tong_hop AS
 SELECT nguoi_dung.manguoidung,
    nguoi_dung.tendangnhap,
    nguoi_dung.matkhau,
    nguoi_dung.mavaitro,
    nguoi_dung.macuahang,
    nguoi_dung.trangthai,
    nguoi_dung.mavung
   FROM hcm.nguoi_dung
UNION
 SELECT nguoi_dung.manguoidung,
    nguoi_dung.tendangnhap,
    nguoi_dung.matkhau,
    nguoi_dung.mavaitro,
    nguoi_dung.macuahang,
    nguoi_dung.trangthai,
    nguoi_dung.mavung
   FROM hn.nguoi_dung;
 &   DROP VIEW public.nguoi_dung_tong_hop;
       public       v       postgres    false    250    270    270    270    270    270    270    270    250    250    250    250    250    250    5            �            1259    16502    phieu_nhap_hang    TABLE     �   CREATE TABLE public.phieu_nhap_hang (
    maphieunhap integer NOT NULL,
    makho integer,
    manguoidung integer,
    ngaynhap timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    tongsoluong integer NOT NULL,
    mavung character varying(10)
);
 #   DROP TABLE public.phieu_nhap_hang;
       public         heap r       postgres    false    5            �            1259    16501    phieu_nhap_hang_maphieunhap_seq    SEQUENCE     �   CREATE SEQUENCE public.phieu_nhap_hang_maphieunhap_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.phieu_nhap_hang_maphieunhap_seq;
       public               postgres    false    237    5                       0    0    phieu_nhap_hang_maphieunhap_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.phieu_nhap_hang_maphieunhap_seq OWNED BY public.phieu_nhap_hang.maphieunhap;
          public               postgres    false    236                       1259    17003    phieu_nhap_hang_tong_hop    VIEW     �  CREATE VIEW public.phieu_nhap_hang_tong_hop AS
 SELECT phieu_nhap_hang.maphieunhap,
    phieu_nhap_hang.makho,
    phieu_nhap_hang.manguoidung,
    phieu_nhap_hang.ngaynhap,
    phieu_nhap_hang.tongsoluong,
    phieu_nhap_hang.mavung
   FROM hcm.phieu_nhap_hang
UNION
 SELECT phieu_nhap_hang.maphieunhap,
    phieu_nhap_hang.makho,
    phieu_nhap_hang.manguoidung,
    phieu_nhap_hang.ngaynhap,
    phieu_nhap_hang.tongsoluong,
    phieu_nhap_hang.mavung
   FROM hn.phieu_nhap_hang;
 +   DROP VIEW public.phieu_nhap_hang_tong_hop;
       public       v       postgres    false    276    276    276    276    276    276    258    258    258    258    258    258    5            �            1259    16535    phieu_xuat_hang    TABLE        CREATE TABLE public.phieu_xuat_hang (
    maphieuxuat integer NOT NULL,
    makho integer,
    manguoidung integer,
    ngayxuat timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    mucdich character varying(255),
    mavung character varying(10)
);
 #   DROP TABLE public.phieu_xuat_hang;
       public         heap r       postgres    false    5            �            1259    16534    phieu_xuat_hang_maphieuxuat_seq    SEQUENCE     �   CREATE SEQUENCE public.phieu_xuat_hang_maphieuxuat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.phieu_xuat_hang_maphieuxuat_seq;
       public               postgres    false    240    5                       0    0    phieu_xuat_hang_maphieuxuat_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.phieu_xuat_hang_maphieuxuat_seq OWNED BY public.phieu_xuat_hang.maphieuxuat;
          public               postgres    false    239                        1259    17011    phieu_xuat_hang_tong_hop    VIEW     �  CREATE VIEW public.phieu_xuat_hang_tong_hop AS
 SELECT phieu_xuat_hang.maphieuxuat,
    phieu_xuat_hang.makho,
    phieu_xuat_hang.manguoidung,
    phieu_xuat_hang.ngayxuat,
    phieu_xuat_hang.mucdich,
    phieu_xuat_hang.mavung
   FROM hcm.phieu_xuat_hang
UNION
 SELECT phieu_xuat_hang.maphieuxuat,
    phieu_xuat_hang.makho,
    phieu_xuat_hang.manguoidung,
    phieu_xuat_hang.ngayxuat,
    phieu_xuat_hang.mucdich,
    phieu_xuat_hang.mavung
   FROM hn.phieu_xuat_hang;
 +   DROP VIEW public.phieu_xuat_hang_tong_hop;
       public       v       postgres    false    261    261    261    279    279    279    261    261    279    279    279    261    5            �            1259    16408    san_pham    TABLE     �   CREATE TABLE public.san_pham (
    masanpham integer NOT NULL,
    tensanpham character varying(255) NOT NULL,
    masku character varying(50) NOT NULL,
    mavach character varying(50),
    mota text,
    dongia numeric(10,2) NOT NULL
);
    DROP TABLE public.san_pham;
       public         heap r       postgres    false    5            �            1259    16567    san_pham_khuyen_mai    TABLE     n   CREATE TABLE public.san_pham_khuyen_mai (
    masanpham integer NOT NULL,
    makhuyenmai integer NOT NULL
);
 '   DROP TABLE public.san_pham_khuyen_mai;
       public         heap r       postgres    false    5            �            1259    16407    san_pham_masanpham_seq    SEQUENCE     �   CREATE SEQUENCE public.san_pham_masanpham_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.san_pham_masanpham_seq;
       public               postgres    false    223    5            	           0    0    san_pham_masanpham_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.san_pham_masanpham_seq OWNED BY public.san_pham.masanpham;
          public               postgres    false    222            �            1259    16455    ton_kho    TABLE     �   CREATE TABLE public.ton_kho (
    matonkho integer NOT NULL,
    masanpham integer,
    macuahang integer,
    soluong integer NOT NULL,
    muctontoithieu integer DEFAULT 0,
    mavung character varying(10)
);
    DROP TABLE public.ton_kho;
       public         heap r       postgres    false    5            �            1259    16454    ton_kho_matonkho_seq    SEQUENCE     �   CREATE SEQUENCE public.ton_kho_matonkho_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ton_kho_matonkho_seq;
       public               postgres    false    231    5            
           0    0    ton_kho_matonkho_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ton_kho_matonkho_seq OWNED BY public.ton_kho.matonkho;
          public               postgres    false    230                       1259    16995    ton_kho_tong_hop    VIEW     m  CREATE VIEW public.ton_kho_tong_hop AS
 SELECT ton_kho.matonkho,
    ton_kho.masanpham,
    ton_kho.macuahang,
    ton_kho.soluong,
    ton_kho.muctontoithieu,
    ton_kho.mavung
   FROM hcm.ton_kho
UNION
 SELECT ton_kho.matonkho,
    ton_kho.masanpham,
    ton_kho.macuahang,
    ton_kho.soluong,
    ton_kho.muctontoithieu,
    ton_kho.mavung
   FROM hn.ton_kho;
 #   DROP VIEW public.ton_kho_tong_hop;
       public       v       postgres    false    272    272    272    272    272    272    252    252    252    252    252    252    5            q           2604    16704    chi_tiet_giao_dich machitiet    DEFAULT     �   ALTER TABLE ONLY hcm.chi_tiet_giao_dich ALTER COLUMN machitiet SET DEFAULT nextval('hcm.chi_tiet_giao_dich_machitiet_seq'::regclass);
 H   ALTER TABLE hcm.chi_tiet_giao_dich ALTER COLUMN machitiet DROP DEFAULT;
       hcm               postgres    false    255    256    256            g           2604    16620    cua_hang macuahang    DEFAULT     r   ALTER TABLE ONLY hcm.cua_hang ALTER COLUMN macuahang SET DEFAULT nextval('hcm.cua_hang_macuahang_seq'::regclass);
 >   ALTER TABLE hcm.cua_hang ALTER COLUMN macuahang DROP DEFAULT;
       hcm               postgres    false    244    243    244            p           2604    16691    giao_dich_ban_hang magiaodich    DEFAULT     �   ALTER TABLE ONLY hcm.giao_dich_ban_hang ALTER COLUMN magiaodich SET DEFAULT nextval('hcm.giao_dich_ban_hang_magiaodich_seq'::regclass);
 I   ALTER TABLE hcm.giao_dich_ban_hang ALTER COLUMN magiaodich DROP DEFAULT;
       hcm               postgres    false    254    253    254            h           2604    16630    khach_hang makhachhang    DEFAULT     z   ALTER TABLE ONLY hcm.khach_hang ALTER COLUMN makhachhang SET DEFAULT nextval('hcm.khach_hang_makhachhang_seq'::regclass);
 B   ALTER TABLE hcm.khach_hang ALTER COLUMN makhachhang DROP DEFAULT;
       hcm               postgres    false    246    245    246            k           2604    16642    kho_hang makho    DEFAULT     j   ALTER TABLE ONLY hcm.kho_hang ALTER COLUMN makho SET DEFAULT nextval('hcm.kho_hang_makho_seq'::regclass);
 :   ALTER TABLE hcm.kho_hang ALTER COLUMN makho DROP DEFAULT;
       hcm               postgres    false    247    248    248            l           2604    16656    nguoi_dung manguoidung    DEFAULT     z   ALTER TABLE ONLY hcm.nguoi_dung ALTER COLUMN manguoidung SET DEFAULT nextval('hcm.nguoi_dung_manguoidung_seq'::regclass);
 B   ALTER TABLE hcm.nguoi_dung ALTER COLUMN manguoidung DROP DEFAULT;
       hcm               postgres    false    250    249    250            r           2604    16722    phieu_nhap_hang maphieunhap    DEFAULT     �   ALTER TABLE ONLY hcm.phieu_nhap_hang ALTER COLUMN maphieunhap SET DEFAULT nextval('hcm.phieu_nhap_hang_maphieunhap_seq'::regclass);
 G   ALTER TABLE hcm.phieu_nhap_hang ALTER COLUMN maphieunhap DROP DEFAULT;
       hcm               postgres    false    258    257    258            t           2604    16758    phieu_xuat_hang maphieuxuat    DEFAULT     �   ALTER TABLE ONLY hcm.phieu_xuat_hang ALTER COLUMN maphieuxuat SET DEFAULT nextval('hcm.phieu_xuat_hang_maphieuxuat_seq'::regclass);
 G   ALTER TABLE hcm.phieu_xuat_hang ALTER COLUMN maphieuxuat DROP DEFAULT;
       hcm               postgres    false    260    261    261            n           2604    16672    ton_kho matonkho    DEFAULT     n   ALTER TABLE ONLY hcm.ton_kho ALTER COLUMN matonkho SET DEFAULT nextval('hcm.ton_kho_matonkho_seq'::regclass);
 <   ALTER TABLE hcm.ton_kho ALTER COLUMN matonkho DROP DEFAULT;
       hcm               postgres    false    252    251    252            v           2604    16811    cua_hang macuahang    DEFAULT     p   ALTER TABLE ONLY hn.cua_hang ALTER COLUMN macuahang SET DEFAULT nextval('hn.cua_hang_macuahang_seq'::regclass);
 =   ALTER TABLE hn.cua_hang ALTER COLUMN macuahang DROP DEFAULT;
       hn               postgres    false    263    264    264                       2604    16879    giao_dich_ban_hang magiaodich    DEFAULT     �   ALTER TABLE ONLY hn.giao_dich_ban_hang ALTER COLUMN magiaodich SET DEFAULT nextval('hn.giao_dich_ban_hang_magiaodich_seq'::regclass);
 H   ALTER TABLE hn.giao_dich_ban_hang ALTER COLUMN magiaodich DROP DEFAULT;
       hn               postgres    false    273    274    274            w           2604    16821    khach_hang makhachhang    DEFAULT     x   ALTER TABLE ONLY hn.khach_hang ALTER COLUMN makhachhang SET DEFAULT nextval('hn.khach_hang_makhachhang_seq'::regclass);
 A   ALTER TABLE hn.khach_hang ALTER COLUMN makhachhang DROP DEFAULT;
       hn               postgres    false    265    266    266            z           2604    16831    kho_hang makho    DEFAULT     h   ALTER TABLE ONLY hn.kho_hang ALTER COLUMN makho SET DEFAULT nextval('hn.kho_hang_makho_seq'::regclass);
 9   ALTER TABLE hn.kho_hang ALTER COLUMN makho DROP DEFAULT;
       hn               postgres    false    267    268    268            {           2604    16844    nguoi_dung manguoidung    DEFAULT     x   ALTER TABLE ONLY hn.nguoi_dung ALTER COLUMN manguoidung SET DEFAULT nextval('hn.nguoi_dung_manguoidung_seq'::regclass);
 A   ALTER TABLE hn.nguoi_dung ALTER COLUMN manguoidung DROP DEFAULT;
       hn               postgres    false    270    269    270            �           2604    16892    phieu_nhap_hang maphieunhap    DEFAULT     �   ALTER TABLE ONLY hn.phieu_nhap_hang ALTER COLUMN maphieunhap SET DEFAULT nextval('hn.phieu_nhap_hang_maphieunhap_seq'::regclass);
 F   ALTER TABLE hn.phieu_nhap_hang ALTER COLUMN maphieunhap DROP DEFAULT;
       hn               postgres    false    276    275    276            �           2604    16927    phieu_xuat_hang maphieuxuat    DEFAULT     �   ALTER TABLE ONLY hn.phieu_xuat_hang ALTER COLUMN maphieuxuat SET DEFAULT nextval('hn.phieu_xuat_hang_maphieuxuat_seq'::regclass);
 F   ALTER TABLE hn.phieu_xuat_hang ALTER COLUMN maphieuxuat DROP DEFAULT;
       hn               postgres    false    279    278    279            }           2604    16860    ton_kho matonkho    DEFAULT     l   ALTER TABLE ONLY hn.ton_kho ALTER COLUMN matonkho SET DEFAULT nextval('hn.ton_kho_matonkho_seq'::regclass);
 ;   ALTER TABLE hn.ton_kho ALTER COLUMN matonkho DROP DEFAULT;
       hn               postgres    false    271    272    272            b           2604    16488    chi_tiet_giao_dich machitiet    DEFAULT     �   ALTER TABLE ONLY public.chi_tiet_giao_dich ALTER COLUMN machitiet SET DEFAULT nextval('public.chi_tiet_giao_dich_machitiet_seq'::regclass);
 K   ALTER TABLE public.chi_tiet_giao_dich ALTER COLUMN machitiet DROP DEFAULT;
       public               postgres    false    235    234    235            a           2604    16476    giao_dich_ban_hang magiaodich    DEFAULT     �   ALTER TABLE ONLY public.giao_dich_ban_hang ALTER COLUMN magiaodich SET DEFAULT nextval('public.giao_dich_ban_hang_magiaodich_seq'::regclass);
 L   ALTER TABLE public.giao_dich_ban_hang ALTER COLUMN magiaodich DROP DEFAULT;
       public               postgres    false    232    233    233            W           2604    16402    khach_hang makhachhang    DEFAULT     �   ALTER TABLE ONLY public.khach_hang ALTER COLUMN makhachhang SET DEFAULT nextval('public.khach_hang_makhachhang_seq'::regclass);
 E   ALTER TABLE public.khach_hang ALTER COLUMN makhachhang DROP DEFAULT;
       public               postgres    false    221    220    221            \           2604    16431    kho_hang makho    DEFAULT     p   ALTER TABLE ONLY public.kho_hang ALTER COLUMN makho SET DEFAULT nextval('public.kho_hang_makho_seq'::regclass);
 =   ALTER TABLE public.kho_hang ALTER COLUMN makho DROP DEFAULT;
       public               postgres    false    227    226    227            [           2604    16422    khuyen_mai makhuyenmai    DEFAULT     �   ALTER TABLE ONLY public.khuyen_mai ALTER COLUMN makhuyenmai SET DEFAULT nextval('public.khuyen_mai_makhuyenmai_seq'::regclass);
 E   ALTER TABLE public.khuyen_mai ALTER COLUMN makhuyenmai DROP DEFAULT;
       public               postgres    false    225    224    225            ]           2604    16443    nguoi_dung manguoidung    DEFAULT     �   ALTER TABLE ONLY public.nguoi_dung ALTER COLUMN manguoidung SET DEFAULT nextval('public.nguoi_dung_manguoidung_seq'::regclass);
 E   ALTER TABLE public.nguoi_dung ALTER COLUMN manguoidung DROP DEFAULT;
       public               postgres    false    229    228    229            c           2604    16505    phieu_nhap_hang maphieunhap    DEFAULT     �   ALTER TABLE ONLY public.phieu_nhap_hang ALTER COLUMN maphieunhap SET DEFAULT nextval('public.phieu_nhap_hang_maphieunhap_seq'::regclass);
 J   ALTER TABLE public.phieu_nhap_hang ALTER COLUMN maphieunhap DROP DEFAULT;
       public               postgres    false    237    236    237            e           2604    16538    phieu_xuat_hang maphieuxuat    DEFAULT     �   ALTER TABLE ONLY public.phieu_xuat_hang ALTER COLUMN maphieuxuat SET DEFAULT nextval('public.phieu_xuat_hang_maphieuxuat_seq'::regclass);
 J   ALTER TABLE public.phieu_xuat_hang ALTER COLUMN maphieuxuat DROP DEFAULT;
       public               postgres    false    240    239    240            Z           2604    16411    san_pham masanpham    DEFAULT     x   ALTER TABLE ONLY public.san_pham ALTER COLUMN masanpham SET DEFAULT nextval('public.san_pham_masanpham_seq'::regclass);
 A   ALTER TABLE public.san_pham ALTER COLUMN masanpham DROP DEFAULT;
       public               postgres    false    222    223    223            _           2604    16458    ton_kho matonkho    DEFAULT     t   ALTER TABLE ONLY public.ton_kho ALTER COLUMN matonkho SET DEFAULT nextval('public.ton_kho_matonkho_seq'::regclass);
 ?   ALTER TABLE public.ton_kho ALTER COLUMN matonkho DROP DEFAULT;
       public               postgres    false    231    230    231            �          0    16701    chi_tiet_giao_dich 
   TABLE DATA           d   COPY hcm.chi_tiet_giao_dich (machitiet, magiaodich, masanpham, soluong, giaban, mavung) FROM stdin;
    hcm               postgres    false    256   �z      �          0    16738    chi_tiet_nhap_hang 
   TABLE DATA           Z   COPY hcm.chi_tiet_nhap_hang (maphieunhap, masanpham, soluong, dongia, mavung) FROM stdin;
    hcm               postgres    false    259   �z      �          0    16773    chi_tiet_xuat_hang 
   TABLE DATA           R   COPY hcm.chi_tiet_xuat_hang (maphieuxuat, masanpham, soluong, mavung) FROM stdin;
    hcm               postgres    false    262   �z      �          0    16617    cua_hang 
   TABLE DATA           S   COPY hcm.cua_hang (macuahang, tencuahang, diachi, sodienthoai, mavung) FROM stdin;
    hcm               postgres    false    244   �z      �          0    16688    giao_dich_ban_hang 
   TABLE DATA           i   COPY hcm.giao_dich_ban_hang (magiaodich, makhachhang, tongtien, phuongthucthanhtoan, mavung) FROM stdin;
    hcm               postgres    false    254   |      �          0    16627 
   khach_hang 
   TABLE DATA           b   COPY hcm.khach_hang (makhachhang, sodienthoai, email, diemthanthiet, ngaytao, mavung) FROM stdin;
    hcm               postgres    false    246   %|      �          0    16639    kho_hang 
   TABLE DATA           I   COPY hcm.kho_hang (makho, macuahang, soluonghientai, mavung) FROM stdin;
    hcm               postgres    false    248   B|      �          0    16653 
   nguoi_dung 
   TABLE DATA           l   COPY hcm.nguoi_dung (manguoidung, tendangnhap, matkhau, mavaitro, macuahang, trangthai, mavung) FROM stdin;
    hcm               postgres    false    250   _|      �          0    16719    phieu_nhap_hang 
   TABLE DATA           f   COPY hcm.phieu_nhap_hang (maphieunhap, makho, manguoidung, ngaynhap, tongsoluong, mavung) FROM stdin;
    hcm               postgres    false    258   ||      �          0    16755    phieu_xuat_hang 
   TABLE DATA           b   COPY hcm.phieu_xuat_hang (maphieuxuat, makho, manguoidung, ngayxuat, mucdich, mavung) FROM stdin;
    hcm               postgres    false    261   �|      �          0    16669    ton_kho 
   TABLE DATA           _   COPY hcm.ton_kho (matonkho, masanpham, macuahang, soluong, muctontoithieu, mavung) FROM stdin;
    hcm               postgres    false    252   �|      �          0    16907    chi_tiet_nhap_hang 
   TABLE DATA           Y   COPY hn.chi_tiet_nhap_hang (maphieunhap, masanpham, soluong, dongia, mavung) FROM stdin;
    hn               postgres    false    277   �|      �          0    16942    chi_tiet_xuat_hang 
   TABLE DATA           Q   COPY hn.chi_tiet_xuat_hang (maphieuxuat, masanpham, soluong, mavung) FROM stdin;
    hn               postgres    false    280   �|      �          0    16808    cua_hang 
   TABLE DATA           R   COPY hn.cua_hang (macuahang, tencuahang, diachi, sodienthoai, mavung) FROM stdin;
    hn               postgres    false    264   }      �          0    16876    giao_dich_ban_hang 
   TABLE DATA           h   COPY hn.giao_dich_ban_hang (magiaodich, makhachhang, tongtien, phuongthucthanhtoan, mavung) FROM stdin;
    hn               postgres    false    274   -~      �          0    16818 
   khach_hang 
   TABLE DATA           a   COPY hn.khach_hang (makhachhang, sodienthoai, email, diemthanthiet, ngaytao, mavung) FROM stdin;
    hn               postgres    false    266   J~      �          0    16828    kho_hang 
   TABLE DATA           H   COPY hn.kho_hang (makho, macuahang, soluonghientai, mavung) FROM stdin;
    hn               postgres    false    268   g~      �          0    16841 
   nguoi_dung 
   TABLE DATA           k   COPY hn.nguoi_dung (manguoidung, tendangnhap, matkhau, mavaitro, macuahang, trangthai, mavung) FROM stdin;
    hn               postgres    false    270   �~      �          0    16889    phieu_nhap_hang 
   TABLE DATA           e   COPY hn.phieu_nhap_hang (maphieunhap, makho, manguoidung, ngaynhap, tongsoluong, mavung) FROM stdin;
    hn               postgres    false    276   �~      �          0    16924    phieu_xuat_hang 
   TABLE DATA           a   COPY hn.phieu_xuat_hang (maphieuxuat, makho, manguoidung, ngayxuat, mucdich, mavung) FROM stdin;
    hn               postgres    false    279   �~      �          0    16857    ton_kho 
   TABLE DATA           ^   COPY hn.ton_kho (matonkho, masanpham, macuahang, soluong, muctontoithieu, mavung) FROM stdin;
    hn               postgres    false    272   �~      �          0    16485    chi_tiet_giao_dich 
   TABLE DATA           g   COPY public.chi_tiet_giao_dich (machitiet, magiaodich, masanpham, soluong, giaban, mavung) FROM stdin;
    public               postgres    false    235   �~      �          0    16519    chi_tiet_nhap_hang 
   TABLE DATA           ]   COPY public.chi_tiet_nhap_hang (maphieunhap, masanpham, soluong, dongia, mavung) FROM stdin;
    public               postgres    false    238         �          0    16552    chi_tiet_xuat_hang 
   TABLE DATA           U   COPY public.chi_tiet_xuat_hang (maphieuxuat, masanpham, soluong, mavung) FROM stdin;
    public               postgres    false    241   2      �          0    16473    giao_dich_ban_hang 
   TABLE DATA           l   COPY public.giao_dich_ban_hang (magiaodich, makhachhang, tongtien, phuongthucthanhtoan, mavung) FROM stdin;
    public               postgres    false    233   O      �          0    16399 
   khach_hang 
   TABLE DATA           e   COPY public.khach_hang (makhachhang, sodienthoai, email, diemthanthiet, ngaytao, mavung) FROM stdin;
    public               postgres    false    221   l      �          0    16428    kho_hang 
   TABLE DATA           L   COPY public.kho_hang (makho, macuahang, soluonghientai, mavung) FROM stdin;
    public               postgres    false    227   �      �          0    16419 
   khuyen_mai 
   TABLE DATA           b   COPY public.khuyen_mai (makhuyenmai, loai, giatri, ngaybatdau, ngayketthuc, dieukien) FROM stdin;
    public               postgres    false    225   �      �          0    16440 
   nguoi_dung 
   TABLE DATA           o   COPY public.nguoi_dung (manguoidung, tendangnhap, matkhau, mavaitro, macuahang, trangthai, mavung) FROM stdin;
    public               postgres    false    229   �      �          0    16502    phieu_nhap_hang 
   TABLE DATA           i   COPY public.phieu_nhap_hang (maphieunhap, makho, manguoidung, ngaynhap, tongsoluong, mavung) FROM stdin;
    public               postgres    false    237   �      �          0    16535    phieu_xuat_hang 
   TABLE DATA           e   COPY public.phieu_xuat_hang (maphieuxuat, makho, manguoidung, ngayxuat, mucdich, mavung) FROM stdin;
    public               postgres    false    240   �      �          0    16408    san_pham 
   TABLE DATA           V   COPY public.san_pham (masanpham, tensanpham, masku, mavach, mota, dongia) FROM stdin;
    public               postgres    false    223   �      �          0    16567    san_pham_khuyen_mai 
   TABLE DATA           E   COPY public.san_pham_khuyen_mai (masanpham, makhuyenmai) FROM stdin;
    public               postgres    false    242   7�      �          0    16455    ton_kho 
   TABLE DATA           b   COPY public.ton_kho (matonkho, masanpham, macuahang, soluong, muctontoithieu, mavung) FROM stdin;
    public               postgres    false    231   T�                 0    0     chi_tiet_giao_dich_machitiet_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('hcm.chi_tiet_giao_dich_machitiet_seq', 1, false);
          hcm               postgres    false    255                       0    0    cua_hang_macuahang_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('hcm.cua_hang_macuahang_seq', 1, false);
          hcm               postgres    false    243                       0    0 !   giao_dich_ban_hang_magiaodich_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('hcm.giao_dich_ban_hang_magiaodich_seq', 1, false);
          hcm               postgres    false    253                       0    0    khach_hang_makhachhang_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('hcm.khach_hang_makhachhang_seq', 1, false);
          hcm               postgres    false    245                       0    0    kho_hang_makho_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('hcm.kho_hang_makho_seq', 1, false);
          hcm               postgres    false    247                       0    0    nguoi_dung_manguoidung_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('hcm.nguoi_dung_manguoidung_seq', 1, false);
          hcm               postgres    false    249                       0    0    phieu_nhap_hang_maphieunhap_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('hcm.phieu_nhap_hang_maphieunhap_seq', 1, false);
          hcm               postgres    false    257                       0    0    phieu_xuat_hang_maphieuxuat_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('hcm.phieu_xuat_hang_maphieuxuat_seq', 1, false);
          hcm               postgres    false    260                       0    0    ton_kho_matonkho_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('hcm.ton_kho_matonkho_seq', 1, false);
          hcm               postgres    false    251                       0    0    cua_hang_macuahang_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('hn.cua_hang_macuahang_seq', 1, false);
          hn               postgres    false    263                       0    0 !   giao_dich_ban_hang_magiaodich_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('hn.giao_dich_ban_hang_magiaodich_seq', 1, false);
          hn               postgres    false    273                       0    0    khach_hang_makhachhang_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('hn.khach_hang_makhachhang_seq', 1, false);
          hn               postgres    false    265                       0    0    kho_hang_makho_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('hn.kho_hang_makho_seq', 1, false);
          hn               postgres    false    267                       0    0    nguoi_dung_manguoidung_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('hn.nguoi_dung_manguoidung_seq', 1, false);
          hn               postgres    false    269                       0    0    phieu_nhap_hang_maphieunhap_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('hn.phieu_nhap_hang_maphieunhap_seq', 1, false);
          hn               postgres    false    275                       0    0    phieu_xuat_hang_maphieuxuat_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('hn.phieu_xuat_hang_maphieuxuat_seq', 1, false);
          hn               postgres    false    278                       0    0    ton_kho_matonkho_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('hn.ton_kho_matonkho_seq', 1, false);
          hn               postgres    false    271                       0    0     chi_tiet_giao_dich_machitiet_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.chi_tiet_giao_dich_machitiet_seq', 1, false);
          public               postgres    false    234                       0    0 !   giao_dich_ban_hang_magiaodich_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.giao_dich_ban_hang_magiaodich_seq', 1, false);
          public               postgres    false    232                       0    0    khach_hang_makhachhang_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.khach_hang_makhachhang_seq', 1, false);
          public               postgres    false    220                       0    0    kho_hang_makho_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.kho_hang_makho_seq', 1, false);
          public               postgres    false    226                        0    0    khuyen_mai_makhuyenmai_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.khuyen_mai_makhuyenmai_seq', 1, false);
          public               postgres    false    224            !           0    0    nguoi_dung_manguoidung_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.nguoi_dung_manguoidung_seq', 1, false);
          public               postgres    false    228            "           0    0    phieu_nhap_hang_maphieunhap_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.phieu_nhap_hang_maphieunhap_seq', 1, false);
          public               postgres    false    236            #           0    0    phieu_xuat_hang_maphieuxuat_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.phieu_xuat_hang_maphieuxuat_seq', 1, false);
          public               postgres    false    239            $           0    0    san_pham_masanpham_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.san_pham_masanpham_seq', 1, false);
          public               postgres    false    222            %           0    0    ton_kho_matonkho_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.ton_kho_matonkho_seq', 1, false);
          public               postgres    false    230            �           2606    16707 *   chi_tiet_giao_dich chi_tiet_giao_dich_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY hcm.chi_tiet_giao_dich
    ADD CONSTRAINT chi_tiet_giao_dich_pkey PRIMARY KEY (machitiet);
 Q   ALTER TABLE ONLY hcm.chi_tiet_giao_dich DROP CONSTRAINT chi_tiet_giao_dich_pkey;
       hcm                 postgres    false    256            �           2606    16743 *   chi_tiet_nhap_hang chi_tiet_nhap_hang_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY hcm.chi_tiet_nhap_hang
    ADD CONSTRAINT chi_tiet_nhap_hang_pkey PRIMARY KEY (maphieunhap, masanpham);
 Q   ALTER TABLE ONLY hcm.chi_tiet_nhap_hang DROP CONSTRAINT chi_tiet_nhap_hang_pkey;
       hcm                 postgres    false    259    259            �           2606    16778 *   chi_tiet_xuat_hang chi_tiet_xuat_hang_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY hcm.chi_tiet_xuat_hang
    ADD CONSTRAINT chi_tiet_xuat_hang_pkey PRIMARY KEY (maphieuxuat, masanpham);
 Q   ALTER TABLE ONLY hcm.chi_tiet_xuat_hang DROP CONSTRAINT chi_tiet_xuat_hang_pkey;
       hcm                 postgres    false    262    262            �           2606    16625    cua_hang cua_hang_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY hcm.cua_hang
    ADD CONSTRAINT cua_hang_pkey PRIMARY KEY (macuahang);
 =   ALTER TABLE ONLY hcm.cua_hang DROP CONSTRAINT cua_hang_pkey;
       hcm                 postgres    false    244            �           2606    16694 *   giao_dich_ban_hang giao_dich_ban_hang_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY hcm.giao_dich_ban_hang
    ADD CONSTRAINT giao_dich_ban_hang_pkey PRIMARY KEY (magiaodich);
 Q   ALTER TABLE ONLY hcm.giao_dich_ban_hang DROP CONSTRAINT giao_dich_ban_hang_pkey;
       hcm                 postgres    false    254            �           2606    16635    khach_hang khach_hang_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY hcm.khach_hang
    ADD CONSTRAINT khach_hang_pkey PRIMARY KEY (makhachhang);
 A   ALTER TABLE ONLY hcm.khach_hang DROP CONSTRAINT khach_hang_pkey;
       hcm                 postgres    false    246            �           2606    16645    kho_hang kho_hang_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY hcm.kho_hang
    ADD CONSTRAINT kho_hang_pkey PRIMARY KEY (makho);
 =   ALTER TABLE ONLY hcm.kho_hang DROP CONSTRAINT kho_hang_pkey;
       hcm                 postgres    false    248            �           2606    16660    nguoi_dung nguoi_dung_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY hcm.nguoi_dung
    ADD CONSTRAINT nguoi_dung_pkey PRIMARY KEY (manguoidung);
 A   ALTER TABLE ONLY hcm.nguoi_dung DROP CONSTRAINT nguoi_dung_pkey;
       hcm                 postgres    false    250            �           2606    16662 %   nguoi_dung nguoi_dung_tendangnhap_key 
   CONSTRAINT     d   ALTER TABLE ONLY hcm.nguoi_dung
    ADD CONSTRAINT nguoi_dung_tendangnhap_key UNIQUE (tendangnhap);
 L   ALTER TABLE ONLY hcm.nguoi_dung DROP CONSTRAINT nguoi_dung_tendangnhap_key;
       hcm                 postgres    false    250            �           2606    16726 $   phieu_nhap_hang phieu_nhap_hang_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY hcm.phieu_nhap_hang
    ADD CONSTRAINT phieu_nhap_hang_pkey PRIMARY KEY (maphieunhap);
 K   ALTER TABLE ONLY hcm.phieu_nhap_hang DROP CONSTRAINT phieu_nhap_hang_pkey;
       hcm                 postgres    false    258            �           2606    16762 $   phieu_xuat_hang phieu_xuat_hang_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY hcm.phieu_xuat_hang
    ADD CONSTRAINT phieu_xuat_hang_pkey PRIMARY KEY (maphieuxuat);
 K   ALTER TABLE ONLY hcm.phieu_xuat_hang DROP CONSTRAINT phieu_xuat_hang_pkey;
       hcm                 postgres    false    261            �           2606    16676    ton_kho ton_kho_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY hcm.ton_kho
    ADD CONSTRAINT ton_kho_pkey PRIMARY KEY (matonkho);
 ;   ALTER TABLE ONLY hcm.ton_kho DROP CONSTRAINT ton_kho_pkey;
       hcm                 postgres    false    252            �           2606    16912 *   chi_tiet_nhap_hang chi_tiet_nhap_hang_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY hn.chi_tiet_nhap_hang
    ADD CONSTRAINT chi_tiet_nhap_hang_pkey PRIMARY KEY (maphieunhap, masanpham);
 P   ALTER TABLE ONLY hn.chi_tiet_nhap_hang DROP CONSTRAINT chi_tiet_nhap_hang_pkey;
       hn                 postgres    false    277    277            �           2606    16947 *   chi_tiet_xuat_hang chi_tiet_xuat_hang_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY hn.chi_tiet_xuat_hang
    ADD CONSTRAINT chi_tiet_xuat_hang_pkey PRIMARY KEY (maphieuxuat, masanpham);
 P   ALTER TABLE ONLY hn.chi_tiet_xuat_hang DROP CONSTRAINT chi_tiet_xuat_hang_pkey;
       hn                 postgres    false    280    280            �           2606    16816    cua_hang cua_hang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY hn.cua_hang
    ADD CONSTRAINT cua_hang_pkey PRIMARY KEY (macuahang);
 <   ALTER TABLE ONLY hn.cua_hang DROP CONSTRAINT cua_hang_pkey;
       hn                 postgres    false    264            �           2606    16882 *   giao_dich_ban_hang giao_dich_ban_hang_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY hn.giao_dich_ban_hang
    ADD CONSTRAINT giao_dich_ban_hang_pkey PRIMARY KEY (magiaodich);
 P   ALTER TABLE ONLY hn.giao_dich_ban_hang DROP CONSTRAINT giao_dich_ban_hang_pkey;
       hn                 postgres    false    274            �           2606    16826    khach_hang khach_hang_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY hn.khach_hang
    ADD CONSTRAINT khach_hang_pkey PRIMARY KEY (makhachhang);
 @   ALTER TABLE ONLY hn.khach_hang DROP CONSTRAINT khach_hang_pkey;
       hn                 postgres    false    266            �           2606    16834    kho_hang kho_hang_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY hn.kho_hang
    ADD CONSTRAINT kho_hang_pkey PRIMARY KEY (makho);
 <   ALTER TABLE ONLY hn.kho_hang DROP CONSTRAINT kho_hang_pkey;
       hn                 postgres    false    268            �           2606    16848    nguoi_dung nguoi_dung_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY hn.nguoi_dung
    ADD CONSTRAINT nguoi_dung_pkey PRIMARY KEY (manguoidung);
 @   ALTER TABLE ONLY hn.nguoi_dung DROP CONSTRAINT nguoi_dung_pkey;
       hn                 postgres    false    270            �           2606    16850 %   nguoi_dung nguoi_dung_tendangnhap_key 
   CONSTRAINT     c   ALTER TABLE ONLY hn.nguoi_dung
    ADD CONSTRAINT nguoi_dung_tendangnhap_key UNIQUE (tendangnhap);
 K   ALTER TABLE ONLY hn.nguoi_dung DROP CONSTRAINT nguoi_dung_tendangnhap_key;
       hn                 postgres    false    270            �           2606    16896 $   phieu_nhap_hang phieu_nhap_hang_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY hn.phieu_nhap_hang
    ADD CONSTRAINT phieu_nhap_hang_pkey PRIMARY KEY (maphieunhap);
 J   ALTER TABLE ONLY hn.phieu_nhap_hang DROP CONSTRAINT phieu_nhap_hang_pkey;
       hn                 postgres    false    276            �           2606    16931 $   phieu_xuat_hang phieu_xuat_hang_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY hn.phieu_xuat_hang
    ADD CONSTRAINT phieu_xuat_hang_pkey PRIMARY KEY (maphieuxuat);
 J   ALTER TABLE ONLY hn.phieu_xuat_hang DROP CONSTRAINT phieu_xuat_hang_pkey;
       hn                 postgres    false    279            �           2606    16864    ton_kho ton_kho_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY hn.ton_kho
    ADD CONSTRAINT ton_kho_pkey PRIMARY KEY (matonkho);
 :   ALTER TABLE ONLY hn.ton_kho DROP CONSTRAINT ton_kho_pkey;
       hn                 postgres    false    272            �           2606    16490 *   chi_tiet_giao_dich chi_tiet_giao_dich_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.chi_tiet_giao_dich
    ADD CONSTRAINT chi_tiet_giao_dich_pkey PRIMARY KEY (machitiet);
 T   ALTER TABLE ONLY public.chi_tiet_giao_dich DROP CONSTRAINT chi_tiet_giao_dich_pkey;
       public                 postgres    false    235            �           2606    16523 *   chi_tiet_nhap_hang chi_tiet_nhap_hang_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.chi_tiet_nhap_hang
    ADD CONSTRAINT chi_tiet_nhap_hang_pkey PRIMARY KEY (maphieunhap, masanpham);
 T   ALTER TABLE ONLY public.chi_tiet_nhap_hang DROP CONSTRAINT chi_tiet_nhap_hang_pkey;
       public                 postgres    false    238    238            �           2606    16556 *   chi_tiet_xuat_hang chi_tiet_xuat_hang_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.chi_tiet_xuat_hang
    ADD CONSTRAINT chi_tiet_xuat_hang_pkey PRIMARY KEY (maphieuxuat, masanpham);
 T   ALTER TABLE ONLY public.chi_tiet_xuat_hang DROP CONSTRAINT chi_tiet_xuat_hang_pkey;
       public                 postgres    false    241    241            �           2606    16478 *   giao_dich_ban_hang giao_dich_ban_hang_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.giao_dich_ban_hang
    ADD CONSTRAINT giao_dich_ban_hang_pkey PRIMARY KEY (magiaodich);
 T   ALTER TABLE ONLY public.giao_dich_ban_hang DROP CONSTRAINT giao_dich_ban_hang_pkey;
       public                 postgres    false    233            �           2606    16406    khach_hang khach_hang_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.khach_hang
    ADD CONSTRAINT khach_hang_pkey PRIMARY KEY (makhachhang);
 D   ALTER TABLE ONLY public.khach_hang DROP CONSTRAINT khach_hang_pkey;
       public                 postgres    false    221            �           2606    16433    kho_hang kho_hang_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.kho_hang
    ADD CONSTRAINT kho_hang_pkey PRIMARY KEY (makho);
 @   ALTER TABLE ONLY public.kho_hang DROP CONSTRAINT kho_hang_pkey;
       public                 postgres    false    227            �           2606    16426    khuyen_mai khuyen_mai_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.khuyen_mai
    ADD CONSTRAINT khuyen_mai_pkey PRIMARY KEY (makhuyenmai);
 D   ALTER TABLE ONLY public.khuyen_mai DROP CONSTRAINT khuyen_mai_pkey;
       public                 postgres    false    225            �           2606    16446    nguoi_dung nguoi_dung_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.nguoi_dung
    ADD CONSTRAINT nguoi_dung_pkey PRIMARY KEY (manguoidung);
 D   ALTER TABLE ONLY public.nguoi_dung DROP CONSTRAINT nguoi_dung_pkey;
       public                 postgres    false    229            �           2606    16448 %   nguoi_dung nguoi_dung_tendangnhap_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.nguoi_dung
    ADD CONSTRAINT nguoi_dung_tendangnhap_key UNIQUE (tendangnhap);
 O   ALTER TABLE ONLY public.nguoi_dung DROP CONSTRAINT nguoi_dung_tendangnhap_key;
       public                 postgres    false    229            �           2606    16508 $   phieu_nhap_hang phieu_nhap_hang_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.phieu_nhap_hang
    ADD CONSTRAINT phieu_nhap_hang_pkey PRIMARY KEY (maphieunhap);
 N   ALTER TABLE ONLY public.phieu_nhap_hang DROP CONSTRAINT phieu_nhap_hang_pkey;
       public                 postgres    false    237            �           2606    16541 $   phieu_xuat_hang phieu_xuat_hang_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.phieu_xuat_hang
    ADD CONSTRAINT phieu_xuat_hang_pkey PRIMARY KEY (maphieuxuat);
 N   ALTER TABLE ONLY public.phieu_xuat_hang DROP CONSTRAINT phieu_xuat_hang_pkey;
       public                 postgres    false    240            �           2606    16571 ,   san_pham_khuyen_mai san_pham_khuyen_mai_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.san_pham_khuyen_mai
    ADD CONSTRAINT san_pham_khuyen_mai_pkey PRIMARY KEY (masanpham, makhuyenmai);
 V   ALTER TABLE ONLY public.san_pham_khuyen_mai DROP CONSTRAINT san_pham_khuyen_mai_pkey;
       public                 postgres    false    242    242            �           2606    16417    san_pham san_pham_masku_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.san_pham
    ADD CONSTRAINT san_pham_masku_key UNIQUE (masku);
 E   ALTER TABLE ONLY public.san_pham DROP CONSTRAINT san_pham_masku_key;
       public                 postgres    false    223            �           2606    16415    san_pham san_pham_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.san_pham
    ADD CONSTRAINT san_pham_pkey PRIMARY KEY (masanpham);
 @   ALTER TABLE ONLY public.san_pham DROP CONSTRAINT san_pham_pkey;
       public                 postgres    false    223            �           2606    16461    ton_kho ton_kho_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.ton_kho
    ADD CONSTRAINT ton_kho_pkey PRIMARY KEY (matonkho);
 >   ALTER TABLE ONLY public.ton_kho DROP CONSTRAINT ton_kho_pkey;
       public                 postgres    false    231            �           1259    17023    idx_hcm_cua_hang_mavung    INDEX     K   CREATE INDEX idx_hcm_cua_hang_mavung ON hcm.cua_hang USING btree (mavung);
 (   DROP INDEX hcm.idx_hcm_cua_hang_mavung;
       hcm                 postgres    false    244            �           1259    17024    idx_hn_cua_hang_mavung    INDEX     I   CREATE INDEX idx_hn_cua_hang_mavung ON hn.cua_hang USING btree (mavung);
 &   DROP INDEX hn.idx_hn_cua_hang_mavung;
       hn                 postgres    false    264            �           2606    16708 5   chi_tiet_giao_dich chi_tiet_giao_dich_magiaodich_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.chi_tiet_giao_dich
    ADD CONSTRAINT chi_tiet_giao_dich_magiaodich_fkey FOREIGN KEY (magiaodich) REFERENCES hcm.giao_dich_ban_hang(magiaodich);
 \   ALTER TABLE ONLY hcm.chi_tiet_giao_dich DROP CONSTRAINT chi_tiet_giao_dich_magiaodich_fkey;
       hcm               postgres    false    256    254    5061            �           2606    16713 4   chi_tiet_giao_dich chi_tiet_giao_dich_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.chi_tiet_giao_dich
    ADD CONSTRAINT chi_tiet_giao_dich_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.san_pham(masanpham);
 [   ALTER TABLE ONLY hcm.chi_tiet_giao_dich DROP CONSTRAINT chi_tiet_giao_dich_masanpham_fkey;
       hcm               postgres    false    223    256    5022            �           2606    16744 6   chi_tiet_nhap_hang chi_tiet_nhap_hang_maphieunhap_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.chi_tiet_nhap_hang
    ADD CONSTRAINT chi_tiet_nhap_hang_maphieunhap_fkey FOREIGN KEY (maphieunhap) REFERENCES hcm.phieu_nhap_hang(maphieunhap);
 ]   ALTER TABLE ONLY hcm.chi_tiet_nhap_hang DROP CONSTRAINT chi_tiet_nhap_hang_maphieunhap_fkey;
       hcm               postgres    false    259    5065    258            �           2606    16749 4   chi_tiet_nhap_hang chi_tiet_nhap_hang_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.chi_tiet_nhap_hang
    ADD CONSTRAINT chi_tiet_nhap_hang_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.san_pham(masanpham);
 [   ALTER TABLE ONLY hcm.chi_tiet_nhap_hang DROP CONSTRAINT chi_tiet_nhap_hang_masanpham_fkey;
       hcm               postgres    false    259    5022    223                       2606    16779 6   chi_tiet_xuat_hang chi_tiet_xuat_hang_maphieuxuat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.chi_tiet_xuat_hang
    ADD CONSTRAINT chi_tiet_xuat_hang_maphieuxuat_fkey FOREIGN KEY (maphieuxuat) REFERENCES hcm.phieu_xuat_hang(maphieuxuat);
 ]   ALTER TABLE ONLY hcm.chi_tiet_xuat_hang DROP CONSTRAINT chi_tiet_xuat_hang_maphieuxuat_fkey;
       hcm               postgres    false    262    5069    261                       2606    16784 4   chi_tiet_xuat_hang chi_tiet_xuat_hang_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.chi_tiet_xuat_hang
    ADD CONSTRAINT chi_tiet_xuat_hang_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.san_pham(masanpham);
 [   ALTER TABLE ONLY hcm.chi_tiet_xuat_hang DROP CONSTRAINT chi_tiet_xuat_hang_masanpham_fkey;
       hcm               postgres    false    262    5022    223            �           2606    16695 6   giao_dich_ban_hang giao_dich_ban_hang_makhachhang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.giao_dich_ban_hang
    ADD CONSTRAINT giao_dich_ban_hang_makhachhang_fkey FOREIGN KEY (makhachhang) REFERENCES hcm.khach_hang(makhachhang);
 ]   ALTER TABLE ONLY hcm.giao_dich_ban_hang DROP CONSTRAINT giao_dich_ban_hang_makhachhang_fkey;
       hcm               postgres    false    254    246    5051            �           2606    16646     kho_hang kho_hang_macuahang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.kho_hang
    ADD CONSTRAINT kho_hang_macuahang_fkey FOREIGN KEY (macuahang) REFERENCES hcm.cua_hang(macuahang);
 G   ALTER TABLE ONLY hcm.kho_hang DROP CONSTRAINT kho_hang_macuahang_fkey;
       hcm               postgres    false    248    5048    244            �           2606    16663 $   nguoi_dung nguoi_dung_macuahang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.nguoi_dung
    ADD CONSTRAINT nguoi_dung_macuahang_fkey FOREIGN KEY (macuahang) REFERENCES hcm.cua_hang(macuahang);
 K   ALTER TABLE ONLY hcm.nguoi_dung DROP CONSTRAINT nguoi_dung_macuahang_fkey;
       hcm               postgres    false    244    5048    250            �           2606    16727 *   phieu_nhap_hang phieu_nhap_hang_makho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.phieu_nhap_hang
    ADD CONSTRAINT phieu_nhap_hang_makho_fkey FOREIGN KEY (makho) REFERENCES hcm.kho_hang(makho);
 Q   ALTER TABLE ONLY hcm.phieu_nhap_hang DROP CONSTRAINT phieu_nhap_hang_makho_fkey;
       hcm               postgres    false    248    258    5053            �           2606    16732 0   phieu_nhap_hang phieu_nhap_hang_manguoidung_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.phieu_nhap_hang
    ADD CONSTRAINT phieu_nhap_hang_manguoidung_fkey FOREIGN KEY (manguoidung) REFERENCES hcm.nguoi_dung(manguoidung);
 W   ALTER TABLE ONLY hcm.phieu_nhap_hang DROP CONSTRAINT phieu_nhap_hang_manguoidung_fkey;
       hcm               postgres    false    5055    258    250                        2606    16763 *   phieu_xuat_hang phieu_xuat_hang_makho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.phieu_xuat_hang
    ADD CONSTRAINT phieu_xuat_hang_makho_fkey FOREIGN KEY (makho) REFERENCES hcm.kho_hang(makho);
 Q   ALTER TABLE ONLY hcm.phieu_xuat_hang DROP CONSTRAINT phieu_xuat_hang_makho_fkey;
       hcm               postgres    false    261    5053    248                       2606    16768 0   phieu_xuat_hang phieu_xuat_hang_manguoidung_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.phieu_xuat_hang
    ADD CONSTRAINT phieu_xuat_hang_manguoidung_fkey FOREIGN KEY (manguoidung) REFERENCES hcm.nguoi_dung(manguoidung);
 W   ALTER TABLE ONLY hcm.phieu_xuat_hang DROP CONSTRAINT phieu_xuat_hang_manguoidung_fkey;
       hcm               postgres    false    250    5055    261            �           2606    16682    ton_kho ton_kho_macuahang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.ton_kho
    ADD CONSTRAINT ton_kho_macuahang_fkey FOREIGN KEY (macuahang) REFERENCES hcm.cua_hang(macuahang);
 E   ALTER TABLE ONLY hcm.ton_kho DROP CONSTRAINT ton_kho_macuahang_fkey;
       hcm               postgres    false    5048    244    252            �           2606    16677    ton_kho ton_kho_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hcm.ton_kho
    ADD CONSTRAINT ton_kho_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.san_pham(masanpham);
 E   ALTER TABLE ONLY hcm.ton_kho DROP CONSTRAINT ton_kho_masanpham_fkey;
       hcm               postgres    false    223    5022    252                       2606    16913 6   chi_tiet_nhap_hang chi_tiet_nhap_hang_maphieunhap_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hn.chi_tiet_nhap_hang
    ADD CONSTRAINT chi_tiet_nhap_hang_maphieunhap_fkey FOREIGN KEY (maphieunhap) REFERENCES hn.phieu_nhap_hang(maphieunhap);
 \   ALTER TABLE ONLY hn.chi_tiet_nhap_hang DROP CONSTRAINT chi_tiet_nhap_hang_maphieunhap_fkey;
       hn               postgres    false    277    5088    276                       2606    16918 4   chi_tiet_nhap_hang chi_tiet_nhap_hang_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hn.chi_tiet_nhap_hang
    ADD CONSTRAINT chi_tiet_nhap_hang_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.san_pham(masanpham);
 Z   ALTER TABLE ONLY hn.chi_tiet_nhap_hang DROP CONSTRAINT chi_tiet_nhap_hang_masanpham_fkey;
       hn               postgres    false    223    5022    277                       2606    16948 6   chi_tiet_xuat_hang chi_tiet_xuat_hang_maphieuxuat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hn.chi_tiet_xuat_hang
    ADD CONSTRAINT chi_tiet_xuat_hang_maphieuxuat_fkey FOREIGN KEY (maphieuxuat) REFERENCES hn.phieu_xuat_hang(maphieuxuat);
 \   ALTER TABLE ONLY hn.chi_tiet_xuat_hang DROP CONSTRAINT chi_tiet_xuat_hang_maphieuxuat_fkey;
       hn               postgres    false    280    279    5092                       2606    16953 4   chi_tiet_xuat_hang chi_tiet_xuat_hang_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hn.chi_tiet_xuat_hang
    ADD CONSTRAINT chi_tiet_xuat_hang_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.san_pham(masanpham);
 Z   ALTER TABLE ONLY hn.chi_tiet_xuat_hang DROP CONSTRAINT chi_tiet_xuat_hang_masanpham_fkey;
       hn               postgres    false    280    223    5022                       2606    16883 6   giao_dich_ban_hang giao_dich_ban_hang_makhachhang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hn.giao_dich_ban_hang
    ADD CONSTRAINT giao_dich_ban_hang_makhachhang_fkey FOREIGN KEY (makhachhang) REFERENCES hn.khach_hang(makhachhang);
 \   ALTER TABLE ONLY hn.giao_dich_ban_hang DROP CONSTRAINT giao_dich_ban_hang_makhachhang_fkey;
       hn               postgres    false    5076    274    266                       2606    16835     kho_hang kho_hang_macuahang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hn.kho_hang
    ADD CONSTRAINT kho_hang_macuahang_fkey FOREIGN KEY (macuahang) REFERENCES hn.cua_hang(macuahang);
 F   ALTER TABLE ONLY hn.kho_hang DROP CONSTRAINT kho_hang_macuahang_fkey;
       hn               postgres    false    268    5073    264                       2606    16851 $   nguoi_dung nguoi_dung_macuahang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hn.nguoi_dung
    ADD CONSTRAINT nguoi_dung_macuahang_fkey FOREIGN KEY (macuahang) REFERENCES hn.cua_hang(macuahang);
 J   ALTER TABLE ONLY hn.nguoi_dung DROP CONSTRAINT nguoi_dung_macuahang_fkey;
       hn               postgres    false    270    5073    264            	           2606    16897 *   phieu_nhap_hang phieu_nhap_hang_makho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hn.phieu_nhap_hang
    ADD CONSTRAINT phieu_nhap_hang_makho_fkey FOREIGN KEY (makho) REFERENCES hn.kho_hang(makho);
 P   ALTER TABLE ONLY hn.phieu_nhap_hang DROP CONSTRAINT phieu_nhap_hang_makho_fkey;
       hn               postgres    false    268    276    5078            
           2606    16902 0   phieu_nhap_hang phieu_nhap_hang_manguoidung_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hn.phieu_nhap_hang
    ADD CONSTRAINT phieu_nhap_hang_manguoidung_fkey FOREIGN KEY (manguoidung) REFERENCES hn.nguoi_dung(manguoidung);
 V   ALTER TABLE ONLY hn.phieu_nhap_hang DROP CONSTRAINT phieu_nhap_hang_manguoidung_fkey;
       hn               postgres    false    270    276    5080                       2606    16932 *   phieu_xuat_hang phieu_xuat_hang_makho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hn.phieu_xuat_hang
    ADD CONSTRAINT phieu_xuat_hang_makho_fkey FOREIGN KEY (makho) REFERENCES hn.kho_hang(makho);
 P   ALTER TABLE ONLY hn.phieu_xuat_hang DROP CONSTRAINT phieu_xuat_hang_makho_fkey;
       hn               postgres    false    5078    279    268                       2606    16937 0   phieu_xuat_hang phieu_xuat_hang_manguoidung_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hn.phieu_xuat_hang
    ADD CONSTRAINT phieu_xuat_hang_manguoidung_fkey FOREIGN KEY (manguoidung) REFERENCES hn.nguoi_dung(manguoidung);
 V   ALTER TABLE ONLY hn.phieu_xuat_hang DROP CONSTRAINT phieu_xuat_hang_manguoidung_fkey;
       hn               postgres    false    279    270    5080                       2606    16870    ton_kho ton_kho_macuahang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hn.ton_kho
    ADD CONSTRAINT ton_kho_macuahang_fkey FOREIGN KEY (macuahang) REFERENCES hn.cua_hang(macuahang);
 D   ALTER TABLE ONLY hn.ton_kho DROP CONSTRAINT ton_kho_macuahang_fkey;
       hn               postgres    false    264    272    5073                       2606    16865    ton_kho ton_kho_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hn.ton_kho
    ADD CONSTRAINT ton_kho_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.san_pham(masanpham);
 D   ALTER TABLE ONLY hn.ton_kho DROP CONSTRAINT ton_kho_masanpham_fkey;
       hn               postgres    false    223    272    5022            �           2606    16491 5   chi_tiet_giao_dich chi_tiet_giao_dich_magiaodich_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chi_tiet_giao_dich
    ADD CONSTRAINT chi_tiet_giao_dich_magiaodich_fkey FOREIGN KEY (magiaodich) REFERENCES public.giao_dich_ban_hang(magiaodich);
 _   ALTER TABLE ONLY public.chi_tiet_giao_dich DROP CONSTRAINT chi_tiet_giao_dich_magiaodich_fkey;
       public               postgres    false    233    235    5034            �           2606    16496 4   chi_tiet_giao_dich chi_tiet_giao_dich_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chi_tiet_giao_dich
    ADD CONSTRAINT chi_tiet_giao_dich_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.san_pham(masanpham);
 ^   ALTER TABLE ONLY public.chi_tiet_giao_dich DROP CONSTRAINT chi_tiet_giao_dich_masanpham_fkey;
       public               postgres    false    235    5022    223            �           2606    16524 6   chi_tiet_nhap_hang chi_tiet_nhap_hang_maphieunhap_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chi_tiet_nhap_hang
    ADD CONSTRAINT chi_tiet_nhap_hang_maphieunhap_fkey FOREIGN KEY (maphieunhap) REFERENCES public.phieu_nhap_hang(maphieunhap);
 `   ALTER TABLE ONLY public.chi_tiet_nhap_hang DROP CONSTRAINT chi_tiet_nhap_hang_maphieunhap_fkey;
       public               postgres    false    5038    237    238            �           2606    16529 4   chi_tiet_nhap_hang chi_tiet_nhap_hang_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chi_tiet_nhap_hang
    ADD CONSTRAINT chi_tiet_nhap_hang_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.san_pham(masanpham);
 ^   ALTER TABLE ONLY public.chi_tiet_nhap_hang DROP CONSTRAINT chi_tiet_nhap_hang_masanpham_fkey;
       public               postgres    false    5022    238    223            �           2606    16557 6   chi_tiet_xuat_hang chi_tiet_xuat_hang_maphieuxuat_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chi_tiet_xuat_hang
    ADD CONSTRAINT chi_tiet_xuat_hang_maphieuxuat_fkey FOREIGN KEY (maphieuxuat) REFERENCES public.phieu_xuat_hang(maphieuxuat);
 `   ALTER TABLE ONLY public.chi_tiet_xuat_hang DROP CONSTRAINT chi_tiet_xuat_hang_maphieuxuat_fkey;
       public               postgres    false    240    5042    241            �           2606    16562 4   chi_tiet_xuat_hang chi_tiet_xuat_hang_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.chi_tiet_xuat_hang
    ADD CONSTRAINT chi_tiet_xuat_hang_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.san_pham(masanpham);
 ^   ALTER TABLE ONLY public.chi_tiet_xuat_hang DROP CONSTRAINT chi_tiet_xuat_hang_masanpham_fkey;
       public               postgres    false    5022    241    223            �           2606    16479 6   giao_dich_ban_hang giao_dich_ban_hang_makhachhang_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.giao_dich_ban_hang
    ADD CONSTRAINT giao_dich_ban_hang_makhachhang_fkey FOREIGN KEY (makhachhang) REFERENCES public.khach_hang(makhachhang);
 `   ALTER TABLE ONLY public.giao_dich_ban_hang DROP CONSTRAINT giao_dich_ban_hang_makhachhang_fkey;
       public               postgres    false    5018    221    233            �           2606    16509 *   phieu_nhap_hang phieu_nhap_hang_makho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.phieu_nhap_hang
    ADD CONSTRAINT phieu_nhap_hang_makho_fkey FOREIGN KEY (makho) REFERENCES public.kho_hang(makho);
 T   ALTER TABLE ONLY public.phieu_nhap_hang DROP CONSTRAINT phieu_nhap_hang_makho_fkey;
       public               postgres    false    5026    237    227            �           2606    16514 0   phieu_nhap_hang phieu_nhap_hang_manguoidung_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.phieu_nhap_hang
    ADD CONSTRAINT phieu_nhap_hang_manguoidung_fkey FOREIGN KEY (manguoidung) REFERENCES public.nguoi_dung(manguoidung);
 Z   ALTER TABLE ONLY public.phieu_nhap_hang DROP CONSTRAINT phieu_nhap_hang_manguoidung_fkey;
       public               postgres    false    237    229    5028            �           2606    16542 *   phieu_xuat_hang phieu_xuat_hang_makho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.phieu_xuat_hang
    ADD CONSTRAINT phieu_xuat_hang_makho_fkey FOREIGN KEY (makho) REFERENCES public.kho_hang(makho);
 T   ALTER TABLE ONLY public.phieu_xuat_hang DROP CONSTRAINT phieu_xuat_hang_makho_fkey;
       public               postgres    false    5026    240    227            �           2606    16547 0   phieu_xuat_hang phieu_xuat_hang_manguoidung_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.phieu_xuat_hang
    ADD CONSTRAINT phieu_xuat_hang_manguoidung_fkey FOREIGN KEY (manguoidung) REFERENCES public.nguoi_dung(manguoidung);
 Z   ALTER TABLE ONLY public.phieu_xuat_hang DROP CONSTRAINT phieu_xuat_hang_manguoidung_fkey;
       public               postgres    false    229    5028    240            �           2606    16577 8   san_pham_khuyen_mai san_pham_khuyen_mai_makhuyenmai_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.san_pham_khuyen_mai
    ADD CONSTRAINT san_pham_khuyen_mai_makhuyenmai_fkey FOREIGN KEY (makhuyenmai) REFERENCES public.khuyen_mai(makhuyenmai);
 b   ALTER TABLE ONLY public.san_pham_khuyen_mai DROP CONSTRAINT san_pham_khuyen_mai_makhuyenmai_fkey;
       public               postgres    false    225    242    5024            �           2606    16572 6   san_pham_khuyen_mai san_pham_khuyen_mai_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.san_pham_khuyen_mai
    ADD CONSTRAINT san_pham_khuyen_mai_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.san_pham(masanpham);
 `   ALTER TABLE ONLY public.san_pham_khuyen_mai DROP CONSTRAINT san_pham_khuyen_mai_masanpham_fkey;
       public               postgres    false    242    5022    223            �           2606    16462    ton_kho ton_kho_masanpham_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ton_kho
    ADD CONSTRAINT ton_kho_masanpham_fkey FOREIGN KEY (masanpham) REFERENCES public.san_pham(masanpham);
 H   ALTER TABLE ONLY public.ton_kho DROP CONSTRAINT ton_kho_masanpham_fkey;
       public               postgres    false    5022    223    231            �      x������ � �      �      x������ � �      �      x������ � �      �     x�mϽN�0��y�� ����&i�JM���%���R���3bb���nL�辈ߤ�ٚ��J�;�Yn���4��$/�Yaw����~�P(�ժ��~����7��lQ.�d� 2��.̭Gi$vi�+���Aa���c��\��0��������|�16�Jb&��CI�O�J.�d�*��/愳�Y[��<���������N)F�l>h�	+�NO�~�o����Qa��,U�|�&L���%#J�����~E����      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �     x�eнJ�@�z���%�d�Sj�q� �L��7E��f���U�J��J�Y|�yg�.i�~�r<����@��D��#���ã�˦����ՇX�f	^��}����: ��� .��41[~@�ܡS����řQy��/���E��#��MM��R��!���(��?�}­W�Ý�����e���Qx=����FH\�Z1���X@��RG��8����Mp�31�!���VdS�����io�V��g�bێ�n���B�܄2Dq�Z�a�8�?ʽ�~      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     