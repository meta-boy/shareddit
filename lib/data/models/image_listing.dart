// To parse this JSON data, do
//
//     final imageListing = imageListingFromJson(jsonString);

import 'dart:convert';

import 'package:shareddit/core/constants.dart';

ImageListing imageListingFromJson(String str) => ImageListing.fromJson(json.decode(str));

String imageListingToJson(ImageListing data) => json.encode(data.toJson());

class ImageListing implements Listing {
    ImageListing({
        this.kind,
        this.data,
    });

    final String kind;
    final ImageListingData data;

    factory ImageListing.fromJson(Map<String, dynamic> json) => ImageListing(
        kind: json["kind"] == null ? null : json["kind"],
        data: json["data"] == null ? null : ImageListingData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind == null ? null : kind,
        "data": data == null ? null : data.toJson(),
    };
}

class ImageListingData {
    ImageListingData({
        this.modhash,
        this.dist,
        this.children,
        this.after,
        this.before,
    });

    final String modhash;
    final int dist;
    final List<Child> children;
    final dynamic after;
    final dynamic before;

    factory ImageListingData.fromJson(Map<String, dynamic> json) => ImageListingData(
        modhash: json["modhash"] == null ? null : json["modhash"],
        dist: json["dist"] == null ? null : json["dist"],
        children: json["children"] == null ? null : List<Child>.from(json["children"].map((x) => Child.fromJson(x))),
        after: json["after"],
        before: json["before"],
    );

    Map<String, dynamic> toJson() => {
        "modhash": modhash == null ? null : modhash,
        "dist": dist == null ? null : dist,
        "children": children == null ? null : List<dynamic>.from(children.map((x) => x.toJson())),
        "after": after,
        "before": before,
    };
}

class Child {
    Child({
        this.kind,
        this.data,
    });

    final String kind;
    final ChildData data;

    factory Child.fromJson(Map<String, dynamic> json) => Child(
        kind: json["kind"] == null ? null : json["kind"],
        data: json["data"] == null ? null : ChildData.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "kind": kind == null ? null : kind,
        "data": data == null ? null : data.toJson(),
    };
}

class ChildData {
    ChildData({
        this.approvedAtUtc,
        this.subreddit,
        this.selftext,
        this.userReports,
        this.saved,
        this.modReasonTitle,
        this.gilded,
        this.clicked,
        this.title,
        this.linkFlairRichtext,
        this.subredditNamePrefixed,
        this.hidden,
        this.pwls,
        this.linkFlairCssClass,
        this.downs,
        this.thumbnailHeight,
        this.topAwardedType,
        this.parentWhitelistStatus,
        this.hideScore,
        this.name,
        this.quarantine,
        this.linkFlairTextColor,
        this.upvoteRatio,
        this.authorFlairBackgroundColor,
        this.subredditType,
        this.ups,
        this.totalAwardsReceived,
        this.mediaEmbed,
        this.thumbnailWidth,
        this.authorFlairTemplateId,
        this.isOriginalContent,
        this.authorFullname,
        this.secureMedia,
        this.isRedditMediaDomain,
        this.isMeta,
        this.category,
        this.secureMediaEmbed,
        this.linkFlairText,
        this.canModPost,
        this.score,
        this.approvedBy,
        this.authorPremium,
        this.thumbnail,
        this.edited,
        this.authorFlairCssClass,
        this.authorFlairRichtext,
        this.gildings,
        this.postHint,
        this.contentCategories,
        this.isSelf,
        this.modNote,
        this.created,
        this.linkFlairType,
        this.wls,
        this.removedByCategory,
        this.bannedBy,
        this.authorFlairType,
        this.domain,
        this.allowLiveComments,
        this.selftextHtml,
        this.likes,
        this.suggestedSort,
        this.bannedAtUtc,
        this.viewCount,
        this.archived,
        this.noFollow,
        this.isCrosspostable,
        this.pinned,
        this.over18,
        this.preview,
        this.allAwardings,
        this.awarders,
        this.mediaOnly,
        this.canGild,
        this.spoiler,
        this.locked,
        this.authorFlairText,
        this.treatmentTags,
        this.visited,
        this.removedBy,
        this.numReports,
        this.distinguished,
        this.subredditId,
        this.modReasonBy,
        this.removalReason,
        this.linkFlairBackgroundColor,
        this.id,
        this.isRobotIndexable,
        this.numDuplicates,
        this.reportReasons,
        this.author,
        this.discussionType,
        this.numComments,
        this.sendReplies,
        this.media,
        this.contestMode,
        this.authorPatreonFlair,
        this.authorFlairTextColor,
        this.permalink,
        this.whitelistStatus,
        this.stickied,
        this.url,
        this.subredditSubscribers,
        this.createdUtc,
        this.numCrossposts,
        this.modReports,
        this.isVideo,
    });

