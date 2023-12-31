PGDMP      6                {            users_1    16.1    16.1 >    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    19311    users_1    DATABASE     {   CREATE DATABASE users_1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE users_1;
                postgres    false                        2615    18722    tiger    SCHEMA        CREATE SCHEMA tiger;
    DROP SCHEMA tiger;
                postgres    false                        2615    18978 
   tiger_data    SCHEMA        CREATE SCHEMA tiger_data;
    DROP SCHEMA tiger_data;
                postgres    false                        2615    18361    topology    SCHEMA        CREATE SCHEMA topology;
    DROP SCHEMA topology;
                postgres    false            �           0    0    SCHEMA topology    COMMENT     9   COMMENT ON SCHEMA topology IS 'PostGIS Topology schema';
                   postgres    false    20                        3079    18528    address_standardizer 	   EXTENSION     H   CREATE EXTENSION IF NOT EXISTS address_standardizer WITH SCHEMA public;
 %   DROP EXTENSION address_standardizer;
                   false            �           0    0    EXTENSION address_standardizer    COMMENT     �   COMMENT ON EXTENSION address_standardizer IS 'Used to parse an address into constituent elements. Generally used to support geocoding address normalization step.';
                        false    6                        3079    18536    address_standardizer_data_us 	   EXTENSION     P   CREATE EXTENSION IF NOT EXISTS address_standardizer_data_us WITH SCHEMA public;
 -   DROP EXTENSION address_standardizer_data_us;
                   false            �           0    0 &   EXTENSION address_standardizer_data_us    COMMENT     `   COMMENT ON EXTENSION address_standardizer_data_us IS 'Address Standardizer US dataset example';
                        false    7                        3079    18710    fuzzystrmatch 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;
    DROP EXTENSION fuzzystrmatch;
                   false            �           0    0    EXTENSION fuzzystrmatch    COMMENT     ]   COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';
                        false    12                        3079    19122    h3 	   EXTENSION     6   CREATE EXTENSION IF NOT EXISTS h3 WITH SCHEMA public;
    DROP EXTENSION h3;
                   false            �           0    0    EXTENSION h3    COMMENT     9   COMMENT ON EXTENSION h3 IS 'H3 bindings for PostgreSQL';
                        false    14                        3079    16399    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false            �           0    0    EXTENSION postgis    COMMENT     ^   COMMENT ON EXTENSION postgis IS 'PostGIS geometry and geography spatial types and functions';
                        false    2                        3079    17475    postgis_raster 	   EXTENSION     B   CREATE EXTENSION IF NOT EXISTS postgis_raster WITH SCHEMA public;
    DROP EXTENSION postgis_raster;
                   false    2            �           0    0    EXTENSION postgis_raster    COMMENT     M   COMMENT ON EXTENSION postgis_raster IS 'PostGIS raster types and functions';
                        false    3                        3079    19236 
   h3_postgis 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS h3_postgis WITH SCHEMA public;
    DROP EXTENSION h3_postgis;
                   false    3    2    14            �           0    0    EXTENSION h3_postgis    COMMENT     =   COMMENT ON EXTENSION h3_postgis IS 'H3 PostGIS integration';
                        false    15                        3079    18704    ogr_fdw 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS ogr_fdw WITH SCHEMA public;
    DROP EXTENSION ogr_fdw;
                   false            �           0    0    EXTENSION ogr_fdw    COMMENT     L   COMMENT ON EXTENSION ogr_fdw IS 'foreign-data wrapper for GIS data access';
                        false    11                        3079    18032 	   pgrouting 	   EXTENSION     =   CREATE EXTENSION IF NOT EXISTS pgrouting WITH SCHEMA public;
    DROP EXTENSION pgrouting;
                   false    2            �           0    0    EXTENSION pgrouting    COMMENT     9   COMMENT ON EXTENSION pgrouting IS 'pgRouting Extension';
                        false    4            	            3079    18598 
   pointcloud 	   EXTENSION     >   CREATE EXTENSION IF NOT EXISTS pointcloud WITH SCHEMA public;
    DROP EXTENSION pointcloud;
                   false            �           0    0    EXTENSION pointcloud    COMMENT     G   COMMENT ON EXTENSION pointcloud IS 'data type for lidar point clouds';
                        false    9            
            3079    18693    pointcloud_postgis 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS pointcloud_postgis WITH SCHEMA public;
 #   DROP EXTENSION pointcloud_postgis;
                   false    9    2            �           0    0    EXTENSION pointcloud_postgis    COMMENT     n   COMMENT ON EXTENSION pointcloud_postgis IS 'integration for pointcloud LIDAR data and PostGIS geometry data';
                        false    10                        3079    18573    postgis_sfcgal 	   EXTENSION     B   CREATE EXTENSION IF NOT EXISTS postgis_sfcgal WITH SCHEMA public;
    DROP EXTENSION postgis_sfcgal;
                   false    2            �           0    0    EXTENSION postgis_sfcgal    COMMENT     C   COMMENT ON EXTENSION postgis_sfcgal IS 'PostGIS SFCGAL functions';
                        false    8                        3079    18723    postgis_tiger_geocoder 	   EXTENSION     I   CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder WITH SCHEMA tiger;
 '   DROP EXTENSION postgis_tiger_geocoder;
                   false    2    12    21            �           0    0     EXTENSION postgis_tiger_geocoder    COMMENT     ^   COMMENT ON EXTENSION postgis_tiger_geocoder IS 'PostGIS tiger geocoder and reverse geocoder';
                        false    13                        3079    18362    postgis_topology 	   EXTENSION     F   CREATE EXTENSION IF NOT EXISTS postgis_topology WITH SCHEMA topology;
 !   DROP EXTENSION postgis_topology;
                   false    2    20            �           0    0    EXTENSION postgis_topology    COMMENT     Y   COMMENT ON EXTENSION postgis_topology IS 'PostGIS topology spatial types and functions';
                        false    5            =           1259    19323    article    TABLE     �   CREATE TABLE public.article (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    intro character varying(300) NOT NULL,
    text text NOT NULL,
    date timestamp without time zone,
    user_id integer
);
    DROP TABLE public.article;
       public         heap    postgres    false            <           1259    19322    article_id_seq    SEQUENCE     �   CREATE SEQUENCE public.article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.article_id_seq;
       public          postgres    false    317            �           0    0    article_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.article_id_seq OWNED BY public.article.id;
          public          postgres    false    316            ;           1259    19313    users1    TABLE     �   CREATE TABLE public.users1 (
    id smallint NOT NULL,
    login character varying(100),
    password character varying(100),
    email character varying(100),
    file character varying(100)
);
    DROP TABLE public.users1;
       public         heap    postgres    false            �           0    0    TABLE users1    COMMENT     a   COMMENT ON TABLE public.users1 IS 'таблица с данными пользователей';
          public          postgres    false    315            >           1259    19331    users1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users1_id_seq
    AS smallint
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.users1_id_seq;
       public          postgres    false    315            �           0    0    users1_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.users1_id_seq OWNED BY public.users1.id;
          public          postgres    false    318            �           2604    19326 
   article id    DEFAULT     h   ALTER TABLE ONLY public.article ALTER COLUMN id SET DEFAULT nextval('public.article_id_seq'::regclass);
 9   ALTER TABLE public.article ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    316    317    317            �           2604    19332 	   users1 id    DEFAULT     f   ALTER TABLE ONLY public.users1 ALTER COLUMN id SET DEFAULT nextval('public.users1_id_seq'::regclass);
 8   ALTER TABLE public.users1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    318    315            �          0    19323    article 
   TABLE DATA           H   COPY public.article (id, title, intro, text, date, user_id) FROM stdin;
    public          postgres    false    317   ^7       �          0    18600    pointcloud_formats 
   TABLE DATA           @   COPY public.pointcloud_formats (pcid, srid, schema) FROM stdin;
    public          postgres    false    260   9       �          0    16717    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    233   "9       �          0    18550    us_gaz 
   TABLE DATA           J   COPY public.us_gaz (id, seq, word, stdword, token, is_custom) FROM stdin;
    public          postgres    false    257   ?9       �          0    18538    us_lex 
   TABLE DATA           J   COPY public.us_lex (id, seq, word, stdword, token, is_custom) FROM stdin;
    public          postgres    false    255   \9       �          0    18562    us_rules 
   TABLE DATA           7   COPY public.us_rules (id, rule, is_custom) FROM stdin;
    public          postgres    false    259   y9       �          0    19313    users1 
   TABLE DATA           B   COPY public.users1 (id, login, password, email, file) FROM stdin;
    public          postgres    false    315   �9       �          0    18729    geocode_settings 
   TABLE DATA           T   COPY tiger.geocode_settings (name, setting, unit, category, short_desc) FROM stdin;
    tiger          postgres    false    263   D       �          0    19061    pagc_gaz 
   TABLE DATA           K   COPY tiger.pagc_gaz (id, seq, word, stdword, token, is_custom) FROM stdin;
    tiger          postgres    false    308   ;D       �          0    19071    pagc_lex 
   TABLE DATA           K   COPY tiger.pagc_lex (id, seq, word, stdword, token, is_custom) FROM stdin;
    tiger          postgres    false    310   XD       �          0    19081 
   pagc_rules 
   TABLE DATA           8   COPY tiger.pagc_rules (id, rule, is_custom) FROM stdin;
    tiger          postgres    false    312   uD       �          0    18364    topology 
   TABLE DATA           G   COPY topology.topology (id, name, srid, "precision", hasz) FROM stdin;
    topology          postgres    false    248   �D       �          0    18376    layer 
   TABLE DATA           �   COPY topology.layer (topology_id, layer_id, schema_name, table_name, feature_column, feature_type, level, child_id) FROM stdin;
    topology          postgres    false    249   �D       �           0    0    article_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.article_id_seq', 15, true);
          public          postgres    false    316            �           0    0    users1_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.users1_id_seq', 87, true);
          public          postgres    false    318            �           0    0    topology_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('topology.topology_id_seq', 1, false);
          topology          postgres    false    247                       2606    19330    article article_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.article DROP CONSTRAINT article_pkey;
       public            postgres    false    317            �   �  x���MnT1���)�9�w6܀�0mAl ��`�T���Й�+87�N�*���^���2����͏�CH���	`�>�H�Rޛ�gV�%��a3�1,�ϝ�cr	1aа��V[���zj.�}U6��mSNr1�L�D���|�?�T]�Ԕ,��*jcp$��ՔRV[��+m���}0m3���~��c�9`q�"V2�[� ��q�׼��B�s�ɺ}b�������V��x��(n�-�7�����t��o�߁&��J�Q	a�ر���TI�r��Q$�5�7
���>�{�~�:`\>5�I�GS����bi��heZ�Q"�2�g�J�߉���<��m
~*WR��灶x�
މ�K�[�9�i��ousyL��NnQ�gt9y���dO���T�%      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   x
  x���ٲ�Z�ǯ��8��y�+eTdP�8��I�x�z��ꛊ��:�����w�YY�M����[���������#^,䋅z��/����h���b�^,�3���j$~f|����=�	GG�u�nt�`(���u�x6��a�h�?�1�����f�&ԸM~�v���o6a@�%P;iit�Gd�#�z�8��m�܈
	��&*��'w���(1�S� ~r��B��ur�Qr|�A��myYhr���Ƭ�1SD1�~w���Z��.9��I������^�VQ����4���h9�.ǲ�ħS�ι���>�Ȯ#Q�f�4�n,�33���r���W(����Y�e�����h~�"��kΝ��=�3�ED�C�`���N�� ����t4�Brm��<��&�%WYQ������X����M��gap���$�Þ@��oS}^-�L�/H��Dx�HxL����~
��ŷy�Q.�::I��C��na\@��D?� w�m�g����wvS�t�+Z9�s+;D�'�z5� ӏԐ|��ϬX��e!hB6)������v���\�\��bgһh1'nBH���,�3�3���L�X&�#<�T&��&�.��S<Q*���=����"�ݷ�_�;лU�Wg��˵��.�,նE�#�rެΥL�oI�	7��ӇU"Mkd���	v{3`r����a7d�Xa�Oᩜw���S�P�=34��]8P�."�Δd�5V�e-4�lփR�ij����p���b�EEW��|��	˲OV��6F��|�"��;S��Jk3ql�/x������ 阭"���p��wq0e�S�ͪ�ٴ��W#�M;��fE3	�j�v&rqZ,k{(w��;a���ϋ2Z�%UrNp���� R�)�2^%	kM��^,��X��)R7��/
��4�d��>
K��q>�]�2��j�H�����~��]P�5.5|i�u�����[0��$O��'��B�tLg幽��ر�]H�m���l*�L�&��d�����`+��`�%�&<((�I��M���o����w��	�"h�Ai��	����q�'���/�㒘:nBٞ*��eVK+�j�X�z��1g�rh�ƫc>��|���&�/�e����9�>o�~���$7R�����˲O;s	�Nk>�(4��-��S�-���3
ݭ������X�E�C0���P��zB���C#_�۠<i(�T��?���X9B�N�3M�/%�Y��9�P'�>�d���\X��n��SԚ�}y^>��?x�\�5_��������X��`n���'#p���N��dd���}*��v����RC+��؃�I�n�5$h�~E��J ~��?U 
��_�T�+yO�2�/�t�/�3Y~����p�	����?��A}�ə*i�0�F6���r�J��L�E�P �����
E����K1y�C�b{:�;�;՛1���X���V�mא�f��e27�88��|�m��^B�����7I�D)Қ�����F^.���D�o!QݻGnHN��$���H�O�'��sbo}O��^Hj��H��Ԍm�N� ˛��ʑ���[�A�F9t6����1�k`Ih�b�@T\�m
rW�0�.K���U�Nf�ziPF
v��m7�/j���I�?&9x;�U�o��*9F��-�Au��F��yO�i|�L�ٹZ�[n�Vk�<U 
����h�H�0o��n�m��SRe���,HgZ.�U1�4�ߞSS��H��^��Hq¥�� ����ɽ{��6uJZ*h����N�D0����f~Xv������IOn�����k�2�DKE���1�ƥSRi�tY��ʣ�.9L��=3U�m���}YN�Y�4)HO�_z��T�w:=���w��eD6S�vkɜ|/���"��Cf���������Z�'��^�~�Rص����P��s��K�!�e��3�u�
g�ˉ�hpL�Y��!�>�u���n�D���	�m�xV���l�ͺk�H ʄ�=d6վ��B�)#��d���x!���8#4B��i�ţPo�C�Hj,��JL���'yR��o��y!a���UgZ\%�n�P��U�ʵ��t�!�S�(��[ȕ=lb&�g�N}�J7m��ȯ(BR�C��L3�]�U˧p{�M-V��ګz��!&=��~�:he�ǝ'��>�A�n��<�ɲ��Q��~"� �W�E�礩ɷ|�׷����o�|���g<.5��Bh]�˖���E� ]"�6�B�L�k�:В�L��뷿}��ϿN8n�!(z��k�?��؈o&m#F���Q({@��'}W��f�n0�\/�i��dT��o����o�Z�D�������ξl0�F��X��X�g�+a���<� �����9�E��y�I��cN0C�6��,�UU��ӓjs��a#Z�4���b�f��ș�d��I$)�^'(Y��ҿ#���I�!�o��G�|/dN�mq�W������~�;���s�Hm��0WW�)�ې�>j��~^���~|r�N1H#Ũ.�!i� ;��*jb��6�	Gqz�Yq��!K,�`�O����ʾ�=����8��3�>0����h%r�M]6�.J�Tj����
6t���a9�}��� 䱫      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     