object AutoTablesClientDM: TAutoTablesClientDM
  OldCreateOrder = False
  Height = 484
  Width = 669
  object BackendEndpoint1: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'format'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/getwp_commentmeta/?format={format}'
    Response = RESTResponse1
    Left = 10
    Top = 10
  end
  object RESTResponse1: TRESTResponse
    Left = 12
    Top = 12
  end
  object getwp_commentmetaMemTable1: TFDMemTable
    FieldDefs = <
      item
        Name = 'meta_id'
        DataType = ftLargeint
      end
      item
        Name = 'comment_id'
        DataType = ftLargeint
      end
      item
        Name = 'meta_key'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'meta_value'
        DataType = ftMemo
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object BackendEndpoint2: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postwp_commentmeta/'
    Response = RESTResponse2
    Left = 20
    Top = 20
  end
  object RESTResponse2: TRESTResponse
    Left = 24
    Top = 24
  end
  object postwp_commentmetaPostMemTable2: TFDMemTable
    FieldDefs = <
      item
        Name = 'meta_id'
        DataType = ftLargeint
      end
      item
        Name = 'comment_id'
        DataType = ftLargeint
      end
      item
        Name = 'meta_key'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'meta_value'
        DataType = ftMemo
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object postwp_commentmetaMemTable2: TFDMemTable
    FieldDefs = <
      item
        Name = 'meta_id'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 377
    Top = 401
  end
  object BackendEndpoint3: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'meta_id'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/deletewp_commentmeta/?meta_id={meta_id}'
    Response = RESTResponse3
    Left = 30
    Top = 30
  end
  object RESTResponse3: TRESTResponse
    Left = 36
    Top = 36
  end
  object BackendEndpoint4: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'format'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/getwp_comments/?format={format}'
    Response = RESTResponse4
    Left = 40
    Top = 40
  end
  object RESTResponse4: TRESTResponse
    Left = 48
    Top = 48
  end
  object getwp_commentsMemTable4: TFDMemTable
    FieldDefs = <
      item
        Name = 'comment_ID'
        DataType = ftLargeint
      end
      item
        Name = 'comment_post_ID'
        DataType = ftLargeint
      end
      item
        Name = 'comment_author'
        Attributes = [faRequired]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'comment_author_email'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'comment_author_url'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'comment_author_IP'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'comment_date'
        DataType = ftDateTime
      end
      item
        Name = 'comment_date_gmt'
        DataType = ftDateTime
      end
      item
        Name = 'comment_content'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'comment_karma'
        DataType = ftInteger
      end
      item
        Name = 'comment_approved'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'comment_agent'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'comment_type'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'comment_parent'
        DataType = ftLargeint
      end
      item
        Name = 'user_id'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object BackendEndpoint5: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postwp_comments/'
    Response = RESTResponse5
    Left = 50
    Top = 50
  end
  object RESTResponse5: TRESTResponse
    Left = 60
    Top = 60
  end
  object postwp_commentsPostMemTable5: TFDMemTable
    FieldDefs = <
      item
        Name = 'comment_ID'
        DataType = ftLargeint
      end
      item
        Name = 'comment_post_ID'
        DataType = ftLargeint
      end
      item
        Name = 'comment_author'
        Attributes = [faRequired]
        DataType = ftString
        Size = 255
      end
      item
        Name = 'comment_author_email'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'comment_author_url'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'comment_author_IP'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'comment_date'
        DataType = ftDateTime
      end
      item
        Name = 'comment_date_gmt'
        DataType = ftDateTime
      end
      item
        Name = 'comment_content'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'comment_karma'
        DataType = ftInteger
      end
      item
        Name = 'comment_approved'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'comment_agent'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'comment_type'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'comment_parent'
        DataType = ftLargeint
      end
      item
        Name = 'user_id'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object postwp_commentsMemTable5: TFDMemTable
    FieldDefs = <
      item
        Name = 'comment_ID'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 377
    Top = 401
  end
  object BackendEndpoint6: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'comment_ID'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/deletewp_comments/?comment_ID={comment_ID}'
    Response = RESTResponse6
    Left = 60
    Top = 60
  end
  object RESTResponse6: TRESTResponse
    Left = 72
    Top = 72
  end
  object BackendEndpoint7: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'format'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/getwp_links/?format={format}'
    Response = RESTResponse7
    Left = 70
    Top = 70
  end
  object RESTResponse7: TRESTResponse
    Left = 84
    Top = 84
  end
  object getwp_linksMemTable7: TFDMemTable
    FieldDefs = <
      item
        Name = 'link_id'
        DataType = ftLargeint
      end
      item
        Name = 'link_url'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'link_name'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'link_image'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'link_target'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'link_description'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'link_visible'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'link_owner'
        DataType = ftLargeint
      end
      item
        Name = 'link_rating'
        DataType = ftInteger
      end
      item
        Name = 'link_updated'
        DataType = ftDateTime
      end
      item
        Name = 'link_rel'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'link_notes'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'link_rss'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object BackendEndpoint8: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postwp_links/'
    Response = RESTResponse8
    Left = 80
    Top = 80
  end
  object RESTResponse8: TRESTResponse
    Left = 96
    Top = 96
  end
  object postwp_linksPostMemTable8: TFDMemTable
    FieldDefs = <
      item
        Name = 'link_id'
        DataType = ftLargeint
      end
      item
        Name = 'link_url'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'link_name'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'link_image'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'link_target'
        DataType = ftString
        Size = 25
      end
      item
        Name = 'link_description'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'link_visible'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'link_owner'
        DataType = ftLargeint
      end
      item
        Name = 'link_rating'
        DataType = ftInteger
      end
      item
        Name = 'link_updated'
        DataType = ftDateTime
      end
      item
        Name = 'link_rel'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'link_notes'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'link_rss'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object postwp_linksMemTable8: TFDMemTable
    FieldDefs = <
      item
        Name = 'link_id'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 377
    Top = 401
  end
  object BackendEndpoint9: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'link_id'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/deletewp_links/?link_id={link_id}'
    Response = RESTResponse9
    Left = 90
    Top = 90
  end
  object RESTResponse9: TRESTResponse
    Left = 108
    Top = 108
  end
  object BackendEndpoint10: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'format'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/getwp_options/?format={format}'
    Response = RESTResponse10
    Left = 100
    Top = 100
  end
  object RESTResponse10: TRESTResponse
    Left = 120
    Top = 120
  end
  object getwp_optionsMemTable10: TFDMemTable
    FieldDefs = <
      item
        Name = 'option_id'
        DataType = ftLargeint
      end
      item
        Name = 'option_name'
        DataType = ftString
        Size = 191
      end
      item
        Name = 'option_value'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'autoload'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object BackendEndpoint11: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postwp_options/'
    Response = RESTResponse11
    Left = 110
    Top = 110
  end
  object RESTResponse11: TRESTResponse
    Left = 132
    Top = 132
  end
  object postwp_optionsPostMemTable11: TFDMemTable
    FieldDefs = <
      item
        Name = 'option_id'
        DataType = ftLargeint
      end
      item
        Name = 'option_name'
        DataType = ftString
        Size = 191
      end
      item
        Name = 'option_value'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'autoload'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object postwp_optionsMemTable11: TFDMemTable
    FieldDefs = <
      item
        Name = 'option_id'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 377
    Top = 401
  end
  object BackendEndpoint12: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'option_id'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/deletewp_options/?option_id={option_id}'
    Response = RESTResponse12
    Left = 120
    Top = 120
  end
  object RESTResponse12: TRESTResponse
    Left = 144
    Top = 144
  end
  object BackendEndpoint13: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'format'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/getwp_postmeta/?format={format}'
    Response = RESTResponse13
    Left = 130
    Top = 130
  end
  object RESTResponse13: TRESTResponse
    Left = 156
    Top = 156
  end
  object getwp_postmetaMemTable13: TFDMemTable
    FieldDefs = <
      item
        Name = 'meta_id'
        DataType = ftLargeint
      end
      item
        Name = 'post_id'
        DataType = ftLargeint
      end
      item
        Name = 'meta_key'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'meta_value'
        DataType = ftMemo
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object BackendEndpoint14: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postwp_postmeta/'
    Response = RESTResponse14
    Left = 140
    Top = 140
  end
  object RESTResponse14: TRESTResponse
    Left = 168
    Top = 168
  end
  object postwp_postmetaPostMemTable14: TFDMemTable
    FieldDefs = <
      item
        Name = 'meta_id'
        DataType = ftLargeint
      end
      item
        Name = 'post_id'
        DataType = ftLargeint
      end
      item
        Name = 'meta_key'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'meta_value'
        DataType = ftMemo
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object postwp_postmetaMemTable14: TFDMemTable
    FieldDefs = <
      item
        Name = 'meta_id'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 377
    Top = 401
  end
  object BackendEndpoint15: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'meta_id'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/deletewp_postmeta/?meta_id={meta_id}'
    Response = RESTResponse15
    Left = 150
    Top = 150
  end
  object RESTResponse15: TRESTResponse
    Left = 180
    Top = 180
  end
  object BackendEndpoint16: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'format'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/getwp_posts/?format={format}'
    Response = RESTResponse16
    Left = 160
    Top = 160
  end
  object RESTResponse16: TRESTResponse
    Left = 192
    Top = 192
  end
  object getwp_postsMemTable16: TFDMemTable
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftLargeint
      end
      item
        Name = 'post_author'
        DataType = ftLargeint
      end
      item
        Name = 'post_date'
        DataType = ftDateTime
      end
      item
        Name = 'post_date_gmt'
        DataType = ftDateTime
      end
      item
        Name = 'post_content'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'post_title'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'post_excerpt'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'post_status'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'comment_status'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ping_status'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'post_password'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'post_name'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'to_ping'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'pinged'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'post_modified'
        DataType = ftDateTime
      end
      item
        Name = 'post_modified_gmt'
        DataType = ftDateTime
      end
      item
        Name = 'post_content_filtered'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'post_parent'
        DataType = ftLargeint
      end
      item
        Name = 'guid'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'menu_order'
        DataType = ftInteger
      end
      item
        Name = 'post_type'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'post_mime_type'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'comment_count'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object BackendEndpoint17: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postwp_posts/'
    Response = RESTResponse17
    Left = 170
    Top = 170
  end
  object RESTResponse17: TRESTResponse
    Left = 204
    Top = 204
  end
  object postwp_postsPostMemTable17: TFDMemTable
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftLargeint
      end
      item
        Name = 'post_author'
        DataType = ftLargeint
      end
      item
        Name = 'post_date'
        DataType = ftDateTime
      end
      item
        Name = 'post_date_gmt'
        DataType = ftDateTime
      end
      item
        Name = 'post_content'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'post_title'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'post_excerpt'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'post_status'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'comment_status'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ping_status'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'post_password'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'post_name'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'to_ping'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'pinged'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'post_modified'
        DataType = ftDateTime
      end
      item
        Name = 'post_modified_gmt'
        DataType = ftDateTime
      end
      item
        Name = 'post_content_filtered'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'post_parent'
        DataType = ftLargeint
      end
      item
        Name = 'guid'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'menu_order'
        DataType = ftInteger
      end
      item
        Name = 'post_type'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'post_mime_type'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'comment_count'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object postwp_postsMemTable17: TFDMemTable
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 377
    Top = 401
  end
  object BackendEndpoint18: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'ID'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/deletewp_posts/?ID={ID}'
    Response = RESTResponse18
    Left = 180
    Top = 180
  end
  object RESTResponse18: TRESTResponse
    Left = 216
    Top = 216
  end
  object BackendEndpoint19: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'format'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/getwp_term_relationships/?format={format}'
    Response = RESTResponse19
    Left = 190
    Top = 190
  end
  object RESTResponse19: TRESTResponse
    Left = 228
    Top = 228
  end
  object getwp_term_relationshipsMemTable19: TFDMemTable
    FieldDefs = <
      item
        Name = 'object_id'
        DataType = ftLargeint
      end
      item
        Name = 'term_taxonomy_id'
        DataType = ftLargeint
      end
      item
        Name = 'term_order'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object BackendEndpoint20: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postwp_term_relationships/'
    Response = RESTResponse20
    Left = 200
    Top = 200
  end
  object RESTResponse20: TRESTResponse
    Left = 240
    Top = 240
  end
  object postwp_term_relationshipsPostMemTable20: TFDMemTable
    FieldDefs = <
      item
        Name = 'object_id'
        DataType = ftLargeint
      end
      item
        Name = 'term_taxonomy_id'
        DataType = ftLargeint
      end
      item
        Name = 'term_order'
        DataType = ftInteger
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object postwp_term_relationshipsMemTable20: TFDMemTable
    FieldDefs = <
      item
        Name = 'object_id'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 377
    Top = 401
  end
  object BackendEndpoint21: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'object_id'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/deletewp_term_relationships/?object_id={object_id}'
    Response = RESTResponse21
    Left = 210
    Top = 210
  end
  object RESTResponse21: TRESTResponse
    Left = 252
    Top = 252
  end
  object BackendEndpoint22: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'format'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/getwp_term_taxonomy/?format={format}'
    Response = RESTResponse22
    Left = 220
    Top = 220
  end
  object RESTResponse22: TRESTResponse
    Left = 264
    Top = 264
  end
  object getwp_term_taxonomyMemTable22: TFDMemTable
    FieldDefs = <
      item
        Name = 'term_taxonomy_id'
        DataType = ftLargeint
      end
      item
        Name = 'term_id'
        DataType = ftLargeint
      end
      item
        Name = 'taxonomy'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'description'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'parent'
        DataType = ftLargeint
      end
      item
        Name = 'count'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object BackendEndpoint23: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postwp_term_taxonomy/'
    Response = RESTResponse23
    Left = 230
    Top = 230
  end
  object RESTResponse23: TRESTResponse
    Left = 276
    Top = 276
  end
  object postwp_term_taxonomyPostMemTable23: TFDMemTable
    FieldDefs = <
      item
        Name = 'term_taxonomy_id'
        DataType = ftLargeint
      end
      item
        Name = 'term_id'
        DataType = ftLargeint
      end
      item
        Name = 'taxonomy'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'description'
        Attributes = [faRequired]
        DataType = ftMemo
      end
      item
        Name = 'parent'
        DataType = ftLargeint
      end
      item
        Name = 'count'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object postwp_term_taxonomyMemTable23: TFDMemTable
    FieldDefs = <
      item
        Name = 'term_taxonomy_id'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 377
    Top = 401
  end
  object BackendEndpoint24: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'term_taxonomy_id'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/deletewp_term_taxonomy/?term_taxonomy_id={term_taxonomy_id}'
    Response = RESTResponse24
    Left = 240
    Top = 240
  end
  object RESTResponse24: TRESTResponse
    Left = 288
    Top = 288
  end
  object BackendEndpoint25: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'format'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/getwp_termmeta/?format={format}'
    Response = RESTResponse25
    Left = 250
    Top = 250
  end
  object RESTResponse25: TRESTResponse
    Left = 300
    Top = 300
  end
  object getwp_termmetaMemTable25: TFDMemTable
    FieldDefs = <
      item
        Name = 'meta_id'
        DataType = ftLargeint
      end
      item
        Name = 'term_id'
        DataType = ftLargeint
      end
      item
        Name = 'meta_key'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'meta_value'
        DataType = ftMemo
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object BackendEndpoint26: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postwp_termmeta/'
    Response = RESTResponse26
    Left = 260
    Top = 260
  end
  object RESTResponse26: TRESTResponse
    Left = 312
    Top = 312
  end
  object postwp_termmetaPostMemTable26: TFDMemTable
    FieldDefs = <
      item
        Name = 'meta_id'
        DataType = ftLargeint
      end
      item
        Name = 'term_id'
        DataType = ftLargeint
      end
      item
        Name = 'meta_key'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'meta_value'
        DataType = ftMemo
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object postwp_termmetaMemTable26: TFDMemTable
    FieldDefs = <
      item
        Name = 'meta_id'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 377
    Top = 401
  end
  object BackendEndpoint27: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'meta_id'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/deletewp_termmeta/?meta_id={meta_id}'
    Response = RESTResponse27
    Left = 270
    Top = 270
  end
  object RESTResponse27: TRESTResponse
    Left = 324
    Top = 324
  end
  object BackendEndpoint28: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'format'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/getwp_terms/?format={format}'
    Response = RESTResponse28
    Left = 280
    Top = 280
  end
  object RESTResponse28: TRESTResponse
    Left = 336
    Top = 336
  end
  object getwp_termsMemTable28: TFDMemTable
    FieldDefs = <
      item
        Name = 'term_id'
        DataType = ftLargeint
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'slug'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'term_group'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object BackendEndpoint29: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postwp_terms/'
    Response = RESTResponse29
    Left = 290
    Top = 290
  end
  object RESTResponse29: TRESTResponse
    Left = 348
    Top = 348
  end
  object postwp_termsPostMemTable29: TFDMemTable
    FieldDefs = <
      item
        Name = 'term_id'
        DataType = ftLargeint
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'slug'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'term_group'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object postwp_termsMemTable29: TFDMemTable
    FieldDefs = <
      item
        Name = 'term_id'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 377
    Top = 401
  end
  object BackendEndpoint30: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'term_id'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/deletewp_terms/?term_id={term_id}'
    Response = RESTResponse30
    Left = 300
    Top = 300
  end
  object RESTResponse30: TRESTResponse
    Left = 360
    Top = 360
  end
  object BackendEndpoint31: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'format'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/getwp_usermeta/?format={format}'
    Response = RESTResponse31
    Left = 310
    Top = 310
  end
  object RESTResponse31: TRESTResponse
    Left = 372
    Top = 372
  end
  object getwp_usermetaMemTable31: TFDMemTable
    FieldDefs = <
      item
        Name = 'umeta_id'
        DataType = ftLargeint
      end
      item
        Name = 'user_id'
        DataType = ftLargeint
      end
      item
        Name = 'meta_key'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'meta_value'
        DataType = ftMemo
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object BackendEndpoint32: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postwp_usermeta/'
    Response = RESTResponse32
    Left = 320
    Top = 320
  end
  object RESTResponse32: TRESTResponse
    Left = 384
    Top = 384
  end
  object postwp_usermetaPostMemTable32: TFDMemTable
    FieldDefs = <
      item
        Name = 'umeta_id'
        DataType = ftLargeint
      end
      item
        Name = 'user_id'
        DataType = ftLargeint
      end
      item
        Name = 'meta_key'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'meta_value'
        DataType = ftMemo
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object postwp_usermetaMemTable32: TFDMemTable
    FieldDefs = <
      item
        Name = 'umeta_id'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 377
    Top = 401
  end
  object BackendEndpoint33: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'umeta_id'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/deletewp_usermeta/?umeta_id={umeta_id}'
    Response = RESTResponse33
    Left = 330
    Top = 330
  end
  object RESTResponse33: TRESTResponse
    Left = 396
    Top = 396
  end
  object BackendEndpoint34: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'format'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/getwp_users/?format={format}'
    Response = RESTResponse34
    Left = 340
    Top = 340
  end
  object RESTResponse34: TRESTResponse
    Left = 408
    Top = 408
  end
  object getwp_usersMemTable34: TFDMemTable
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftLargeint
      end
      item
        Name = 'user_login'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'user_pass'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'user_nicename'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'user_email'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'user_url'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'user_registered'
        DataType = ftDateTime
      end
      item
        Name = 'user_activation_key'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'user_status'
        DataType = ftInteger
      end
      item
        Name = 'display_name'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object BackendEndpoint35: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmPOST
    Params = <>
    Resource = 'v1/postwp_users/'
    Response = RESTResponse35
    Left = 350
    Top = 350
  end
  object RESTResponse35: TRESTResponse
    Left = 420
    Top = 420
  end
  object postwp_usersPostMemTable35: TFDMemTable
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftLargeint
      end
      item
        Name = 'user_login'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'user_pass'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'user_nicename'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'user_email'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'user_url'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'user_registered'
        DataType = ftDateTime
      end
      item
        Name = 'user_activation_key'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'user_status'
        DataType = ftInteger
      end
      item
        Name = 'display_name'
        DataType = ftString
        Size = 250
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 281
    Top = 377
  end
  object postwp_usersMemTable35: TFDMemTable
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 377
    Top = 401
  end
  object BackendEndpoint36: TBackendEndpoint
    Provider = EMSProvider1
    Auth = BackendAuth1
    Method = rmDELETE
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'ID'
        Options = [poAutoCreated]
      end>
    Resource = 'v1/deletewp_users/?ID={ID}'
    Response = RESTResponse36
    Left = 360
    Top = 360
  end
  object RESTResponse36: TRESTResponse
    Left = 432
    Top = 432
  end
  object BackendAuth1: TBackendAuth
    Provider = EMSProvider1
    LoginPrompt = False
    UserDetails = <>
    DefaultAuthentication = Application
    Left = 392
    Top = 88
  end
  object EMSProvider1: TEMSProvider
    ApiVersion = '1'
    URLHost = 'localhost'
    URLPort = 8080
    Left = 240
    Top = 144
  end
end