    final dynamic approvedAtUtc;
    final String subreddit;
    final String selftext;
    final List<dynamic> userReports;
    final bool saved;
    final dynamic modReasonTitle;
    final int gilded;
    final bool clicked;
    final String title;
    final List<dynamic> linkFlairRichtext;
    final String subredditNamePrefixed;
    final bool hidden;
    final dynamic pwls;
    final dynamic linkFlairCssClass;
    final int downs;
    final int thumbnailHeight;
    final dynamic topAwardedType;
    final dynamic parentWhitelistStatus;
    final bool hideScore;
    final String name;
    final bool quarantine;
    final String linkFlairTextColor;
    final double upvoteRatio;
    final dynamic authorFlairBackgroundColor;
    final String subredditType;
    final int ups;
    final int totalAwardsReceived;
    final Gildings mediaEmbed;
    final int thumbnailWidth;
    final dynamic authorFlairTemplateId;
    final bool isOriginalContent;
    final String authorFullname;
    final dynamic secureMedia;
    final bool isRedditMediaDomain;
    final bool isMeta;
    final dynamic category;
    final Gildings secureMediaEmbed;
    final dynamic linkFlairText;
    final bool canModPost;
    final int score;
    final dynamic approvedBy;
    final bool authorPremium;
    final String thumbnail;
    final bool edited;
    final dynamic authorFlairCssClass;
    final List<dynamic> authorFlairRichtext;
    final Gildings gildings;
    final String postHint;
    final dynamic contentCategories;
    final bool isSelf;
    final dynamic modNote;
    final int created;
    final String linkFlairType;
    final dynamic wls;
    final dynamic removedByCategory;
    final dynamic bannedBy;
    final String authorFlairType;
    final String domain;
    final bool allowLiveComments;
    final dynamic selftextHtml;
    final dynamic likes;
    final String suggestedSort;
    final dynamic bannedAtUtc;
    final dynamic viewCount;
    final bool archived;
    final bool noFollow;
    final bool isCrosspostable;
    final bool pinned;
    final bool over18;
    final Preview preview;
    final List<dynamic> allAwardings;
    final List<dynamic> awarders;
    final bool mediaOnly;
    final bool canGild;
    final bool spoiler;
    final bool locked;
    final dynamic authorFlairText;
    final List<dynamic> treatmentTags;
    final bool visited;
    final dynamic removedBy;
    final dynamic numReports;
    final dynamic distinguished;
    final String subredditId;
    final dynamic modReasonBy;
    final dynamic removalReason;
    final String linkFlairBackgroundColor;
    final String id;
    final bool isRobotIndexable;
    final int numDuplicates;
    final dynamic reportReasons;
    final String author;
    final dynamic discussionType;
    final int numComments;
    final bool sendReplies;
    final dynamic media;
    final bool contestMode;
    final bool authorPatreonFlair;
    final dynamic authorFlairTextColor;
    final String permalink;
    final dynamic whitelistStatus;
    final bool stickied;
    final String url;
    final int subredditSubscribers;
    final int createdUtc;
    final int numCrossposts;
    final List<dynamic> modReports;
    final bool isVideo;

