PGDMP         6                 x            postgres    11.2    12.1    b           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            c           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            d           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            e           1262    13012    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Polish_Poland.1250' LC_CTYPE = 'Polish_Poland.1250';
    DROP DATABASE postgres;
                postgres    false            f           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3173                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            g           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    1            �            1259    16468 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public            postgres    false            �            1259    16466    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    204            h           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    203            �            1259    16478    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public            postgres    false            �            1259    16476    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    206            i           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    205            �            1259    16460    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public            postgres    false            �            1259    16458    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    202            j           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    201            �            1259    16486 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public            postgres    false            �            1259    16496    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public            postgres    false            �            1259    16494    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    210            k           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    209            �            1259    16484    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    208            l           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    207            �            1259    16504    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public            postgres    false            �            1259    16502 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    212            m           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    211            �            1259    16564    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public            postgres    false            �            1259    16562    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    214            n           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    213            �            1259    16450    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public            postgres    false            �            1259    16448    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    200            o           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    199            �            1259    16439    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public            postgres    false            �            1259    16437    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    198            p           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    197            �            1259    16595    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public            postgres    false            �            1259    16807    lekarze_city    TABLE     �   CREATE TABLE public.lekarze_city (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    country_id integer NOT NULL
);
     DROP TABLE public.lekarze_city;
       public            postgres    false            �            1259    16805    lekarze_city_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lekarze_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.lekarze_city_id_seq;
       public          postgres    false    235            q           0    0    lekarze_city_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.lekarze_city_id_seq OWNED BY public.lekarze_city.id;
          public          postgres    false    234            �            1259    16797    lekarze_country    TABLE     j   CREATE TABLE public.lekarze_country (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);
 #   DROP TABLE public.lekarze_country;
       public            postgres    false            �            1259    16795    lekarze_country_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lekarze_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.lekarze_country_id_seq;
       public          postgres    false    233            r           0    0    lekarze_country_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.lekarze_country_id_seq OWNED BY public.lekarze_country.id;
          public          postgres    false    232            �            1259    16615    lekarze_department    TABLE     �   CREATE TABLE public.lekarze_department (
    id integer NOT NULL,
    name character varying(50),
    hospital_id integer NOT NULL
);
 &   DROP TABLE public.lekarze_department;
       public            postgres    false            �            1259    16613    lekarze_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lekarze_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.lekarze_department_id_seq;
       public          postgres    false    219            s           0    0    lekarze_department_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.lekarze_department_id_seq OWNED BY public.lekarze_department.id;
          public          postgres    false    218            �            1259    16986    lekarze_exchange    TABLE     �   CREATE TABLE public.lekarze_exchange (
    id integer NOT NULL,
    status smallint NOT NULL,
    who_id integer,
    whom_id integer,
    myshift_id integer,
    yourshift_id integer
);
 $   DROP TABLE public.lekarze_exchange;
       public            postgres    false            �            1259    16984    lekarze_exchange_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lekarze_exchange_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.lekarze_exchange_id_seq;
       public          postgres    false    243            t           0    0    lekarze_exchange_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.lekarze_exchange_id_seq OWNED BY public.lekarze_exchange.id;
          public          postgres    false    242            �            1259    16607    lekarze_hospital    TABLE     �   CREATE TABLE public.lekarze_hospital (
    id integer NOT NULL,
    name character varying(50),
    address character varying(50),
    city_id integer NOT NULL
);
 $   DROP TABLE public.lekarze_hospital;
       public            postgres    false            �            1259    16605    lekarze_hospital_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lekarze_hospital_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.lekarze_hospital_id_seq;
       public          postgres    false    217            u           0    0    lekarze_hospital_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.lekarze_hospital_id_seq OWNED BY public.lekarze_hospital.id;
          public          postgres    false    216            �            1259    16836    lekarze_shift    TABLE     (  CREATE TABLE public.lekarze_shift (
    shift_id integer NOT NULL,
    shift_name character varying(255),
    start_date timestamp with time zone,
    end_date timestamp with time zone,
    department_id integer NOT NULL,
    staff_name_id integer NOT NULL,
    shift_type_id integer NOT NULL
);
 !   DROP TABLE public.lekarze_shift;
       public            postgres    false            �            1259    16834    lekarze_shift_shift_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lekarze_shift_shift_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.lekarze_shift_shift_id_seq;
       public          postgres    false    237            v           0    0    lekarze_shift_shift_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.lekarze_shift_shift_id_seq OWNED BY public.lekarze_shift.shift_id;
          public          postgres    false    236            �            1259    16893    lekarze_shiftcounter    TABLE     �   CREATE TABLE public.lekarze_shiftcounter (
    id integer NOT NULL,
    date timestamp with time zone,
    counter smallint NOT NULL,
    shift_type_id integer NOT NULL,
    department_id integer
);
 (   DROP TABLE public.lekarze_shiftcounter;
       public            postgres    false            �            1259    16891    lekarze_shiftcounter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lekarze_shiftcounter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.lekarze_shiftcounter_id_seq;
       public          postgres    false    241            w           0    0    lekarze_shiftcounter_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.lekarze_shiftcounter_id_seq OWNED BY public.lekarze_shiftcounter.id;
          public          postgres    false    240            �            1259    16856    lekarze_shifttype    TABLE     �   CREATE TABLE public.lekarze_shifttype (
    id integer NOT NULL,
    name character varying(50),
    start_date time without time zone,
    end_date time without time zone
);
 %   DROP TABLE public.lekarze_shifttype;
       public            postgres    false            �            1259    16854    lekarze_shifttype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lekarze_shifttype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.lekarze_shifttype_id_seq;
       public          postgres    false    239            x           0    0    lekarze_shifttype_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.lekarze_shifttype_id_seq OWNED BY public.lekarze_shifttype.id;
          public          postgres    false    238            �            1259    16630    schedule_calendar    TABLE     �   CREATE TABLE public.schedule_calendar (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    slug character varying(200) NOT NULL
);
 %   DROP TABLE public.schedule_calendar;
       public            postgres    false            �            1259    16628    schedule_calendar_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_calendar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.schedule_calendar_id_seq;
       public          postgres    false    221            y           0    0    schedule_calendar_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.schedule_calendar_id_seq OWNED BY public.schedule_calendar.id;
          public          postgres    false    220            �            1259    16638    schedule_calendarrelation    TABLE       CREATE TABLE public.schedule_calendarrelation (
    id integer NOT NULL,
    object_id integer NOT NULL,
    distinction character varying(20) NOT NULL,
    inheritable boolean NOT NULL,
    calendar_id integer NOT NULL,
    content_type_id integer NOT NULL
);
 -   DROP TABLE public.schedule_calendarrelation;
       public            postgres    false            �            1259    16636     schedule_calendarrelation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_calendarrelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.schedule_calendarrelation_id_seq;
       public          postgres    false    223            z           0    0     schedule_calendarrelation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.schedule_calendarrelation_id_seq OWNED BY public.schedule_calendarrelation.id;
          public          postgres    false    222            �            1259    16646    schedule_event    TABLE     �  CREATE TABLE public.schedule_event (
    id integer NOT NULL,
    start timestamp with time zone NOT NULL,
    "end" timestamp with time zone NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    end_recurring_period timestamp with time zone,
    calendar_id integer NOT NULL,
    creator_id integer,
    rule_id integer,
    color_event character varying(10) NOT NULL
);
 "   DROP TABLE public.schedule_event;
       public            postgres    false            �            1259    16644    schedule_event_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.schedule_event_id_seq;
       public          postgres    false    225            {           0    0    schedule_event_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.schedule_event_id_seq OWNED BY public.schedule_event.id;
          public          postgres    false    224            �            1259    16657    schedule_eventrelation    TABLE     �   CREATE TABLE public.schedule_eventrelation (
    id integer NOT NULL,
    object_id integer NOT NULL,
    distinction character varying(20) NOT NULL,
    content_type_id integer NOT NULL,
    event_id integer NOT NULL
);
 *   DROP TABLE public.schedule_eventrelation;
       public            postgres    false            �            1259    16655    schedule_eventrelation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_eventrelation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.schedule_eventrelation_id_seq;
       public          postgres    false    227            |           0    0    schedule_eventrelation_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.schedule_eventrelation_id_seq OWNED BY public.schedule_eventrelation.id;
          public          postgres    false    226            �            1259    16665    schedule_occurrence    TABLE     �  CREATE TABLE public.schedule_occurrence (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    start timestamp with time zone NOT NULL,
    "end" timestamp with time zone NOT NULL,
    cancelled boolean NOT NULL,
    original_start timestamp with time zone NOT NULL,
    original_end timestamp with time zone NOT NULL,
    created_on timestamp with time zone NOT NULL,
    updated_on timestamp with time zone NOT NULL,
    event_id integer NOT NULL
);
 '   DROP TABLE public.schedule_occurrence;
       public            postgres    false            �            1259    16663    schedule_occurrence_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_occurrence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.schedule_occurrence_id_seq;
       public          postgres    false    229            }           0    0    schedule_occurrence_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.schedule_occurrence_id_seq OWNED BY public.schedule_occurrence.id;
          public          postgres    false    228            �            1259    16676    schedule_rule    TABLE     �   CREATE TABLE public.schedule_rule (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    description text NOT NULL,
    frequency character varying(10) NOT NULL,
    params text NOT NULL
);
 !   DROP TABLE public.schedule_rule;
       public            postgres    false            �            1259    16674    schedule_rule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.schedule_rule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.schedule_rule_id_seq;
       public          postgres    false    231            ~           0    0    schedule_rule_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.schedule_rule_id_seq OWNED BY public.schedule_rule.id;
          public          postgres    false    230                       2604    16471    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    204    204                       2604    16481    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    206    206                       2604    16463    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    201    202                       2604    16489    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    208    208                       2604    16499    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    209    210                       2604    16507    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212                       2604    16567    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214                       2604    16453    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    199    200                       2604    16442    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    197    198    198                        2604    16810    lekarze_city id    DEFAULT     r   ALTER TABLE ONLY public.lekarze_city ALTER COLUMN id SET DEFAULT nextval('public.lekarze_city_id_seq'::regclass);
 >   ALTER TABLE public.lekarze_city ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235                       2604    16800    lekarze_country id    DEFAULT     x   ALTER TABLE ONLY public.lekarze_country ALTER COLUMN id SET DEFAULT nextval('public.lekarze_country_id_seq'::regclass);
 A   ALTER TABLE public.lekarze_country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232    233                       2604    16618    lekarze_department id    DEFAULT     ~   ALTER TABLE ONLY public.lekarze_department ALTER COLUMN id SET DEFAULT nextval('public.lekarze_department_id_seq'::regclass);
 D   ALTER TABLE public.lekarze_department ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            $           2604    16989    lekarze_exchange id    DEFAULT     z   ALTER TABLE ONLY public.lekarze_exchange ALTER COLUMN id SET DEFAULT nextval('public.lekarze_exchange_id_seq'::regclass);
 B   ALTER TABLE public.lekarze_exchange ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243                       2604    16610    lekarze_hospital id    DEFAULT     z   ALTER TABLE ONLY public.lekarze_hospital ALTER COLUMN id SET DEFAULT nextval('public.lekarze_hospital_id_seq'::regclass);
 B   ALTER TABLE public.lekarze_hospital ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            !           2604    16839    lekarze_shift shift_id    DEFAULT     �   ALTER TABLE ONLY public.lekarze_shift ALTER COLUMN shift_id SET DEFAULT nextval('public.lekarze_shift_shift_id_seq'::regclass);
 E   ALTER TABLE public.lekarze_shift ALTER COLUMN shift_id DROP DEFAULT;
       public          postgres    false    237    236    237            #           2604    16896    lekarze_shiftcounter id    DEFAULT     �   ALTER TABLE ONLY public.lekarze_shiftcounter ALTER COLUMN id SET DEFAULT nextval('public.lekarze_shiftcounter_id_seq'::regclass);
 F   ALTER TABLE public.lekarze_shiftcounter ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    241    241            "           2604    16859    lekarze_shifttype id    DEFAULT     |   ALTER TABLE ONLY public.lekarze_shifttype ALTER COLUMN id SET DEFAULT nextval('public.lekarze_shifttype_id_seq'::regclass);
 C   ALTER TABLE public.lekarze_shifttype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239                       2604    16633    schedule_calendar id    DEFAULT     |   ALTER TABLE ONLY public.schedule_calendar ALTER COLUMN id SET DEFAULT nextval('public.schedule_calendar_id_seq'::regclass);
 C   ALTER TABLE public.schedule_calendar ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    16641    schedule_calendarrelation id    DEFAULT     �   ALTER TABLE ONLY public.schedule_calendarrelation ALTER COLUMN id SET DEFAULT nextval('public.schedule_calendarrelation_id_seq'::regclass);
 K   ALTER TABLE public.schedule_calendarrelation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223                       2604    16649    schedule_event id    DEFAULT     v   ALTER TABLE ONLY public.schedule_event ALTER COLUMN id SET DEFAULT nextval('public.schedule_event_id_seq'::regclass);
 @   ALTER TABLE public.schedule_event ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224    225                       2604    16660    schedule_eventrelation id    DEFAULT     �   ALTER TABLE ONLY public.schedule_eventrelation ALTER COLUMN id SET DEFAULT nextval('public.schedule_eventrelation_id_seq'::regclass);
 H   ALTER TABLE public.schedule_eventrelation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226    227                       2604    16668    schedule_occurrence id    DEFAULT     �   ALTER TABLE ONLY public.schedule_occurrence ALTER COLUMN id SET DEFAULT nextval('public.schedule_occurrence_id_seq'::regclass);
 E   ALTER TABLE public.schedule_occurrence ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229                       2604    16679    schedule_rule id    DEFAULT     t   ALTER TABLE ONLY public.schedule_rule ALTER COLUMN id SET DEFAULT nextval('public.schedule_rule_id_seq'::regclass);
 ?   ALTER TABLE public.schedule_rule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    231    231            8          0    16468 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    204   �\      :          0    16478    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    206   ]      6          0    16460    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    202   ]      <          0    16486 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    208   `      >          0    16496    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    210   �b      @          0    16504    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    212   c      B          0    16564    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    214   +c      4          0    16450    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    200   �f      2          0    16439    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    198   �g      C          0    16595    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    215   }k      W          0    16807    lekarze_city 
   TABLE DATA           <   COPY public.lekarze_city (id, name, country_id) FROM stdin;
    public          postgres    false    235   �l      U          0    16797    lekarze_country 
   TABLE DATA           3   COPY public.lekarze_country (id, name) FROM stdin;
    public          postgres    false    233   �l      G          0    16615    lekarze_department 
   TABLE DATA           C   COPY public.lekarze_department (id, name, hospital_id) FROM stdin;
    public          postgres    false    219   m      _          0    16986    lekarze_exchange 
   TABLE DATA           a   COPY public.lekarze_exchange (id, status, who_id, whom_id, myshift_id, yourshift_id) FROM stdin;
    public          postgres    false    243   6m      E          0    16607    lekarze_hospital 
   TABLE DATA           F   COPY public.lekarze_hospital (id, name, address, city_id) FROM stdin;
    public          postgres    false    217   nm      Y          0    16836    lekarze_shift 
   TABLE DATA           �   COPY public.lekarze_shift (shift_id, shift_name, start_date, end_date, department_id, staff_name_id, shift_type_id) FROM stdin;
    public          postgres    false    237   �m      ]          0    16893    lekarze_shiftcounter 
   TABLE DATA           _   COPY public.lekarze_shiftcounter (id, date, counter, shift_type_id, department_id) FROM stdin;
    public          postgres    false    241   Dn      [          0    16856    lekarze_shifttype 
   TABLE DATA           K   COPY public.lekarze_shifttype (id, name, start_date, end_date) FROM stdin;
    public          postgres    false    239   �n      I          0    16630    schedule_calendar 
   TABLE DATA           ;   COPY public.schedule_calendar (id, name, slug) FROM stdin;
    public          postgres    false    221   �n      K          0    16638    schedule_calendarrelation 
   TABLE DATA           z   COPY public.schedule_calendarrelation (id, object_id, distinction, inheritable, calendar_id, content_type_id) FROM stdin;
    public          postgres    false    223   �n      M          0    16646    schedule_event 
   TABLE DATA           �   COPY public.schedule_event (id, start, "end", title, description, created_on, updated_on, end_recurring_period, calendar_id, creator_id, rule_id, color_event) FROM stdin;
    public          postgres    false    225   o      O          0    16657    schedule_eventrelation 
   TABLE DATA           g   COPY public.schedule_eventrelation (id, object_id, distinction, content_type_id, event_id) FROM stdin;
    public          postgres    false    227   9o      Q          0    16665    schedule_occurrence 
   TABLE DATA           �   COPY public.schedule_occurrence (id, title, description, start, "end", cancelled, original_start, original_end, created_on, updated_on, event_id) FROM stdin;
    public          postgres    false    229   Vo      S          0    16676    schedule_rule 
   TABLE DATA           Q   COPY public.schedule_rule (id, name, description, frequency, params) FROM stdin;
    public          postgres    false    231   so                 0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    203            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    205            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 80, true);
          public          postgres    false    201            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    209            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 10, true);
          public          postgres    false    207            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    211            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 59, true);
          public          postgres    false    213            �           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 20, true);
          public          postgres    false    199            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 45, true);
          public          postgres    false    197            �           0    0    lekarze_city_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.lekarze_city_id_seq', 3, true);
          public          postgres    false    234            �           0    0    lekarze_country_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.lekarze_country_id_seq', 1, true);
          public          postgres    false    232            �           0    0    lekarze_department_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.lekarze_department_id_seq', 4, true);
          public          postgres    false    218            �           0    0    lekarze_exchange_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.lekarze_exchange_id_seq', 2, true);
          public          postgres    false    242            �           0    0    lekarze_hospital_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.lekarze_hospital_id_seq', 33, true);
          public          postgres    false    216            �           0    0    lekarze_shift_shift_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.lekarze_shift_shift_id_seq', 40, true);
          public          postgres    false    236            �           0    0    lekarze_shiftcounter_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.lekarze_shiftcounter_id_seq', 14, true);
          public          postgres    false    240            �           0    0    lekarze_shifttype_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.lekarze_shifttype_id_seq', 3, true);
          public          postgres    false    238            �           0    0    schedule_calendar_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.schedule_calendar_id_seq', 1, false);
          public          postgres    false    220            �           0    0     schedule_calendarrelation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.schedule_calendarrelation_id_seq', 1, false);
          public          postgres    false    222            �           0    0    schedule_event_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.schedule_event_id_seq', 1, false);
          public          postgres    false    224            �           0    0    schedule_eventrelation_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.schedule_eventrelation_id_seq', 1, false);
          public          postgres    false    226            �           0    0    schedule_occurrence_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.schedule_occurrence_id_seq', 1, false);
          public          postgres    false    228            �           0    0    schedule_rule_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.schedule_rule_id_seq', 1, false);
          public          postgres    false    230            2           2606    16593    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    204            7           2606    16520 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    206    206            :           2606    16483 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    206            4           2606    16473    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    204            -           2606    16511 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    202    202            /           2606    16465 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    202            B           2606    16501 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    210            E           2606    16535 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    210    210            <           2606    16491    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    208            H           2606    16509 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    212            K           2606    16549 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    212    212            ?           2606    16587     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    208            N           2606    16573 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    214            (           2606    16457 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    200    200            *           2606    16455 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    200            &           2606    16447 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    198            R           2606    16602 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    215            �           2606    16814 "   lekarze_city lekarze_city_name_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.lekarze_city
    ADD CONSTRAINT lekarze_city_name_key UNIQUE (name);
 L   ALTER TABLE ONLY public.lekarze_city DROP CONSTRAINT lekarze_city_name_key;
       public            postgres    false    235            �           2606    16812    lekarze_city lekarze_city_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.lekarze_city
    ADD CONSTRAINT lekarze_city_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.lekarze_city DROP CONSTRAINT lekarze_city_pkey;
       public            postgres    false    235            ~           2606    16804 (   lekarze_country lekarze_country_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.lekarze_country
    ADD CONSTRAINT lekarze_country_name_key UNIQUE (name);
 R   ALTER TABLE ONLY public.lekarze_country DROP CONSTRAINT lekarze_country_name_key;
       public            postgres    false    233            �           2606    16802 $   lekarze_country lekarze_country_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.lekarze_country
    ADD CONSTRAINT lekarze_country_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.lekarze_country DROP CONSTRAINT lekarze_country_pkey;
       public            postgres    false    233            Y           2606    16620 *   lekarze_department lekarze_department_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.lekarze_department
    ADD CONSTRAINT lekarze_department_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.lekarze_department DROP CONSTRAINT lekarze_department_pkey;
       public            postgres    false    219            �           2606    16991 &   lekarze_exchange lekarze_exchange_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.lekarze_exchange
    ADD CONSTRAINT lekarze_exchange_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.lekarze_exchange DROP CONSTRAINT lekarze_exchange_pkey;
       public            postgres    false    243            V           2606    16612 &   lekarze_hospital lekarze_hospital_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.lekarze_hospital
    ADD CONSTRAINT lekarze_hospital_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.lekarze_hospital DROP CONSTRAINT lekarze_hospital_pkey;
       public            postgres    false    217            �           2606    16841     lekarze_shift lekarze_shift_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.lekarze_shift
    ADD CONSTRAINT lekarze_shift_pkey PRIMARY KEY (shift_id);
 J   ALTER TABLE ONLY public.lekarze_shift DROP CONSTRAINT lekarze_shift_pkey;
       public            postgres    false    237            �           2606    16898 .   lekarze_shiftcounter lekarze_shiftcounter_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.lekarze_shiftcounter
    ADD CONSTRAINT lekarze_shiftcounter_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.lekarze_shiftcounter DROP CONSTRAINT lekarze_shiftcounter_pkey;
       public            postgres    false    241            �           2606    16863 ,   lekarze_shifttype lekarze_shifttype_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.lekarze_shifttype
    ADD CONSTRAINT lekarze_shifttype_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.lekarze_shifttype DROP CONSTRAINT lekarze_shifttype_name_key;
       public            postgres    false    239            �           2606    16861 (   lekarze_shifttype lekarze_shifttype_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.lekarze_shifttype
    ADD CONSTRAINT lekarze_shifttype_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.lekarze_shifttype DROP CONSTRAINT lekarze_shifttype_pkey;
       public            postgres    false    239            [           2606    16635 (   schedule_calendar schedule_calendar_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.schedule_calendar
    ADD CONSTRAINT schedule_calendar_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.schedule_calendar DROP CONSTRAINT schedule_calendar_pkey;
       public            postgres    false    221            ^           2606    16754 6   schedule_calendar schedule_calendar_slug_ba17e861_uniq 
   CONSTRAINT     q   ALTER TABLE ONLY public.schedule_calendar
    ADD CONSTRAINT schedule_calendar_slug_ba17e861_uniq UNIQUE (slug);
 `   ALTER TABLE ONLY public.schedule_calendar DROP CONSTRAINT schedule_calendar_slug_ba17e861_uniq;
       public            postgres    false    221            d           2606    16643 8   schedule_calendarrelation schedule_calendarrelation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.schedule_calendarrelation
    ADD CONSTRAINT schedule_calendarrelation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.schedule_calendarrelation DROP CONSTRAINT schedule_calendarrelation_pkey;
       public            postgres    false    223            j           2606    16654 "   schedule_event schedule_event_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.schedule_event
    ADD CONSTRAINT schedule_event_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.schedule_event DROP CONSTRAINT schedule_event_pkey;
       public            postgres    false    225            s           2606    16662 2   schedule_eventrelation schedule_eventrelation_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.schedule_eventrelation
    ADD CONSTRAINT schedule_eventrelation_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.schedule_eventrelation DROP CONSTRAINT schedule_eventrelation_pkey;
       public            postgres    false    227            w           2606    16673 ,   schedule_occurrence schedule_occurrence_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.schedule_occurrence
    ADD CONSTRAINT schedule_occurrence_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.schedule_occurrence DROP CONSTRAINT schedule_occurrence_pkey;
       public            postgres    false    229            {           2606    16684     schedule_rule schedule_rule_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.schedule_rule
    ADD CONSTRAINT schedule_rule_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.schedule_rule DROP CONSTRAINT schedule_rule_pkey;
       public            postgres    false    231            0           1259    16594    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    204            5           1259    16531 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    206            8           1259    16532 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    206            +           1259    16517 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    202            @           1259    16547 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    210            C           1259    16546 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    210            F           1259    16561 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    212            I           1259    16560 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    212            =           1259    16588     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    208            L           1259    16584 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    214            O           1259    16585 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    214            P           1259    16604 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    215            S           1259    16603 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    215            �           1259    16833     lekarze_city_country_id_774a8bb4    INDEX     _   CREATE INDEX lekarze_city_country_id_774a8bb4 ON public.lekarze_city USING btree (country_id);
 4   DROP INDEX public.lekarze_city_country_id_774a8bb4;
       public            postgres    false    235            �           1259    16832    lekarze_city_name_9fb3a5ba_like    INDEX     l   CREATE INDEX lekarze_city_name_9fb3a5ba_like ON public.lekarze_city USING btree (name varchar_pattern_ops);
 3   DROP INDEX public.lekarze_city_name_9fb3a5ba_like;
       public            postgres    false    235            |           1259    16826 "   lekarze_country_name_4650b837_like    INDEX     r   CREATE INDEX lekarze_country_name_4650b837_like ON public.lekarze_country USING btree (name varchar_pattern_ops);
 6   DROP INDEX public.lekarze_country_name_4650b837_like;
       public            postgres    false    233            W           1259    16626 '   lekarze_department_hospital_id_52d6ff47    INDEX     m   CREATE INDEX lekarze_department_hospital_id_52d6ff47 ON public.lekarze_department USING btree (hospital_id);
 ;   DROP INDEX public.lekarze_department_hospital_id_52d6ff47;
       public            postgres    false    219            �           1259    17020 $   lekarze_exchange_myshift_id_54e80b6b    INDEX     g   CREATE INDEX lekarze_exchange_myshift_id_54e80b6b ON public.lekarze_exchange USING btree (myshift_id);
 8   DROP INDEX public.lekarze_exchange_myshift_id_54e80b6b;
       public            postgres    false    243            �           1259    17008     lekarze_exchange_who_id_b218e731    INDEX     _   CREATE INDEX lekarze_exchange_who_id_b218e731 ON public.lekarze_exchange USING btree (who_id);
 4   DROP INDEX public.lekarze_exchange_who_id_b218e731;
       public            postgres    false    243            �           1259    17009 !   lekarze_exchange_whom_id_202f5a7a    INDEX     a   CREATE INDEX lekarze_exchange_whom_id_202f5a7a ON public.lekarze_exchange USING btree (whom_id);
 5   DROP INDEX public.lekarze_exchange_whom_id_202f5a7a;
       public            postgres    false    243            �           1259    17021 &   lekarze_exchange_yourshift_id_b844b66f    INDEX     k   CREATE INDEX lekarze_exchange_yourshift_id_b844b66f ON public.lekarze_exchange USING btree (yourshift_id);
 :   DROP INDEX public.lekarze_exchange_yourshift_id_b844b66f;
       public            postgres    false    243            T           1259    16820 !   lekarze_hospital_city_id_2341f248    INDEX     a   CREATE INDEX lekarze_hospital_city_id_2341f248 ON public.lekarze_hospital USING btree (city_id);
 5   DROP INDEX public.lekarze_hospital_city_id_2341f248;
       public            postgres    false    217            �           1259    16852 $   lekarze_shift_department_id_62561e0d    INDEX     g   CREATE INDEX lekarze_shift_department_id_62561e0d ON public.lekarze_shift USING btree (department_id);
 8   DROP INDEX public.lekarze_shift_department_id_62561e0d;
       public            postgres    false    237            �           1259    16878 $   lekarze_shift_shift_type_id_8ceb1261    INDEX     g   CREATE INDEX lekarze_shift_shift_type_id_8ceb1261 ON public.lekarze_shift USING btree (shift_type_id);
 8   DROP INDEX public.lekarze_shift_shift_type_id_8ceb1261;
       public            postgres    false    237            �           1259    16853 $   lekarze_shift_staff_name_id_fb063ee2    INDEX     g   CREATE INDEX lekarze_shift_staff_name_id_fb063ee2 ON public.lekarze_shift USING btree (staff_name_id);
 8   DROP INDEX public.lekarze_shift_staff_name_id_fb063ee2;
       public            postgres    false    237            �           1259    16983 +   lekarze_shiftcounter_department_id_094d2b8d    INDEX     u   CREATE INDEX lekarze_shiftcounter_department_id_094d2b8d ON public.lekarze_shiftcounter USING btree (department_id);
 ?   DROP INDEX public.lekarze_shiftcounter_department_id_094d2b8d;
       public            postgres    false    241            �           1259    16905 +   lekarze_shiftcounter_shift_Type_id_dade3f97    INDEX     w   CREATE INDEX "lekarze_shiftcounter_shift_Type_id_dade3f97" ON public.lekarze_shiftcounter USING btree (shift_type_id);
 A   DROP INDEX public."lekarze_shiftcounter_shift_Type_id_dade3f97";
       public            postgres    false    241            �           1259    16864 $   lekarze_shifttype_name_d96f8060_like    INDEX     v   CREATE INDEX lekarze_shifttype_name_d96f8060_like ON public.lekarze_shifttype USING btree (name varchar_pattern_ops);
 8   DROP INDEX public.lekarze_shifttype_name_d96f8060_like;
       public            postgres    false    239            \           1259    16755 $   schedule_calendar_slug_ba17e861_like    INDEX     v   CREATE INDEX schedule_calendar_slug_ba17e861_like ON public.schedule_calendar USING btree (slug varchar_pattern_ops);
 8   DROP INDEX public.schedule_calendar_slug_ba17e861_like;
       public            postgres    false    221            _           1259    16751 >   schedule_calendarrelatio_content_type_id_object_i_3378a516_idx    INDEX     �   CREATE INDEX schedule_calendarrelatio_content_type_id_object_i_3378a516_idx ON public.schedule_calendarrelation USING btree (content_type_id, object_id);
 R   DROP INDEX public.schedule_calendarrelatio_content_type_id_object_i_3378a516_idx;
       public            postgres    false    223    223            `           1259    16702 .   schedule_calendarrelation_calendar_id_0a50be2e    INDEX     {   CREATE INDEX schedule_calendarrelation_calendar_id_0a50be2e ON public.schedule_calendarrelation USING btree (calendar_id);
 B   DROP INDEX public.schedule_calendarrelation_calendar_id_0a50be2e;
       public            postgres    false    223            a           1259    16703 2   schedule_calendarrelation_content_type_id_f2a42f5b    INDEX     �   CREATE INDEX schedule_calendarrelation_content_type_id_f2a42f5b ON public.schedule_calendarrelation USING btree (content_type_id);
 F   DROP INDEX public.schedule_calendarrelation_content_type_id_f2a42f5b;
       public            postgres    false    223            b           1259    16749 ,   schedule_calendarrelation_object_id_1743bce6    INDEX     w   CREATE INDEX schedule_calendarrelation_object_id_1743bce6 ON public.schedule_calendarrelation USING btree (object_id);
 @   DROP INDEX public.schedule_calendarrelation_object_id_1743bce6;
       public            postgres    false    223            e           1259    16714 #   schedule_event_calendar_id_eb1c700f    INDEX     e   CREATE INDEX schedule_event_calendar_id_eb1c700f ON public.schedule_event USING btree (calendar_id);
 7   DROP INDEX public.schedule_event_calendar_id_eb1c700f;
       public            postgres    false    225            f           1259    16715 "   schedule_event_creator_id_d2ffab6e    INDEX     c   CREATE INDEX schedule_event_creator_id_d2ffab6e ON public.schedule_event USING btree (creator_id);
 6   DROP INDEX public.schedule_event_creator_id_d2ffab6e;
       public            postgres    false    225            g           1259    16735    schedule_event_end_674c5848    INDEX     W   CREATE INDEX schedule_event_end_674c5848 ON public.schedule_event USING btree ("end");
 /   DROP INDEX public.schedule_event_end_674c5848;
       public            postgres    false    225            h           1259    16736 ,   schedule_event_end_recurring_period_672addcf    INDEX     w   CREATE INDEX schedule_event_end_recurring_period_672addcf ON public.schedule_event USING btree (end_recurring_period);
 @   DROP INDEX public.schedule_event_end_recurring_period_672addcf;
       public            postgres    false    225            k           1259    16734    schedule_event_rule_id_90b83d31    INDEX     ]   CREATE INDEX schedule_event_rule_id_90b83d31 ON public.schedule_event USING btree (rule_id);
 3   DROP INDEX public.schedule_event_rule_id_90b83d31;
       public            postgres    false    225            l           1259    16737    schedule_event_start_a11492a7    INDEX     Y   CREATE INDEX schedule_event_start_a11492a7 ON public.schedule_event USING btree (start);
 1   DROP INDEX public.schedule_event_start_a11492a7;
       public            postgres    false    225            m           1259    16740 %   schedule_event_start_end_89f30672_idx    INDEX     h   CREATE INDEX schedule_event_start_end_89f30672_idx ON public.schedule_event USING btree (start, "end");
 9   DROP INDEX public.schedule_event_start_end_89f30672_idx;
       public            postgres    false    225    225            n           1259    16726 /   schedule_eventrelation_content_type_id_d4187723    INDEX     }   CREATE INDEX schedule_eventrelation_content_type_id_d4187723 ON public.schedule_eventrelation USING btree (content_type_id);
 C   DROP INDEX public.schedule_eventrelation_content_type_id_d4187723;
       public            postgres    false    227            o           1259    16752 =   schedule_eventrelation_content_type_id_object_id_c1b1e893_idx    INDEX     �   CREATE INDEX schedule_eventrelation_content_type_id_object_id_c1b1e893_idx ON public.schedule_eventrelation USING btree (content_type_id, object_id);
 Q   DROP INDEX public.schedule_eventrelation_content_type_id_object_id_c1b1e893_idx;
       public            postgres    false    227    227            p           1259    16727 (   schedule_eventrelation_event_id_8c57a7b4    INDEX     o   CREATE INDEX schedule_eventrelation_event_id_8c57a7b4 ON public.schedule_eventrelation USING btree (event_id);
 <   DROP INDEX public.schedule_eventrelation_event_id_8c57a7b4;
       public            postgres    false    227            q           1259    16750 )   schedule_eventrelation_object_id_e22334a2    INDEX     q   CREATE INDEX schedule_eventrelation_object_id_e22334a2 ON public.schedule_eventrelation USING btree (object_id);
 =   DROP INDEX public.schedule_eventrelation_object_id_e22334a2;
       public            postgres    false    227            t           1259    16738     schedule_occurrence_end_ae255624    INDEX     a   CREATE INDEX schedule_occurrence_end_ae255624 ON public.schedule_occurrence USING btree ("end");
 4   DROP INDEX public.schedule_occurrence_end_ae255624;
       public            postgres    false    229            u           1259    16733 %   schedule_occurrence_event_id_ade47cd8    INDEX     i   CREATE INDEX schedule_occurrence_event_id_ade47cd8 ON public.schedule_occurrence USING btree (event_id);
 9   DROP INDEX public.schedule_occurrence_event_id_ade47cd8;
       public            postgres    false    229            x           1259    16739 "   schedule_occurrence_start_b28eeb2f    INDEX     c   CREATE INDEX schedule_occurrence_start_b28eeb2f ON public.schedule_occurrence USING btree (start);
 6   DROP INDEX public.schedule_occurrence_start_b28eeb2f;
       public            postgres    false    229            y           1259    16741 *   schedule_occurrence_start_end_5fc98870_idx    INDEX     r   CREATE INDEX schedule_occurrence_start_end_5fc98870_idx ON public.schedule_occurrence USING btree (start, "end");
 >   DROP INDEX public.schedule_occurrence_start_end_5fc98870_idx;
       public            postgres    false    229    229            �           2606    16526 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    206    202    2863            �           2606    16521 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    204    2868    206            �           2606    16512 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2858    202    200            �           2606    16541 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2868    204    210            �           2606    16536 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    208    2876    210            �           2606    16555 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    212    2863    202            �           2606    16550 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    212    2876    208            �           2606    16574 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2858    200    214            �           2606    16579 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    214    2876    208            �           2606    16827 C   lekarze_city lekarze_city_country_id_774a8bb4_fk_lekarze_country_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekarze_city
    ADD CONSTRAINT lekarze_city_country_id_774a8bb4_fk_lekarze_country_id FOREIGN KEY (country_id) REFERENCES public.lekarze_country(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.lekarze_city DROP CONSTRAINT lekarze_city_country_id_774a8bb4_fk_lekarze_country_id;
       public          postgres    false    235    233    2944            �           2606    16621 Q   lekarze_department lekarze_department_hospital_id_52d6ff47_fk_lekarze_hospital_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekarze_department
    ADD CONSTRAINT lekarze_department_hospital_id_52d6ff47_fk_lekarze_hospital_id FOREIGN KEY (hospital_id) REFERENCES public.lekarze_hospital(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.lekarze_department DROP CONSTRAINT lekarze_department_hospital_id_52d6ff47_fk_lekarze_hospital_id;
       public          postgres    false    217    2902    219            �           2606    17010 O   lekarze_exchange lekarze_exchange_myshift_id_54e80b6b_fk_lekarze_shift_shift_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekarze_exchange
    ADD CONSTRAINT lekarze_exchange_myshift_id_54e80b6b_fk_lekarze_shift_shift_id FOREIGN KEY (myshift_id) REFERENCES public.lekarze_shift(shift_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.lekarze_exchange DROP CONSTRAINT lekarze_exchange_myshift_id_54e80b6b_fk_lekarze_shift_shift_id;
       public          postgres    false    243    2953    237            �           2606    16997 A   lekarze_exchange lekarze_exchange_who_id_b218e731_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekarze_exchange
    ADD CONSTRAINT lekarze_exchange_who_id_b218e731_fk_auth_user_id FOREIGN KEY (who_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.lekarze_exchange DROP CONSTRAINT lekarze_exchange_who_id_b218e731_fk_auth_user_id;
       public          postgres    false    208    243    2876            �           2606    17002 B   lekarze_exchange lekarze_exchange_whom_id_202f5a7a_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekarze_exchange
    ADD CONSTRAINT lekarze_exchange_whom_id_202f5a7a_fk_auth_user_id FOREIGN KEY (whom_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.lekarze_exchange DROP CONSTRAINT lekarze_exchange_whom_id_202f5a7a_fk_auth_user_id;
       public          postgres    false    208    2876    243            �           2606    17015 D   lekarze_exchange lekarze_exchange_yourshift_id_b844b66f_fk_lekarze_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekarze_exchange
    ADD CONSTRAINT lekarze_exchange_yourshift_id_b844b66f_fk_lekarze_s FOREIGN KEY (yourshift_id) REFERENCES public.lekarze_shift(shift_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.lekarze_exchange DROP CONSTRAINT lekarze_exchange_yourshift_id_b844b66f_fk_lekarze_s;
       public          postgres    false    237    2953    243            �           2606    16821 E   lekarze_hospital lekarze_hospital_city_id_2341f248_fk_lekarze_city_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekarze_hospital
    ADD CONSTRAINT lekarze_hospital_city_id_2341f248_fk_lekarze_city_id FOREIGN KEY (city_id) REFERENCES public.lekarze_city(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.lekarze_hospital DROP CONSTRAINT lekarze_hospital_city_id_2341f248_fk_lekarze_city_id;
       public          postgres    false    217    235    2950            �           2606    16842 K   lekarze_shift lekarze_shift_department_id_62561e0d_fk_lekarze_department_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekarze_shift
    ADD CONSTRAINT lekarze_shift_department_id_62561e0d_fk_lekarze_department_id FOREIGN KEY (department_id) REFERENCES public.lekarze_department(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.lekarze_shift DROP CONSTRAINT lekarze_shift_department_id_62561e0d_fk_lekarze_department_id;
       public          postgres    false    237    219    2905            �           2606    16873 J   lekarze_shift lekarze_shift_shift_type_id_8ceb1261_fk_lekarze_shifttype_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekarze_shift
    ADD CONSTRAINT lekarze_shift_shift_type_id_8ceb1261_fk_lekarze_shifttype_id FOREIGN KEY (shift_type_id) REFERENCES public.lekarze_shifttype(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.lekarze_shift DROP CONSTRAINT lekarze_shift_shift_type_id_8ceb1261_fk_lekarze_shifttype_id;
       public          postgres    false    2960    239    237            �           2606    16847 B   lekarze_shift lekarze_shift_staff_name_id_fb063ee2_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekarze_shift
    ADD CONSTRAINT lekarze_shift_staff_name_id_fb063ee2_fk_auth_user_id FOREIGN KEY (staff_name_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.lekarze_shift DROP CONSTRAINT lekarze_shift_staff_name_id_fb063ee2_fk_auth_user_id;
       public          postgres    false    237    2876    208            �           2606    16978 M   lekarze_shiftcounter lekarze_shiftcounter_department_id_094d2b8d_fk_lekarze_d    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekarze_shiftcounter
    ADD CONSTRAINT lekarze_shiftcounter_department_id_094d2b8d_fk_lekarze_d FOREIGN KEY (department_id) REFERENCES public.lekarze_department(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.lekarze_shiftcounter DROP CONSTRAINT lekarze_shiftcounter_department_id_094d2b8d_fk_lekarze_d;
       public          postgres    false    2905    241    219            �           2606    16906 M   lekarze_shiftcounter lekarze_shiftcounter_shift_type_id_5c9c1da3_fk_lekarze_s    FK CONSTRAINT     �   ALTER TABLE ONLY public.lekarze_shiftcounter
    ADD CONSTRAINT lekarze_shiftcounter_shift_type_id_5c9c1da3_fk_lekarze_s FOREIGN KEY (shift_type_id) REFERENCES public.lekarze_shifttype(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.lekarze_shiftcounter DROP CONSTRAINT lekarze_shiftcounter_shift_type_id_5c9c1da3_fk_lekarze_s;
       public          postgres    false    2960    241    239            �           2606    16692 P   schedule_calendarrelation schedule_calendarrel_calendar_id_0a50be2e_fk_schedule_    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_calendarrelation
    ADD CONSTRAINT schedule_calendarrel_calendar_id_0a50be2e_fk_schedule_ FOREIGN KEY (calendar_id) REFERENCES public.schedule_calendar(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.schedule_calendarrelation DROP CONSTRAINT schedule_calendarrel_calendar_id_0a50be2e_fk_schedule_;
       public          postgres    false    2907    223    221            �           2606    16697 T   schedule_calendarrelation schedule_calendarrel_content_type_id_f2a42f5b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_calendarrelation
    ADD CONSTRAINT schedule_calendarrel_content_type_id_f2a42f5b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.schedule_calendarrelation DROP CONSTRAINT schedule_calendarrel_content_type_id_f2a42f5b_fk_django_co;
       public          postgres    false    2858    223    200            �           2606    16756 J   schedule_event schedule_event_calendar_id_eb1c700f_fk_schedule_calendar_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_event
    ADD CONSTRAINT schedule_event_calendar_id_eb1c700f_fk_schedule_calendar_id FOREIGN KEY (calendar_id) REFERENCES public.schedule_calendar(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.schedule_event DROP CONSTRAINT schedule_event_calendar_id_eb1c700f_fk_schedule_calendar_id;
       public          postgres    false    225    221    2907            �           2606    16761 A   schedule_event schedule_event_creator_id_d2ffab6e_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_event
    ADD CONSTRAINT schedule_event_creator_id_d2ffab6e_fk_auth_user_id FOREIGN KEY (creator_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.schedule_event DROP CONSTRAINT schedule_event_creator_id_d2ffab6e_fk_auth_user_id;
       public          postgres    false    208    225    2876            �           2606    16766 B   schedule_event schedule_event_rule_id_90b83d31_fk_schedule_rule_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_event
    ADD CONSTRAINT schedule_event_rule_id_90b83d31_fk_schedule_rule_id FOREIGN KEY (rule_id) REFERENCES public.schedule_rule(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.schedule_event DROP CONSTRAINT schedule_event_rule_id_90b83d31_fk_schedule_rule_id;
       public          postgres    false    231    225    2939            �           2606    16716 Q   schedule_eventrelation schedule_eventrelati_content_type_id_d4187723_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_eventrelation
    ADD CONSTRAINT schedule_eventrelati_content_type_id_d4187723_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.schedule_eventrelation DROP CONSTRAINT schedule_eventrelati_content_type_id_d4187723_fk_django_co;
       public          postgres    false    227    200    2858            �           2606    16721 T   schedule_eventrelation schedule_eventrelation_event_id_8c57a7b4_fk_schedule_event_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_eventrelation
    ADD CONSTRAINT schedule_eventrelation_event_id_8c57a7b4_fk_schedule_event_id FOREIGN KEY (event_id) REFERENCES public.schedule_event(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.schedule_eventrelation DROP CONSTRAINT schedule_eventrelation_event_id_8c57a7b4_fk_schedule_event_id;
       public          postgres    false    227    225    2922            �           2606    16728 N   schedule_occurrence schedule_occurrence_event_id_ade47cd8_fk_schedule_event_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedule_occurrence
    ADD CONSTRAINT schedule_occurrence_event_id_ade47cd8_fk_schedule_event_id FOREIGN KEY (event_id) REFERENCES public.schedule_event(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.schedule_occurrence DROP CONSTRAINT schedule_occurrence_event_id_ade47cd8_fk_schedule_event_id;
       public          postgres    false    229    2922    225            8      x������ � �      :      x������ � �      6   �  x�m�ݎ�@F����T�O���*D�I�,��l�o_�=�g�;f|�9��ɳ��p�.���y=�a��<[ֿ�5-CAH�ktoXx��8{��<�y��nT��+��i�?�� 5�5�9P�m�ϱ"lk��$G��jy��WV� ]���r).^�����0����K5xOq�N$�^����KT�g�������l	��l���9��[;�_��Ud [�N�[��"��3zmx�C�8��&]��j=E~�5	�*�ލO�\�&z�A�DV�X�ߞ��>w��!���+s�D�@W� ���P����AVݗ����cy�YKn�JW�?�]�;X��w(y"h]�w�8\�1;s�2���J���
 S�)���B���0�G7���|!�1퇲����m�-����K�܇�����q���,�:*~��'�B�pr�����zI�I	�x�-@�0��wZ.�,��y�$��v#�R�,�������A}�r�,�*�v}�]�yZ�����,	#i�7��h��k�7&\�%B|��&Kqr�(Π7�G����߈��QH�p������j7k��9#�uD��8O��:ԮR8��!I��g�Z'L����Qx��"Ԯ�HӍW�ʤ����<�8~�<���Th7ǝ����p��R�.6���%��Ɣ^�򳓟MV�Bs���ʚR��!�5�޺C��+n]��BV�hI�и>@,}�t��d��%��^@�?j���#���0      <   �  x����n�:�k�炻�o�EiH�ڐ�Y �F:b��$��Ѽڼ�!��h�hT_X�e�?���2wtS?D�V��D�C�^�߃�Q��zams&�� ܔ;�\�Fl��S�M����$�؊���}�s!�;�bg:,���[1�컔+� �؁���I2�;��b�!��G ?"��*�TQ��E��z]��D�I?���Bo,�F��,��kz8��L��Q���>���g����)*���$ ��7�T?�㠪�/�T 
X��!�n��S}�~��;M:��̶�6q6�X��I7p��܆��]v��W�H���kT�(�ݲ�i�%㖝g��&���*E�PR.~�:ߞg��u-64�ޜis�P�����
>�b����iq^Z��{�<iHz�/b�`0}��4J��Ik�ӓ�������T,�P���_��'I���Yi��.k���n��2R���;F�J������6��a��.!��1P�$`$x�WN�v�[9ydܸcEP�?�a3�"}���v���Кl������0��<9<��4��>��-�-��>���m|�jWT�U�I|͞q��'�/�0��]�~��y�b�b�b�f|!���@l�0֣6���;�e>=����;wm>�Ѧl���BA�����ʡ��3/v������Fz�Hȏ���ELT"	�LE���|nnn��k�      >      x������ � �      @      x������ � �      B   �  x����n7��� tJ��������ڦ=�=�9l%��ڒKA��}��W��d��HC]ðdx�oHs~$��׀׊R�ܒ�V{��K���yկo�/���ǧ/������6x�ʰ�V��*p��\������݋���_����q���E��b�(������A���;|쒘�b�Il�uE�Il�MEl���X/ۊ�%1/���A�B���U��b�������b��K͕�9�藚+�s�3pi��?�Z��+��7�h^�?��s2/ V�M2/M V"�m2/� �d�`�*-!�J��������M?2n8	NҥE
B�${��&����^�|Zu��v�jŧϟ��p��E7����'ܶ �N\����]�4D��HI�Ԙ�f⣨���\��d�	ǃq>�gD<k�K�(/�~Ft����L�ջ~{�9��oV?w�������DX1ǆ�-�Z�@�?k����1��hA;��[�C�i$��������������Q��b�S�~��PŝVQІ����ك���ج������'�5� �A�P�|�g%+ '����J�
a�������I�O�������Y	]Вw�Z0L H�� [X�����bG@�G���|���D2�|0u�Y��>/ǟ���|����)�H�Q2[0eI�$d[r�¶l�u6}�{�U����ƻ��[$ �J�a��z�KFy��[Ɛ|Iʪi����5�)K���]"�I��d:�,a�s�ğK�%"��ce�����?��,a� �m�ZU J�k^=�׷���fP�l�O�d2>�����{���q�j'UHw�N��h]�$ �A�Ɂ�m�	ۿ�4���өm٢(Y��v�.��p�ZiU���i��u�?����.�� QT���w�:�˫��,��      4   �   x�e��n!����T���]z�XwAe��<}�F]�悘�� C����8I(z��Itv9�p�$�ƚp�5��L���-I�+� Yw����|��l���xZ�(���͎g���X��a/adEڼC��LԇryD������>��Ԗ� �:ֶ �ק�X�b�Б+M�e�ڭ�W�A�W�������j,�I�� 3���      2   �  x���ݎ�8���O���A��?ϲ��$AC ����߲!��M:�R�"%��u�T��}7�n��/~�1��5]35U�C������J��@)5��0x�]u�N��)|W�M�\��֨�D|Hе}M������wt��U��&C3����`��\����sǶ����7{r`���c��[x?�����:�m�4�G3�j�����.~87�N��\�\뻚���R���2+�/��H���)��E�ؕ"RJ�����i��Ps�V�Lm5N���*���=7`5�=X)���}m�����mCx��(oU�����|?���~��A��3��+�l���f���1� V����_��Աa �$`����(�Y- bԊw��C�]����r�Kc!b�A�F����t[�Z���ٵ�W5��T������ֆ���v7�O�pm����[ �LG�L�ο�y��-� ~�p�D=dz>�d���2�f 2]B�����o�;6�=�4���ݍ��t�6�fc��g8�q�~�4k	C���KC�7?���y��K{��ɠ}Ea:T�6���D��4��Pg> �;@e ���/j���6��X���	�rgꏡ�09�����"h�b*F7���A���}�HF�ed��Z¶��o�U .T�ep���#�+YAY��后�
�@��LL�
I�3�+�)�����I��̖���s��1K���d�:�4�R��E���n�n�U���Re*WY�䕢}��0q��Jz��ғgH��J&JH+Y|>p�JM&}PA��h ���H����TA��	���P(���b xu����s��T0���+�� �&�" ;�r �� �	�z~eK�  ,�:&N��~��,��]Н���I���Q��&>�D�LZ���?U]�3���4,F�q��#l�6��%���hÿ����7      C     x�=�Mo�0 �����M?�&;LQ��%-�EJ��N~���]�<�+�կdutPug��|�nsr��-ֶ���B��>Sg�a�7�&A�%@8:gnc�B�י�=�2Mǳ5��y�q��%�E�c�H������Xs��&Т`�� 62�.�gU���w�^��p(���98�ȿ�aJ�j�S�6�K�~�;��&��GJItz=���O�("L�� \җFbaRg��P��Q��eCG1���E-�� ���)�`��g�'&s���3�<�	̊h#      W   /   x�3�t�LI�/�J��4�2��/*=�ds��$m)��c���� �      U      x�3���I�K����� K      G   !   x�3�������O�L�46�2A�s��qqq ��	Y      _   (   x�3�4�4�4�46�46�2�L98M8�͹b���� M�s      E   H   x�36��*-J,���M,��Tp.-�L��>ڔ��_^�����`�i�el�\U�Y��Ù�R�Z�i����� ���      Y   n   x�36�I-.�4202�50�52S00�20 "mC��9��1's�����׌<�f ��d�� �ق<�� ��z-��k�i�eb��[��������~K� 3����� �P�      ]   >   x�34�4202�50�52S00�20 "mCNSNcNc.CcdyCK��!�H�!o�E>F��� n*�      [   @   x�3�4�20H�U�U�24�L249@< �3���*�UUZ��4D5� �n&LW� �',      I      x������ � �      K      x������ � �      M      x������ � �      O      x������ � �      Q      x������ � �      S      x������ � �     