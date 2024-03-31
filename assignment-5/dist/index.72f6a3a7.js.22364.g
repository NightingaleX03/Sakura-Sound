/**
 * songs.js
 *
 * The app's songs
 */ window.songs = [
    {
        songId: "SID-111222331",
        artistId: "AID-10001",
        title: "Make It Out Alive",
        year: "2023",
        duration: 209,
        image: "https://www.oneokrock.com/en/wp-content/uploads/2023/08/samll_MHN_OOR_jacketdesign_0808_fin.jpg",
        url: "https://www.youtube.com/watch?v=CM4iVSsD524",
        spotifyUrl: "https://open.spotify.com/track/4WVJeRP6hjMMBkmWsV4TtF?si=22278b7a3f3b4956",
        explicit: false
    },
    {
        songId: "SID-111222332",
        artistId: "AID-10001",
        title: "Mad World",
        year: "2022",
        duration: 182,
        image: "https://i1.sndcdn.com/artworks-qQpZrNzZy3vk-0-t500x500.jpg",
        url: "https://www.youtube.com/watch?v=2LVXd2HucF8",
        spotifyUrl: "https://open.spotify.com/track/7ywqc4iWYRswIoRbIqmkPt?si=6c4ade759a3f4bab",
        explicit: false
    },
    {
        songId: "SID-111222333",
        artistId: "AID-10001",
        title: "Save Yourself",
        year: "2022",
        duration: 197,
        image: "https://images.genius.com/1ea97ed3d96ad5e0f605e1865aa53d42.602x602x1.jpg",
        url: "https://www.youtube.com/watch?v=3Fxzu6Jbrww",
        spotifyUrl: "https://open.spotify.com/track/5D5fiDX8MhK3lfHJmZZmpt?si=67fc9e67ec8f46ee",
        explicit: false
    },
    {
        songId: "SID-111222334",
        artistId: "AID-10001",
        title: "Neon",
        year: "2022",
        duration: 184,
        image: "https://i.ytimg.com/vi/uA832zpafis/maxresdefault.jpg",
        url: "https://www.youtube.com/watch?v=K0wMjXxGB0Y",
        spotifyUrl: "https://open.spotify.com/track/6FqBXznySxnhneE9M2sz4f?si=1496f7149dd24241",
        explicit: true
    },
    {
        songId: "SID-111222335",
        artistId: "AID-10001",
        title: "Vandalize",
        year: "2022",
        duration: 194,
        url: "https://www.youtube.com/watch?v=fnyzHd2PoS0",
        spotifyUrl: "https://open.spotify.com/track/0zmOnwMT92MMZxfE04TbKt?si=f05a572f91b54b58",
        explicit: true
    },
    {
        songId: "SID-111222336",
        artistId: "AID-10001",
        title: "Let Me Let You Go",
        year: "2022",
        duration: 180,
        image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/77bf7648-915c-41ef-8842-c6347d2d96ad/dfgw8pl-7c66581f-9e00-4fe1-a011-b6140f8a11ce.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzc3YmY3NjQ4LTkxNWMtNDFlZi04ODQyLWM2MzQ3ZDJkOTZhZFwvZGZndzhwbC03YzY2NTgxZi05ZTAwLTRmZTEtYTAxMS1iNjE0MGY4YTExY2UuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.N1kf_AzY8AMCIMb38CMCiV-UiOafDgf9RMd0mLurB5w",
        url: "https://www.youtube.com/watch?v=RvZvdvtEeIs",
        spotifyUrl: "https://open.spotify.com/track/1l6fmXCPtTpJrKpYBe9bBw?si=9fa89c0e32e449d2",
        explicit: false
    },
    {
        songId: "SID-111222337",
        artistId: "AID-10001",
        title: "Prove",
        year: "2022",
        duration: 226,
        image: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/77bf7648-915c-41ef-8842-c6347d2d96ad/dgjh63j-57fe1825-8a75-4bc9-bb75-f5554b72b5b2.jpg/v1/fill/w_894,h_894,q_70,strp/one_ok_rock___prove__album_cover__by_babyv004_dgjh63j-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTAwMCIsInBhdGgiOiJcL2ZcLzc3YmY3NjQ4LTkxNWMtNDFlZi04ODQyLWM2MzQ3ZDJkOTZhZFwvZGdqaDYzai01N2ZlMTgyNS04YTc1LTRiYzktYmI3NS1mNTU1NGI3MmI1YjIuanBnIiwid2lkdGgiOiI8PTEwMDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.6tQsFNVPdaLcRNxy2j4-C7CAGEX1XQDjNlETlWoFkVc",
        url: "https://www.youtube.com/watch?v=_oMYtIRslQ0",
        spotifyUrl: "https://open.spotify.com/track/25zDi4gzegx32Z9Zp5pJBr?si=be61654656f4481a",
        explicit: false
    },
    {
        songId: "SID-111222338",
        artistId: "AID-10001",
        title: "Broken Heart of Gold",
        year: "2021",
        duration: 253,
        image: "https://images.genius.com/aefe7fc97d8a6d7b4954fbad0de7373c.1000x1000x1.jpg",
        url: "https://www.youtube.com/watch?v=wJ6FMjZkbMI",
        spotifyUrl: "https://open.spotify.com/track/1puWjVZrdvVGsR6RFz14Ca?si=8391c70e2e9645a3",
        explicit: false
    },
    {
        songId: "SID-222333441",
        artistId: "AID-20002",
        title: "\u30DD\u30E9\u30EA\u30B9 (Polaris)",
        year: "2020",
        duration: 224,
        image: "https://www.moshimoshi-nippon.jp/wp/wp-content/uploads/2019/09/811d2c8142337d861994d007512aed79.jpg",
        url: "https://www.youtube.com/watch?v=Isb7Q4jEA04",
        spotifyUrl: "https://open.spotify.com/track/28DlaPydCnrs8NxYOnUPZ8?si=edf76f9348fe4e1b",
        explicit: false
    },
    {
        songId: "SID-222333442",
        artistId: "AID-20002",
        title: "FREEDOM",
        year: "2020",
        duration: 254,
        image: "https://linkstorage.linkfire.com/medialinks/images/13a74544-8166-436a-96b2-bdd7f98ebbf0/artwork-440x440.jpg",
        url: "https://www.youtube.com/watch?v=iBPbvfLKIf0",
        spotifyUrl: "https://open.spotify.com/track/0QIaySHCZ31HPdNykMTlSn?si=d3492c380bd94eb1",
        explicit: false
    },
    {
        songId: "SID-222333443",
        artistId: "AID-20002",
        title: "\u30D0\u30C3\u30C9\u30D1\u30E9\u30C9\u30C3\u30AF\u30B9 (Bad Paradox)",
        year: "2020",
        duration: 260,
        image: "https://images.genius.com/6a2ee174ac37d5d6fdd446ae00088652.1000x1000x1.jpg",
        url: "https://www.youtube.com/watch?v=l9t0a5CiBBo",
        spotifyUrl: "https://open.spotify.com/track/722hPxTg5ot3Pay7EeZpLk?si=febf356a086b443c",
        explicit: false
    },
    {
        songId: "SID-222333444",
        artistId: "AID-20002",
        title: "Destiny",
        year: "2023",
        duration: 209,
        image: "https://i.scdn.co/image/ab67616d0000b2735074ad17f9f19ff9d0468b66",
        url: "https://www.youtube.com/watch?v=HUig_5zqcRc",
        spotifyUrl: "https://open.spotify.com/track/2vhnYCh0JSAMKirkdPTPJ0?si=685cea491a654014",
        explicit: false
    },
    {
        songId: "SID-333444551",
        artistId: "AID-40004",
        title: "REVIVER",
        year: "2018",
        duration: 290,
        image: "https://i.ytimg.com/vi/r2kUQP2PJWA/sddefault.jpg",
        url: "https://www.youtube.com/watch?v=BWmO6SCYhRc",
        spotifyUrl: "https://open.spotify.com/track/1p6WtbNY4bDjiFBmSZolJY?si=2e52781e6f3c4c68",
        explicit: false
    },
    {
        songId: "SID-333444555",
        artistId: "AID-40004",
        title: "I'm a mess",
        year: "2021",
        duration: 249,
        image: "https://i.scdn.co/image/ab67616d0000b27355b1380dabc62ceb668af595",
        url: "https://www.youtube.com/watch?v=ma4lm5eAdvg",
        spotifyUrl: "https://open.spotify.com/track/6c5GqVWU3yFDgPkgBB0MGg?si=fe5782f5f40a49f6",
        explicit: false
    },
    {
        songId: "SID-333444552",
        artistId: "AID-40004",
        title: "LET IT DIE",
        year: "2018",
        duration: 249,
        image: "https://i.kfs.io/album/global/44442284,1v1/fit/500x500.jpg",
        url: "https://www.youtube.com/watch?v=m6tQm4rOge0",
        spotifyUrl: "https://open.spotify.com/track/08rRFDUovbSP4WK3E75gmO?si=c04deaa90b264bf6",
        explicit: false
    },
    {
        songId: "SID-333444553",
        artistId: "AID-40004",
        title: "\u4E0D\u53EF\u9006\u30EA\u30D7\u30EC\u30A4\u30B9",
        year: "2018",
        duration: 227,
        image: "https://myfirststory.net/s3/skiyaki/uploads/image/file/55686/20140924_%E4%B8%8D%E5%8F%AF%E9%80%86%E3%83%AA%E3%83%97%E3%83%AC%E3%82%A4%E3%82%B9.jpg",
        url: "https://www.youtube.com/watch?v=DPd25u3QbkY",
        spotifyUrl: "https://open.spotify.com/track/19FY4Eu9kSlpPNimWyPyKC?si=661be588947b4ae6",
        explicit: false
    },
    {
        songId: "SID-333444554",
        artistId: "AID-40004",
        title: "Dreaming of you",
        year: "2022",
        duration: 227,
        image: "https://i.ytimg.com/vi/8cR33pwhGS0/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLC_gsxKuxqSvRRXWuySnbt_-I07RA",
        url: "https://www.youtube.com/watch?v=PovSWTyWe94",
        spotifyUrl: "https://open.spotify.com/track/61AYCZrkESwuQKUULP0fgF?si=cc62218af95e478f",
        explicit: false
    },
    {
        songId: "SID-333444556",
        artistId: "AID-40004",
        title: "\u544A\u767D (Kokuhaku)",
        year: "2021",
        duration: 257,
        image: "https://m.media-amazon.com/images/I/71pbkFwqjaS._UF1000,1000_QL80_.jpg",
        url: "https://www.youtube.com/watch?v=vSRYGOSDCzo",
        spotifyUrl: "https://open.spotify.com/track/05dNly5n36DhY8tY0qLNBw?si=09beb616dfc3410e",
        explicit: false
    },
    {
        songId: "SID-333444557",
        artistId: "AID-40004",
        title: "ACCIDENT",
        year: "2021",
        duration: 213,
        image: "https://img.barks.jp/image/review/1000155932/001.jpg",
        url: "https://www.youtube.com/watch?v=0lh9gvNkrAc",
        spotifyUrl: "https://open.spotify.com/track/05dNly5n36DhY8tY0qLNBw?si=09beb616dfc3410e",
        explicit: false
    },
    {
        songId: "SID-444555661",
        artistId: "AID-30003",
        title: "Beauty Queen",
        year: "2022",
        duration: 199,
        image: "https://geo-media.beatsource.com/image_size/500x500/4/5/8/458e7b7a-737e-4bcf-92a7-9a5ca9b7e8c5.jpg",
        url: "https://www.youtube.com/watch?v=pQoJgfPKCis",
        spotifyUrl: "https://open.spotify.com/track/4yTOsn5kpUCiNf2c5aveeX?si=02b6a3867c014e4f",
        explicit: false
    },
    {
        songId: "SID-444555662",
        artistId: "AID-30003",
        title: "Your Head",
        year: "2020",
        duration: 214,
        image: "https://i.ytimg.com/vi/5zss0hsNgrE/maxresdefault.jpg",
        url: "https://www.youtube.com/watch?v=CtsK3wrqm2A",
        spotifyUrl: "https://open.spotify.com/track/3B4WNqMYRAfGmxlVMoilyh?si=aae96343460849ff",
        explicit: false
    },
    {
        songId: "SID-444555663",
        artistId: "AID-30003",
        title: "Follow",
        year: "2016",
        image: "https://www.billboard.com/wp-content/uploads/media/Survive-Said-The-Prophet-2019-billboard-1548.jpg",
        duration: 232,
        url: "https://www.youtube.com/watch?v=BQNheQ4A7G0",
        spotifyUrl: "https://open.spotify.com/track/5W8chZzWFKe7E18hkbMtfw?si=75814682e7a84c07",
        explicit: false
    },
    {
        songId: "SID-444555664",
        artistId: "AID-30003",
        title: "The Happy Song",
        year: "2018",
        image: "https://i.scdn.co/image/ab67616d00001e024956f9fa9f46a21d551c7794",
        duration: 164,
        url: "https://www.youtube.com/watch?v=KBuhUC33BpU",
        spotifyUrl: "https://open.spotify.com/track/2XOoyKhxREzF0TozjFZ7bZ?si=099348eb7e374a4d",
        explicit: false
    },
    {
        songId: "SID-444555665",
        artistId: "AID-30003",
        title: "SPINE",
        year: "2018",
        image: "https://i.ytimg.com/vi/_B6Pg5Ri7oQ/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLC6ZqMDAZzBrXBk_YuacH-Y8lhkjA",
        duration: 209,
        url: "https://www.youtube.com/watch?v=PtiBBkEiHsY",
        spotifyUrl: "https://open.spotify.com/track/39SoGOKfPGoofPhGZb6iEc?si=1a91d489bec24fc2",
        explicit: false
    }
];

//# sourceMappingURL=index.72f6a3a7.js.map