    factory ChildData.fromJson(Map<String, dynamic> json) => ChildData(
        approvedAtUtc: json["approved_at_utc"],
        subreddit: json["subreddit"] == null ? null : json["subreddit"],
        selftext: json["selftext"] == null ? null : json["selftext"],
        userReports: json["user_reports"] == null ? null : List<dynamic>.from(json["user_reports"].map((x) => x)),
        saved: json["saved"] == null ? null : json["saved"],
        modReasonTitle: json["mod_reason_title"],
        gilded: json["gilded"] == null ? null : json["gilded"],
        clicked: json["clicked"] == null ? null : json["clicked"],
        title: json["title"] == null ? null : json["title"],
        linkFlairRichtext: json["link_flair_richtext"] == null ? null : List<dynamic>.from(json["link_flair_richtext"].map((x) => x)),
        subredditNamePrefixed: json["subreddit_name_prefixed"] == null ? null : json["subreddit_name_prefixed"],
        hidden: json["hidden"] == null ? null : json["hidden"],
        pwls: json["pwls"],
        linkFlairCssClass: json["link_flair_css_class"],
        downs: json["downs"] == null ? null : json["downs"],
        thumbnailHeight: json["thumbnail_height"] == null ? null : json["thumbnail_height"],
        topAwardedType: json["top_awarded_type"],
        parentWhitelistStatus: json["parent_whitelist_status"],
        hideScore: json["hide_score"] == null ? null : json["hide_score"],
        name: json["name"] == null ? null : json["name"],
        quarantine: json["quarantine"] == null ? null : json["quarantine"],
        linkFlairTextColor: json["link_flair_text_color"] == null ? null : json["link_flair_text_color"],
        upvoteRatio: json["upvote_ratio"] == null ? null : json["upvote_ratio"].toDouble(),
        authorFlairBackgroundColor: json["author_flair_background_color"],
        subredditType: json["subreddit_type"] == null ? null : json["subreddit_type"],
        ups: json["ups"] == null ? null : json["ups"],
        totalAwardsReceived: json["total_awards_received"] == null ? null : json["total_awards_received"],
        mediaEmbed: json["media_embed"] == null ? null : Gildings.fromJson(json["media_embed"]),
        thumbnailWidth: json["thumbnail_width"] == null ? null : json["thumbnail_width"],
        authorFlairTemplateId: json["author_flair_template_id"],
        isOriginalContent: json["is_original_content"] == null ? null : json["is_original_content"],
        authorFullname: json["author_fullname"] == null ? null : json["author_fullname"],
        secureMedia: json["secure_media"],
        isRedditMediaDomain: json["is_reddit_media_domain"] == null ? null : json["is_reddit_media_domain"],
        isMeta: json["is_meta"] == null ? null : json["is_meta"],
        category: json["category"],
        secureMediaEmbed: json["secure_media_embed"] == null ? null : Gildings.fromJson(json["secure_media_embed"]),
        linkFlairText: json["link_flair_text"],
        canModPost: json["can_mod_post"] == null ? null : json["can_mod_post"],
        score: json["score"] == null ? null : json["score"],
        approvedBy: json["approved_by"],
        authorPremium: json["author_premium"] == null ? null : json["author_premium"],
        thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
        edited: json["edited"] == null ? null : json["edited"],
        authorFlairCssClass: json["author_flair_css_class"],
        authorFlairRichtext: json["author_flair_richtext"] == null ? null : List<dynamic>.from(json["author_flair_richtext"].map((x) => x)),
        gildings: json["gildings"] == null ? null : Gildings.fromJson(json["gildings"]),
        postHint: json["post_hint"] == null ? null : json["post_hint"],
        contentCategories: json["content_categories"],
        isSelf: json["is_self"] == null ? null : json["is_self"],
        modNote: json["mod_note"],
        created: json["created"] == null ? null : json["created"],
        linkFlairType: json["link_flair_type"] == null ? null : json["link_flair_type"],
        wls: json["wls"],
        removedByCategory: json["removed_by_category"],
        bannedBy: json["banned_by"],
        authorFlairType: json["author_flair_type"] == null ? null : json["author_flair_type"],
        domain: json["domain"] == null ? null : json["domain"],
        allowLiveComments: json["allow_live_comments"] == null ? null : json["allow_live_comments"],
        selftextHtml: json["selftext_html"],
        likes: json["likes"],
        suggestedSort: json["suggested_sort"] == null ? null : json["suggested_sort"],
        bannedAtUtc: json["banned_at_utc"],
        viewCount: json["view_count"],
        archived: json["archived"] == null ? null : json["archived"],
        noFollow: json["no_follow"] == null ? null : json["no_follow"],
        isCrosspostable: json["is_crosspostable"] == null ? null : json["is_crosspostable"],
        pinned: json["pinned"] == null ? null : json["pinned"],
        over18: json["over_18"] == null ? null : json["over_18"],
        preview: json["preview"] == null ? null : Preview.fromJson(json["preview"]),
        allAwardings: json["all_awardings"] == null ? null : List<dynamic>.from(json["all_awardings"].map((x) => x)),
        awarders: json["awarders"] == null ? null : List<dynamic>.from(json["awarders"].map((x) => x)),
        mediaOnly: json["media_only"] == null ? null : json["media_only"],
        canGild: json["can_gild"] == null ? null : json["can_gild"],
        spoiler: json["spoiler"] == null ? null : json["spoiler"],
        locked: json["locked"] == null ? null : json["locked"],
        authorFlairText: json["author_flair_text"],
        treatmentTags: json["treatment_tags"] == null ? null : List<dynamic>.from(json["treatment_tags"].map((x) => x)),
        visited: json["visited"] == null ? null : json["visited"],
        removedBy: json["removed_by"],
        numReports: json["num_reports"],
        distinguished: json["distinguished"],
        subredditId: json["subreddit_id"] == null ? null : json["subreddit_id"],
        modReasonBy: json["mod_reason_by"],
        removalReason: json["removal_reason"],
        linkFlairBackgroundColor: json["link_flair_background_color"] == null ? null : json["link_flair_background_color"],
        id: json["id"] == null ? null : json["id"],
        isRobotIndexable: json["is_robot_indexable"] == null ? null : json["is_robot_indexable"],
        numDuplicates: json["num_duplicates"] == null ? null : json["num_duplicates"],
        reportReasons: json["report_reasons"],
        author: json["author"] == null ? null : json["author"],
        discussionType: json["discussion_type"],
        numComments: json["num_comments"] == null ? null : json["num_comments"],
        sendReplies: json["send_replies"] == null ? null : json["send_replies"],
        media: json["media"],
        contestMode: json["contest_mode"] == null ? null : json["contest_mode"],
        authorPatreonFlair: json["author_patreon_flair"] == null ? null : json["author_patreon_flair"],
        authorFlairTextColor: json["author_flair_text_color"],
        permalink: json["permalink"] == null ? null : json["permalink"],
        whitelistStatus: json["whitelist_status"],
        stickied: json["stickied"] == null ? null : json["stickied"],
        url: json["url"] == null ? null : json["url"],
        subredditSubscribers: json["subreddit_subscribers"] == null ? null : json["subreddit_subscribers"],
        createdUtc: json["created_utc"] == null ? null : json["created_utc"],
        numCrossposts: json["num_crossposts"] == null ? null : json["num_crossposts"],
        modReports: json["mod_reports"] == null ? null : List<dynamic>.from(json["mod_reports"].map((x) => x)),
        isVideo: json["is_video"] == null ? null : json["is_video"],
    );

    Map<String, dynamic> toJson() => {
        "approved_at_utc": approvedAtUtc,
        "subreddit": subreddit == null ? null : subreddit,
        "selftext": selftext == null ? null : selftext,
        "user_reports": userReports == null ? null : List<dynamic>.from(userReports.map((x) => x)),
        "saved": saved == null ? null : saved,
        "mod_reason_title": modReasonTitle,
        "gilded": gilded == null ? null : gilded,
        "clicked": clicked == null ? null : clicked,
        "title": title == null ? null : title,
        "link_flair_richtext": linkFlairRichtext == null ? null : List<dynamic>.from(linkFlairRichtext.map((x) => x)),
        "subreddit_name_prefixed": subredditNamePrefixed == null ? null : subredditNamePrefixed,
        "hidden": hidden == null ? null : hidden,
        "pwls": pwls,
        "link_flair_css_class": linkFlairCssClass,
        "downs": downs == null ? null : downs,
        "thumbnail_height": thumbnailHeight == null ? null : thumbnailHeight,
        "top_awarded_type": topAwardedType,
        "parent_whitelist_status": parentWhitelistStatus,
        "hide_score": hideScore == null ? null : hideScore,
        "name": name == null ? null : name,
        "quarantine": quarantine == null ? null : quarantine,
        "link_flair_text_color": linkFlairTextColor == null ? null : linkFlairTextColor,
        "upvote_ratio": upvoteRatio == null ? null : upvoteRatio,
        "author_flair_background_color": authorFlairBackgroundColor,
        "subreddit_type": subredditType == null ? null : subredditType,
        "ups": ups == null ? null : ups,
        "total_awards_received": totalAwardsReceived == null ? null : totalAwardsReceived,
        "media_embed": mediaEmbed == null ? null : mediaEmbed.toJson(),
        "thumbnail_width": thumbnailWidth == null ? null : thumbnailWidth,
        "author_flair_template_id": authorFlairTemplateId,
        "is_original_content": isOriginalContent == null ? null : isOriginalContent,
        "author_fullname": authorFullname == null ? null : authorFullname,
        "secure_media": secureMedia,
        "is_reddit_media_domain": isRedditMediaDomain == null ? null : isRedditMediaDomain,
        "is_meta": isMeta == null ? null : isMeta,
        "category": category,
        "secure_media_embed": secureMediaEmbed == null ? null : secureMediaEmbed.toJson(),
        "link_flair_text": linkFlairText,
        "can_mod_post": canModPost == null ? null : canModPost,
        "score": score == null ? null : score,
        "approved_by": approvedBy,
        "author_premium": authorPremium == null ? null : authorPremium,
        "thumbnail": thumbnail == null ? null : thumbnail,
        "edited": edited == null ? null : edited,
        "author_flair_css_class": authorFlairCssClass,
        "author_flair_richtext": authorFlairRichtext == null ? null : List<dynamic>.from(authorFlairRichtext.map((x) => x)),
        "gildings": gildings == null ? null : gildings.toJson(),
        "post_hint": postHint == null ? null : postHint,
        "content_categories": contentCategories,
        "is_self": isSelf == null ? null : isSelf,
        "mod_note": modNote,
        "created": created == null ? null : created,
        "link_flair_type": linkFlairType == null ? null : linkFlairType,
        "wls": wls,
        "removed_by_category": removedByCategory,
        "banned_by": bannedBy,
        "author_flair_type": authorFlairType == null ? null : authorFlairType,
        "domain": domain == null ? null : domain,
        "allow_live_comments": allowLiveComments == null ? null : allowLiveComments,
        "selftext_html": selftextHtml,
        "likes": likes,
        "suggested_sort": suggestedSort == null ? null : suggestedSort,
        "banned_at_utc": bannedAtUtc,
        "view_count": viewCount,
        "archived": archived == null ? null : archived,
        "no_follow": noFollow == null ? null : noFollow,
        "is_crosspostable": isCrosspostable == null ? null : isCrosspostable,
        "pinned": pinned == null ? null : pinned,
        "over_18": over18 == null ? null : over18,
        "preview": preview == null ? null : preview.toJson(),
        "all_awardings": allAwardings == null ? null : List<dynamic>.from(allAwardings.map((x) => x)),
        "awarders": awarders == null ? null : List<dynamic>.from(awarders.map((x) => x)),
        "media_only": mediaOnly == null ? null : mediaOnly,
        "can_gild": canGild == null ? null : canGild,
        "spoiler": spoiler == null ? null : spoiler,
        "locked": locked == null ? null : locked,
        "author_flair_text": authorFlairText,
        "treatment_tags": treatmentTags == null ? null : List<dynamic>.from(treatmentTags.map((x) => x)),
        "visited": visited == null ? null : visited,
        "removed_by": removedBy,
        "num_reports": numReports,
        "distinguished": distinguished,
        "subreddit_id": subredditId == null ? null : subredditId,
        "mod_reason_by": modReasonBy,
        "removal_reason": removalReason,
        "link_flair_background_color": linkFlairBackgroundColor == null ? null : linkFlairBackgroundColor,
        "id": id == null ? null : id,
        "is_robot_indexable": isRobotIndexable == null ? null : isRobotIndexable,
        "num_duplicates": numDuplicates == null ? null : numDuplicates,
        "report_reasons": reportReasons,
        "author": author == null ? null : author,
        "discussion_type": discussionType,
        "num_comments": numComments == null ? null : numComments,
        "send_replies": sendReplies == null ? null : sendReplies,
        "media": media,
        "contest_mode": contestMode == null ? null : contestMode,
        "author_patreon_flair": authorPatreonFlair == null ? null : authorPatreonFlair,
        "author_flair_text_color": authorFlairTextColor,
        "permalink": permalink == null ? null : permalink,
        "whitelist_status": whitelistStatus,
        "stickied": stickied == null ? null : stickied,
        "url": url == null ? null : url,
        "subreddit_subscribers": subredditSubscribers == null ? null : subredditSubscribers,
        "created_utc": createdUtc == null ? null : createdUtc,
        "num_crossposts": numCrossposts == null ? null : numCrossposts,
        "mod_reports": modReports == null ? null : List<dynamic>.from(modReports.map((x) => x)),
        "is_video": isVideo == null ? null : isVideo,
    };
}

class Gildings {
    Gildings();

    factory Gildings.fromJson(Map<String, dynamic> json) => Gildings(
    );

    Map<String, dynamic> toJson() => {
    };
}

class Preview {
    Preview({
        this.images,
        this.enabled,
    });

    final List<Image> images;
    final bool enabled;

    factory Preview.fromJson(Map<String, dynamic> json) => Preview(
        images: json["images"] == null ? null : List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        enabled: json["enabled"] == null ? null : json["enabled"],
    );

    Map<String, dynamic> toJson() => {
        "images": images == null ? null : List<dynamic>.from(images.map((x) => x.toJson())),
        "enabled": enabled == null ? null : enabled,
    };
}

class Image {
    Image({
        this.source,
        this.resolutions,
        this.variants,
        this.id,
    });

    final Source source;
    final List<Source> resolutions;
    final Gildings variants;
    final String id;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        source: json["source"] == null ? null : Source.fromJson(json["source"]),
        resolutions: json["resolutions"] == null ? null : List<Source>.from(json["resolutions"].map((x) => Source.fromJson(x))),
        variants: json["variants"] == null ? null : Gildings.fromJson(json["variants"]),
        id: json["id"] == null ? null : json["id"],
    );

    Map<String, dynamic> toJson() => {
        "source": source == null ? null : source.toJson(),
        "resolutions": resolutions == null ? null : List<dynamic>.from(resolutions.map((x) => x.toJson())),
        "variants": variants == null ? null : variants.toJson(),
        "id": id == null ? null : id,
    };
}

class Source {
    Source({
        this.url,
        this.width,
        this.height,
    });

    final String url;
    final int width;
    final int height;

    factory Source.fromJson(Map<String, dynamic> json) => Source(
        url: json["url"] == null ? null : json["url"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
    );

    Map<String, dynamic> toJson() => {
        "url": url == null ? null : url,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
    };
}
